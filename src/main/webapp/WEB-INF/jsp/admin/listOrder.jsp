<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/5/16 0016
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@include file="../include/admin/head.jsp" %>
<%@include file="../include/admin/navigation.jsp" %>

<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2">

        </div>
        <div class="col-sm-10">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>状态</th>
                    <th>金额</th>
                    <th width="100px">商品数量</th>
                    <th width="100px">买家名称</th>
                    <th>创建时间</th>
                    <th>支付时间</th>
                    <th>发货时间</th>
                    <th>确认收货时间</th>
                    <th width="120px">操作</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach items="${os}" var="o" varStatus="s">
                        <tr>
                            <td>${page.start+s.count}</td>
                            <td>${o.statusDesc}</td>
                            <td>${o.total}</td>
                            <td>${o.totalNumber}</td>
                            <td>${o.user.name}</td>
                            <td><fmt:formatDate value="${o.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td><fmt:formatDate value="${o.payDate}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
                            <td><fmt:formatDate value="${o.deliveryDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td><fmt:formatDate value="${o.confirmDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                            <td></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div align="center">
                <%@include file="../include/admin/page.jsp" %>
            </div>
        </div>
    </div>
</div>

<%@include file="../include/admin/foot.jsp" %>
