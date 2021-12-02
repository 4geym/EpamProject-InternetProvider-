<%--
  Created by IntelliJ IDEA.
  User: GS-63
  Date: 25.11.2021
  Time: 17:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<html>
<head>
    <title>Profile</title>
    <STYLE>
        body{
            background-color: #333333;
        }
        h1{
            color: azure;
        }
        a{
            text-decoration: none;
            width: 130px;
            height: 20px;
            color: azure;
            border-radius: 5px;
            padding: 10px 25px;
            font-family: 'Lato', sans-serif;
            font-weight: 500;
            background: transparent;
            cursor: pointer;
            transition: all 0.3s ease;
            position: relative;
            display: inline-block;
            box-shadow:inset 2px 2px 2px 0px rgba(255,255,255,.5),
            7px 7px 20px 0px rgba(0,0,0,.1),
            4px 4px 5px 0px rgba(0,0,0,.1);
            outline: none;
        }
        a{
            border: none;
            color: azure;
        }
        a:after {
            position: absolute;
            content: "";
            width: 0;
            height: 100%;
            top: 0;
            left: 0;
            direction: rtl;
            z-index: -1;
            box-shadow:
                    -7px -7px 20px 0px #fff9,
                    -4px -4px 5px 0px #fff9,
                    7px 7px 20px 0px #0002,
                    4px 4px 5px 0px #0001;
            transition: all 0.3s ease;
        }
        a:hover {
            color: azure;
        }
        a:hover:after {
            left: auto;
            right: 0;
            width: 100%;
        }
        a:active {
            top: 2px;
        }
    </STYLE>
</head>
<body>
<div style="text-align: center">
    <h1>Admin Profile!</h1>
    <br>
    <a href="/EpamProject_war/AdminPanel">Admin Panel</a>
    <a href="/EpamProject_war/FlyToMoon">Logout</a>
</div>
</body>
</html>