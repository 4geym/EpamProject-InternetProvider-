<%--
  Created by IntelliJ IDEA.
  User: GS-63
  Date: 20.11.2021
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>User Management</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark"
         style="background-color: slategray">
        <ul class="navbar-nav">
            <li><a href="/EpamProject_war/FlyToMoon"
                   class="nav-link">Main</a></li>
            <li><a href="<%=request.getContextPath()%>/list"
                   class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>
<br>

<div class="row">

    <div class="container">
        <h3 class="text-center">List of Users</h3>
        <hr>
        <div class="container text-left">

            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
                New User</a>
        </div>
        <br>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Contract</th>
                <th>Password</th>
                <th>Balance</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="user" items="${listUser}">

                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.name}" /></td>
                    <td><c:out value="${user.email}" /></td>
                    <td><c:out value="${user.contract}" /></td>
                    <td><c:out value="${user.password}" /></td>
                    <td><c:out value="${user.balance}" /></td>
                    <td><c:out value="${user.role}" /></td>
                    <td><a href="edit?id=<c:out value='${user.id}' />">Edit</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>

