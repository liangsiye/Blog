<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

&lt;%&ndash;<rapid:override name="breadcrumb">
    &lt;%&ndash;面包屑导航 start&ndash;%&gt;
    <nav class="breadcrumb">
        <a class="crumbs" href="/">
            <i class="fa fa-home"></i>首页page
        </a>
        <i class="fa fa-angle-right">
            ${page.pageTitle}
        </i>

        <i class="fa fa-angle-right"></i>
        正文my
    </nav>
    &lt;%&ndash;面包屑导航 end&ndash;%&gt;
</rapid:override>&ndash;%&gt;

<rapid:override name="left">
    &lt;%&ndash;博客主体-左侧文章正文 start&ndash;%&gt;
    <div id="primary" class="content-area">
        <main id="main" class="site-main" role="main">
            <article class="post" >
                <header class="entry-header">
                    <h1 class="entry-title">
                            ${page.pageTitle}
                    </h1>
                </header><!-- .entry-header -->
                <div class="entry-content" style="min-height:400px;">
                    <div class="single-content">
                            ${page.pageContent}
                    </div>

                    <br><br>

                    <footer class="single-footer">
                        <ul class="single-meta">
                            <li class="r-hide">
                                <a href="javascript:pr()" title="侧边栏">
                                    <i class="fa fa-caret-left"></i>
                                    <i class="fa fa-caret-right"></i>
                                </a>
                            </li>
                        </ul>
                        <ul id="fontsize">
                            <li>A+</li>
                        </ul>
                        <div class="single-cat-tag">
                            <div class="single-cat">日期：<fmt:formatDate value="${page.pageCreateTime}" pattern="yyyy年MM月dd日"/>
                            </div>
                        </div>
                    </footer><!-- .entry-footer -->


                    <div class="clear"></div>
                </div><!-- .entry-content -->
            </article><!-- #post -->



        </main>
        <!-- .site-main -->
    </div>
    &lt;%&ndash;博客主体-左侧文章正文end&ndash;%&gt;
</rapid:override>
&lt;%&ndash;侧边栏 start&ndash;%&gt;
<rapid:override name="right">
    <%@include file="../Public/part/sidebar-article2.jsp" %>
</rapid:override>
&lt;%&ndash;侧边栏 end&ndash;%&gt;

<%@ include file="../Public/framework.jsp" %>--%>
