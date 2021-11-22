<%--
  Created by IntelliJ IDEA.
  User: GS-63
  Date: 22.11.2021
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Fly to moon</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box;
        }

        .bg-image {
            background-image: url("https://media.istockphoto.com/photos/astronaut-in-the-outer-space-over-the-planet-earth-elements-of-this-picture-id1253695435?k=20&m=1253695435&s=612x612&w=0&h=zwYuaHlUKP1rMHoQXUpCQ4TmuFYv642-2mbkfwCfbNg=");

            filter: blur(8px);
            -webkit-filter: blur(8px);

            height: 100%;

            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .bg-text {
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0, 0.4);
            color: white;
            font-weight: bold;
            border: 3px solid #f1f1f1;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 80%;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="bg-image"></div>

    <div class="bg-text">
        <h1 style="font-size:50px">Fly To Moon</h1>
        </br>
        <h2 style="font-size:40px">provider</h2>
    </div>
</body>
</html>
