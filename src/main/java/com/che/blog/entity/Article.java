package com.che.blog.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;
import java.util.List;


/**
 * @Data注解在类上；提供类所有属性的 getting 和 setting 方法，此外还提供了equals、canEqual、hashCode、toString 方法
 */
@Data //使用Lombok中@Data注释.
public class Article implements Serializable{

    private static final long serialVersionUID = 5207865247400761539L;

    private Integer articleId;

    private Integer articleUserId;

    private String articleTitle;

    private Integer articleViewCount;

    private Integer articleCommentCount;

    private Integer articleLikeCount;

    private Date articleCreateTime;

    private Date articleUpdateTime;

    private Integer articleIsComment;

    private Integer articleStatus;

    private Integer articleOrder;

    private String articleContent;

    private User user;

    private List<Tag> tagList;

    private List<Category> categoryList;

}