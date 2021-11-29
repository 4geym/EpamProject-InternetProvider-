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

        table{ margin: auto; }

        table, th, td {
            border: 3px solid black;
            border-collapse: collapse;
            text-align: center;
            padding: 15px;
        }
        tr:hover {background-color: #004966;}

        .trUp {
            background-color: black;
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
            color: azure;
            font-weight: bold;
            border: 3px solid #f1f1f1;
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 80%;
            padding: 20px;
            text-align: center;
        }
        .bg-text2 {
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0, 0.4);
            color: azure;
            font-weight: bold;
            border: 3px solid #f1f1f1;
            position: absolute;
            top: 70%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 2;
            width: 80%;
            padding: 20px;
            text-align: center;
        }

        #nnavv{
            float:left;
            margin-bottom: 10px;
            width:500px;
            list-style: none;
            font-weight: bold;
        }
        #nnavv li{
            float: left;
            display: block;
            margin-right: 10px;
            position: relative;
        }
        #nnavv li a{
            background: #333;
            display: block;
            padding: 5px;
            color: #f0ffff;
            text-decoration:none;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            text-shadow:1px 1px 1px rgba(0,0,0,0.74);
        }
        #nnavv li a:hover{
            text-decoration: underline;
            background: #004966;
            color: #f0ffff;
            background: rgba(13, 40, 108, 0.74);
        }
        #nnavv ul{
            list-style:none;
            left:-9999px;
            opacity:0;
            -webkit-transition: 0.24s linear opacity;
            position:absolute;
        }
        #nnavv ul li{
            padding-top: 1px;
            float:none;
        }
        #nnavv ul a{
            display:block;
            white-space: nowrap;
        }
        #nnavv li:hover ul{
            left:0;
            opacity:1;
        }
        #nnavv li:hover a{
            text-decoration:underline;
            background:rgba(13, 40, 108, 0.74);
            background:#004966;
        }
        #nnavv li:hover ul a{
            text-decoration:none;
            -webkit-transition:-webkit-transform 0.077s linear;
        }
        #nnavv li:hover ul li a:hover{
            -moz-transform:scale(1.07);
            -webkit-transform:scale(1.07);
            background:#004966;
            background: rgba(22, 63, 175, 0.74);
            text-decoration:underline;
        }
    </style>
</head>
<body>
    <div class="bg-image"></div>

    <div class="bg-text">
        <ul id="nnavv">
            <li>
                <a>Toolbar</a>
                <ul>
                    <li><a href="/EpamProject_war/login">Login</a></li>
                    <li><a href="https://docs.google.com/spreadsheets/d/14VKNyvIWI1lifo4JpystN_0wQeb4guRbyGilq4mgJIk/edit?usp=sharing">Tarrifs</a></li>
                </ul>
            </li>
            <li>
                <a>Secret Panel</a>
                <ul>
                    <li><a href="/EpamProject_war/AdminPanel">Admin Panel</a></li>
                </ul>
            </li>
        </ul>
        <h1 style="color: azure"> <br>Fly To Moon</h1>
        <h2 style="color:azure">Internet Provider</h2>
    </div>
    <div class="bg-text2">
        <table style="color: azure">
            <tr class="trUp">
                <td>Tariff</td>
                <td>"Free50"</td>
                <td>"Free100"</td>
            </tr>
            <tr>
                <td>Speed</td>
                <td>up to 50 Mbps</td>
                <td>up to 100 Mbps</td>
            </tr>
            <tr>
                <td>Subscription fee</td>
                <td>50 UAH</td>
                <td>100 UAH</td>
            </tr>
            <tr>
                <td>Connection cost</td>
                <td>100 UAH</td>
                <td>1 UAH</td>
            </tr>
        </table>
    </div>
</body>
</html>
