package com.che.blog.controller.admin;


import com.che.blog.entity.Tag;
import com.che.blog.service.ArticleService;
import com.che.blog.service.TagService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


/**
 * @author che
 */
@Controller
//@RequestMapping("/admin/tag")
@RequestMapping("/7QjMPLVRMtv6oFzsDLUrRdp8UrWi0Jppjs7Oszxd/tag")/*点击有这个后缀的连接，控制器就会判断是否一样，一样就会返回结果，没有就会报404错误*/
public class BackTagController {

    @Autowired
    private ArticleService articleService;

    @Autowired
    private TagService tagService;

    /**
     * 后台标签列表显示
     * @return
     */
    @RequestMapping(value = "")
    public ModelAndView index()  {
        ModelAndView modelandview = new ModelAndView();
        List<Tag> tagList = tagService.listTagWithCount();
        modelandview.addObject("tagList",tagList);

        modelandview.setViewName("Admin/Tag/index");
        return modelandview;

    }


    /**
     * 后台添加分类提交后显示页面
     *
     * @param tag
     * @return
     */
    @RequestMapping(value = "/insertSubmit",method = RequestMethod.POST)
    public String insertTagSubmit(Tag tag)  {
        tagService.insertTag(tag);
//        return "redirect:/admin/tag";
        return "redirect:/7QjMPLVRMtv6oFzsDLUrRdp8UrWi0Jppjs7Oszxd/tag"; /*后台添加分类提交后跳转显示页面*/
    }

    /**
     * 后台删除标签后跳转的页面
     *
     * @param id 标签ID
     * @return
     */
    @RequestMapping(value = "/delete/{id}")
    public String deleteTag(@PathVariable("id") Integer id)  {
        Integer count = articleService.countArticleByTagId(id);
        if (count == 0) {
            tagService.deleteTag(id);
        }
//        return "redirect:/admin/tag";
        return "redirect:/7QjMPLVRMtv6oFzsDLUrRdp8UrWi0Jppjs7Oszxd/tag"; /*后台删除标签后跳转的页面*/
    }

    /**
     * 编辑标签页面显示
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/edit/{id}")
    public ModelAndView editTagView(@PathVariable("id") Integer id)  {
        ModelAndView modelAndView = new ModelAndView();

        Tag tag =  tagService.getTagById(id);
        modelAndView.addObject("tag",tag);

        List<Tag> tagList = tagService.listTagWithCount();
        modelAndView.addObject("tagList",tagList);

        modelAndView.setViewName("Admin/Tag/edit");
        return modelAndView;
    }


    /**
     * 后台编辑标签提交
     *
     * @param tag
     * @return
     */
    @RequestMapping(value = "/editSubmit",method = RequestMethod.POST)
    public String editTagSubmit(Tag tag)  {
        tagService.updateTag(tag);
//        return "redirect:/admin/tag";
        return "redirect:/7QjMPLVRMtv6oFzsDLUrRdp8UrWi0Jppjs7Oszxd/tag"; /*后台编辑标签提交后跳转的页面*/
    }
}
