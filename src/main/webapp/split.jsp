<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%-- 构建分页导航 --%>
总数量：${pageBean.totalRecord}&nbsp;&nbsp;&nbsp;&nbsp;页数：${pageBean.totalPage }&nbsp;&nbsp;&nbsp;&nbsp;当前页：${pageBean.pageNum}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=1">首页</a>
<%--如果当前页为第一页时，就没有上一页这个超链接显示 --%>
<c:if test="${pageBean.pageNum ==1 && pageBean.totalPage > 1}">
    <c:forEach begin="${pageBean.start}" end="${pageBean.end}" step="1" var="i">
        <c:if test="${pageBean.pageNum == i}">
            ${i}
        </c:if>
        <c:if test="${pageBean.pageNum != i}">
            <a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${i}">${i}</a>
        </c:if>
    </c:forEach>
    <a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${pageBean.pageNum+1}">下一页</a>
</c:if>

<%--如果当前页不是第一页也不是最后一页，则有上一页和下一页这个超链接显示 --%>
<c:if test="${pageBean.pageNum > 1 && pageBean.pageNum < pageBean.totalPage}">
    <a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${pageBean.pageNum-1}">上一页</a>
    <c:forEach begin="${pageBean.start}" end="${pageBean.end}" step="1" var="i">
        <c:if test="${pageBean.pageNum == i}">
            ${i}
        </c:if>
        <c:if test="${pageBean.pageNum != i}">
            <a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${i}">${i}</a>
        </c:if>
    </c:forEach>
    <a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${pageBean.pageNum+1}">下一页</a>
</c:if>

<%-- 如果当前页是最后一页，则只有上一页这个超链接显示，下一页没有 --%>
<c:if test="${pageBean.pageNum == pageBean.totalPage && pageBean.totalPage > 1}">
    <a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${pageBean.pageNum-1}">上一页</a>
    <c:forEach begin="${pageBean.start}" end="${pageBean.end}" step="1" var="i">
        <c:if test="${pageBean.pageNum == i}">
            ${i}
        </c:if>
        <c:if test="${pageBean.pageNum != i}">
            <a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${i}">${i}</>
        </c:if>
    </c:forEach>
</c:if>
<%--尾页 --%>
<a href="${pageBean.servlet}?action=list&searchColumn=${pageBean.searchColumn}&keyword=${pageBean.keyword}&pageNum=${pageBean.totalPage}">尾页</a>
