package com.che.blog.controller.admin;

import com.che.blog.entity.Options;
import com.che.blog.service.OptionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


/**
 * @author che
 */
@Controller
//@RequestMapping("/admin/options")
@RequestMapping("/7QjMPLVRMtv6oFzsDLUrRdp8UrWi0Jppjs7Oszxd/options")
public class BackOptionsController {

    @Autowired
    private OptionsService optionsService;


    /**
     * 基本信息显示
     *
     * @return
     */
    @RequestMapping(value = "")
    public ModelAndView index()  {
        ModelAndView modelAndView = new ModelAndView();
        Options option = optionsService.getOptions();
        modelAndView.addObject("option",option);

        modelAndView.setViewName("Admin/Options/index");
        return modelAndView;
    }

    /**
     * 编辑基本信息显示
     *
     * @return
     */
    @RequestMapping(value = "/edit")
    public ModelAndView editOptionView()  {
        ModelAndView modelAndView = new ModelAndView();
        Options option = optionsService.getOptions();
        modelAndView.addObject("option",option);

        modelAndView.setViewName("Admin/Options/edit");
        return modelAndView;
    }

    /**
     * 编辑后台主要选项的基本信息提交
     *
     * @param options
     * @return
     */
    @RequestMapping(value = "/editSubmit",method = RequestMethod.POST)
    public String editOptionSubmit(Options options)  {
        //如果记录不存在，那就新建
        Options optionsCustom = optionsService.getOptions();
        if(optionsCustom.getOptionId()==null) {
            optionsService.insertOptions(options);
        } else {
            optionsService.updateOptions(options);
        }
//        return "redirect:/admin/options";
        return "redirect:/7QjMPLVRMtv6oFzsDLUrRdp8UrWi0Jppjs7Oszxd/options";/*后台主要选项的保存设置的按钮后跳转的页面*/
    }

}
