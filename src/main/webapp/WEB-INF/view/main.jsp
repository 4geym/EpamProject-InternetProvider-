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
            color: white;
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
            color: white;
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




        .btn-success {
            width: 130px;
            height: 40px;
            color: #fff;
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
        .btn-success {
            border: none;
            color: #000;
        }
        .btn-success:after {
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
        .btn-success:hover {
            color: #000;
        }
        .btn-success:hover:after {
            left: auto;
            right: 0;
            width: 100%;
        }
        .btn-success:active {
            top: 2px;
        }
    </style>
</head>
<body>
    <div class="bg-image"></div>

    <div class="bg-text">
        <h1 style="color: azure">Fly To Moon</h1>
        <h2 style="color:azure">Internet Provider</h2>
        <a href="/EpamProject_war/login">Login</a>
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
