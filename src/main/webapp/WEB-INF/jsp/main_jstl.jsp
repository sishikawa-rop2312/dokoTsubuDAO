<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User, model.Mutter, java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
<style>
.list {
	padding: 0;
	border-bottom: 1px solid #ccc;
}
.list li {
	border-top: 1px solid #ccc;
    padding: 5px 0;
}
.center {
	display: flex;
    align-items: center;
}
.icon {
	border: 2px solid #0cc100;
    border-radius: 50%;
    display: inline-block;
    margin-left: 5px;
}
</style>
</head>
<body>
<h1>どこつぶメイン</h1>
<p class="center">
<c:out value="${loginUser.name}" />さん、ログイン中
<a href="Logout">ログアウト</a>
</p>
<p><a href="Main">更新</a></p>
<form action="Main" method="post">
<input type="text" name="text">
<input type="submit" value="つぶやく">
</form>
<c:if test="${not empty errorMsg}">
<p><c:out value="${errorMsg}" /></p>
</c:if>
<ul class="list">
<c:forEach var="mutter" items="${mutterList}">
<li class="center"><c:out value="${mutter.userName}" />:<c:out value="${mutter.text}" /></li>
</c:forEach>
</ul>
</body>
</html>