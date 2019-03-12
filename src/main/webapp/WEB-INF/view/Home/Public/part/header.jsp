<%--
    博客顶部部分
    包括：顶部菜单，主要菜单(包括搜索按钮)，面包屑
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css" href="css/normalize.css" />
</head>

<body>
<%--导航 start--%>
<header id="masthead" class="site-header">
    <%--顶部菜单 start--%>
    <%--<nav id="top-header">
        <div class="top-nav">
            <div class="user-login">
                <c:choose>
                    <c:when test="${sessionScope.user==null}">
                        <a href="/admin">登录</a>
                    </c:when>
                    <c:otherwise>
                        <a href="/admin">进入后台</a>
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="menu-topmenu-container">
                <ul id="menu-topmenu" class="top-menu">
                    <c:forEach items="${menuList}" var="m">
                        <li class="menu-item">
                            <c:if test="${m.menuLevel==1}">
                                <a href="${m.menuUrl}" >
                                    <i class="${m.menuIcon}"></i>
                                    <span class="font-text">${m.menuName}&nbsp;</span>&nbsp;
                                </a>
                            </c:if>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
    </nav>--%><!-- #top-header -->
    <%--顶部菜单 end--%>

    <%--主要菜单 satrt--%>
    <div id="menu-box">
        <div id="top-menu">
                <%--<span class="nav-search">
                    <i class="fa fa-search"></i>
                </span>--%>


            <%--主页的左上角的名称--%>
            <%--<div class="logo-site"><h1 class="site-title">
                <a href="/" title="${options.optionSiteTitle}">${options.optionSiteTitle}</a>
            </h1>
                <p class="site-description">${options.optionSiteDescrption}</p>
            </div>--%><!-- .logo-site -->
            <div id="site-nav-wrap">
                <%--<div id="sidr-close">
                    <a href="#sidr-close" class="toggle-sidr-close">×</a>
                </div>--%>
                <nav id="site-nav" class="main-nav">
                    <%--搜索的长形框start--%>
                    <a href="#sidr-main" id="navigation-toggle" class="bars">
                        <i class="fa fa-bars"></i>
                    </a>
                        <%--搜索的长形框end--%>

                    <%--主页的导航栏文字start--%>
                    <div class="menu-pcmenu-container">
                        <%--控制主页的导航栏文字的框架start--%>
                        <ul id="menu-pcmenu" class="down-menu nav-menu sf-js-enabled sf-arrows">


                            <%--主页的导航栏图标位置start--%>
                                <li>
                                    <div class="index-logo">
                                        <a href="/"><img src="/img/logo.png"></a>
                                    </div>
                                </li>
                                <%--主页的导航栏图标位置end--%>

                                <li>
                                        <%--添加text-decoration: none取消下划线，因为在css里a{}和a:hover添加了text-decoration: underline--%>
                                    <a style=" text-decoration: none; " href="/">
                                        <i class="fa fa-home "></i>
                                        <span class="font-text">首页</span>
                                    </a>
                                </li>

                            <%--这是标签的，有二级菜单，修改后的。--%>
                            <%--<c:forEach items="${allCategoryList}" var="category">--%>
                                <%--<c:if test="${category.categoryPid==0 && category.categoryId==15}">&lt;%&ndash;获取数据库的categoryPid==0的字段后显示到主页导航栏&ndash;%&gt;--%>
                                    <li>
                                        <%--<a href="/category/${category.categoryId}">--%>
                                                <%--添加text-decoration: none取消下划线，因为在css里a{}和a:hover添加了text-decoration: underline--%>
                                        <a style=" text-decoration: none; " href="/map">
                                            <i class="fa fa-tags"></i>
                                            <span class="font-text">站点&nbsp;</span>
                                        </a>

                                        <%--导航栏的子菜单start--%>
                                        <%--<ul class="sub-menu">
                                            <c:forEach items="${allCategoryList}" var="cate">
                                                <c:if test="${cate.categoryPid==category.categoryId}">&lt;%&ndash;数据库中的categoryPid与categoryId相同时就是会出现在二级菜单里。&ndash;%&gt;
                                                    <li>
                                                        <a href="/category/${cate.categoryId}" target="_blank">${cate.categoryName}</a>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                        </ul>--%>
                                            <%--导航栏的子菜单end--%>

                                    </li>
                                <%--</c:if>--%>
                            <%--</c:forEach>--%>

                            <%--这是档案的，没有二级菜单，修改后的。--%>
                            <%--<c:forEach items="${allCategoryList}" var="category">
                                <c:if test="${category.categoryPid==0 && category.categoryId==10 }">--%><%--获取数据库的categoryPid==0的字段后显示到主页导航栏--%>
                                    <li>
                                            <%--添加text-decoration: none取消下划线，因为在css里a{}和a:hover添加了text-decoration: underline--%>
                                            <a style=" text-decoration: none; " href="/articleFile">
                                                <i class="fa fa-archive"></i>
                                                <span class="font-text">档案&nbsp;</span>
                                            </a>
                                    </li>
                              <%--  </c:if>
                            </c:forEach>--%>

                            <%--主要菜单其余部分 leetcode和留言两个导航栏--%>
                            <%--<c:forEach items="${menuList}" var="m">
                                <c:if test="${m.menuLevel == 2}">
                                    <li>
                                        <a href="${m.menuUrl}">
                                            <i class="${m.menuIcon}"></i>
                                            <span class="font-text">${m.menuName}&nbsp;</span>
                                        </a>
                                    </li>
                                </c:if>
                            </c:forEach>--%>
                        </ul>
                            <%--控制主页的导航栏文字的框架start--%>
                    </div>
                    <%--主页的导航栏的文字end--%>
                </nav>
            </div>
            <div class="clear"></div>
        </div><!-- #top-menu -->
    </div><!-- #menu-box -->
    <%--主要菜单 satrt--%>

</header><!-- #masthead -->
<%--导航 end start--%>

<%--修改后的搜索框 start 不是点击搜索图标后弹出的搜索框,而是直接显示搜索框--%>
<div id="search-main">
    <%--<div class="searchbar">--%>
    <div class="search d5"> <%--css文件的1154行是修改后的搜索框--%>
        <form method="get" id="searchform" action="/search" accept-charset="UTF-8">
        <%--<form method="get" id="searchform" action="" accept-charset="UTF-8">--%>
            <span>
                <input type="text" value="" name="keywords" id="s" placeholder="搜索 Blog"required="">
                <%--<button type="submit" id="searchsubmit">搜索</button>--%>
                <button type="submit" id="searchsubmit"></button>

            </span>
        </form>
    </div>
    <div class="clear"></div>
</div>
</body>
<%--搜索框 end--%>


<rapid:block name="breadcrumb"></rapid:block>