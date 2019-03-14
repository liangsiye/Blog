<%--
    博客页脚部分
    包括：页脚部分
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>


<%@ taglib prefix="rapid" uri="http://www.rapid-framework.org.cn/rapid" %>

<%--页脚 start--%>
<footer id="colophon" class="site-footer" role="contentinfo">

    <div class="links-box">
    <%--<div class="site-footer">--%>
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


    <div class="site-info">


        <p style="text-align: center;">©2019&nbsp;<i class="fa fa-heart"></i>&nbsp;Chelsea
            <%--<a href="/" target="_blank" rel="noopener noreferrer">${options.optionSiteTitle}</a>--%>
            <%--<a href="/" target="_blank" rel="noopener noreferrer">${options.optionSiteDescrption}</a>--%>

            <%--<a target="_blank" href="/map" >--%>
                <%--<span class="font-text">站点地图</span>--%>
            <%--</a>--%>
        </p>
    </div>
    <!-- .site-info -->
</footer><!-- .site-footer -->
<%--页脚 end--%>


