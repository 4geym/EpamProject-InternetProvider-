<%--
  Created by IntelliJ IDEA.
  User: GS-63
  Date: 25.11.2021
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Profile</title>
</head>
<body>
<div style="text-align: center">
    <h1>Welcome!</h1>
    <b>${user.name} (${user.email})</b>
    <br><br>
    <a href="/EpamProject_war/FlyToMoon">Logout</a>
</div>
</body>
</html>