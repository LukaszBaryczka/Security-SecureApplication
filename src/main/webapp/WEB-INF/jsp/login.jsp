<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html lang="pl">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <style>
            body {
                background-color: #ccccff;
                color: black;
            }

            input {
                line-height: 20px;
                color: black;
                font-weight: bold;
            }

            .login {
                position: absolute;
                height: 300px;
                width: 500px;
                margin: -100px 0 0 -200px;
                top: 50%;
                left: 50%;
                border: thin solid;
            }

            .login-text {
                height: 190px;
                border-bottom: thin solid;
                padding-top: 6%;
                text-align: center;
            }

            .btn {
                background: bottom;
                border: none;
                height: 90%;
                font-weight: bold;
            }

            .login-form {
                padding-right: 20px;
                text-align: right;
            }
            .darkLine {
                background-color: #9999ff;
            }

            .whiteLine {
                background-color: white;
            }
        </style>
    </head>

    <body>

    <div class="login whiteLine">
        <div class="login-text darkLine">
            Log in
            <p>
                This is secure application. If You want to log in you should use:
            </p>
            <p>
                username: test
            </p>
            <p>
                password: test
            </p>
            <p>
                But if you want to check the protect against SQL Injection you should use on username or password value: ' or '1'='1
            </p>
        </div>
        <div class="login-form">
            <form name="loginForm" action="/login" method="post">
                <input type="text" name="username" placeholder="username"/>
                <input type="password" name="password" placeholder="password"/>
                <div class="form-actions">
                    <button type="submit" class="btn">Log in</button>
                </div>
            </form>
        </div>
    <body>
</html>