<%--主界面的布局--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="/WEB-INF/myTag.tld" prefix="lyz" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<%--主页面的广播栏--%>
<%--<rapid:override name="breadcrumb">
    <nav class="breadcrumb">
        <div class="bull"><i class="fa fa-volume-up"></i></div>
        <div id="scrolldiv">
            <div class="scrolltext">
                <ul style="margin-top: 0px;">
                    <c:forEach items="${noticeList121}" var="n">
                        <li class="scrolltext-title">
                            <a href="/notice/${n.noticeId}" rel="bookmark">${n.noticeTitle}</a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </nav>
</rapid:override>--%>

<rapid:override name="left">
    <div id="primary" class="content-area">

        <main id="main" class="site-main" role="main">
            <c:forEach items="${pageInfo.list}" var="a">

                <article class="post type-post">

                    <figure class="thumbnail">
                        <%--<a href="/article/${a.articleId}">
                            <img width="280" height="210"
                                 src="/img/thumbnail/random/img_${a.articleId%15}.jpg"
                                 class="attachment-content size-content wp-post-image"
                                 alt="${a.articleTitle}">
                        </a>--%>

                                    <img width="280" height="210"
                                         src="/img/thumbnail/random/img_${a.articleId%15}.jpg"
                                         class="attachment-content size-content wp-post-image"
                                         <%--alt="${a.articleTitle}">--%>



                        <%--主页文章的左上角的分类字--%><%--注意：修改后变成右下角了--%>
                        <span class="cat">
                                <a href="/category/${a.categoryList[a.categoryList.size()-1].categoryId}">
                                        ${a.categoryList[a.categoryList.size()-1].categoryName}
                                </a>
                            </span>
                    </figure>

                    <%--主页文章的标题start--%>
                    <header class="entry-header">
                        <h2 class="entry-title">
                            <a  href="/article/${a.articleId}"
                               rel="bookmark">
                                    ${a.articleTitle}
                            </a>
                        </h2>
                    </header>
                        <%--主页文章的标题end--%>

                    <div class="entry-content">

                            <%--主页文章的预览内容start--%>
                        <div class="archive-content">
                            <lyz:htmlFilter>${a.articleContent}</lyz:htmlFilter>......
                        </div>
                                    <%--主页文章的预览内容end--%>
                        <span class="title-l"></span>
                        <span class="new-icon">
                            <c:choose>
                                <c:when test="${a.articleStatus == 2}">
                                    <i class="fa fa-bookmark-o"></i>
                                </c:when>
                                <c:otherwise>
                                    <jsp:useBean id="nowDate" class="java.util.Date"/>
                                    <c:set var="interval"
                                           value="${nowDate.time - a.articleCreateTime.time}"/><%--时间差毫秒数--%>
                                    <fmt:formatNumber value="${interval/1000/60/60/24}" pattern="#0"
                                                      var="days"/>
                                    <c:if test="${days <= 7}">NEW</c:if>
                                </c:otherwise>
                            </c:choose>
                        </span>
                        <span class="entry-meta">
                            <span class="date">
                                &nbsp;&nbsp;•&nbsp;<fmt:formatDate value="${a.articleCreateTime}" pattern="yyyy年MM月dd日"/>

                            </span>
                            <span class="views">
                                &nbsp;•&nbsp;
                                <i class="fa fa-eye"></i>
                                    ${a.articleViewCount}&nbsp;views
                            </span>
                            <%--<span class="comment">&nbsp;&nbsp;
                                <a href="/article/${a.articleId}#comments" rel="external nofollow">
                                  <i class="fa fa-comment-o"></i>
                                    <c:choose>
                                        <c:when test="${a.articleCommentCount == 0}">
                                            发表评论
                                        </c:when>
                                        <c:otherwise>
                                            ${a.articleCommentCount}
                                        </c:otherwise>
                                    </c:choose>

                                </a>
                            </span>--%>
                        </span>
                        <div class="clear"></div>
                    </div><!-- .entry-content -->

                    <span class="entry-more">
                        <%--添加text-decoration: none取消下划线，因为在css里a{}和a:hover添加了text-decoration: underline--%>
                        <a style=" text-decoration: none; " href="/article/${a.articleId}"
                           rel="bookmark">
                            Read more
                        </a>
                    </span>
                </article>
            </c:forEach>
        </main>
        <%@ include file="Public/part/paging.jsp" %>

    </div>
</rapid:override>
<%--左侧区域 end--%>

<%--侧边栏 start--%>
<rapid:override name="right">
    <%@include file="Public/part/sidebar-2.jsp" %>
</rapid:override>
<%--侧边栏 end--%>

<%--主页最下面和的社区和开发者社区链接--%>
<%--友情链接 start--%>
<%--<rapid:override name="link">
    &lt;%&ndash;<div class="links-box">&ndash;%&gt;
    <div class="site-footer">
        <div id="links">
            <c:forEach items="${linkList}" var="l">
                <ul class="lx7">
                    <li class="link-f link-name">
                        <a href="${l.linkUrl}" target="_blank">
                                ${l.linkName}
                        </a>
                    </li>
                </ul>
            </c:forEach>
            <div class="clear"></div>
        </div>
    </div>
</rapid:override>--%>
<%--友情链接 end--%>

<%@ include file="Public/framework.jsp" %><%--加载这个jsp模板--%>