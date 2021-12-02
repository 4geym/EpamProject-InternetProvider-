<%--
  Created by IntelliJ IDEA.
  User: GS-63
  Date: 25.11.2021
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Login</title>
  <script
          src="https://code.jquery.com/jquery-3.4.1.min.js"
          integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
          crossorigin="anonymous"></script>
  <script type="text/javascript"
          src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
  <style>
    body{
      background-color: #333333;
      color: azure;
    }
    button {
      width: 130px;
      height: 40px;
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
    button {
      border: none;
      color: azure;
    }
    button:after {
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
    button:hover {
      color: azure;
    }
    button:hover:after {
      left: auto;
      right: 0;
      width: 100%;
    }
    button:active {
      top: 2px;
    }


    a {
      text-decoration: none;
      width: 120px;
      height: 18px;
      color: azure;
      border-radius: 5px;
      padding: 10px 25px;
      font-family: 'Lato', sans-serif;
      font-weight: 500;
      font-size: 13px;
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
    a {
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
  </style>
</head>
<body>
<div style="text-align: center">
  <h1>Login</h1>
  <form action="login" method="get" id="loginForm">
    <label for="email">Email:</label>
    <input name="email" size="30" />
    <br><br>
    <label for="password">Password:</label>
    <input type="password" name="password" size="30" />
    <br><br>
    <label for="role">Role:</label>
    <input name="role" size="30" />
    <br><br>
    <button type="submit">Login</button>
  </form>
  <br>
  <a href="/EpamProject_war/FlyToMoon">Back to main page</a>
</div>
</body>
<script type="text/javascript">

  $(document).ready(function() {
    $("#loginForm").validate({
      rules: {
        email: {
          required: true,
          email: true
        },

        password: "required",
      },

      messages: {
        email: {
          required: "Please enter email",
          email: "Please enter a valid email address"
        },

        password: "Please enter password"
      }
    });

  });
</script>
</html>