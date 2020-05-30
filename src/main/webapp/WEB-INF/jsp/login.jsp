<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <style>
            <%@include file="/styles/main.css" %>        
            <%@include file="/styles/login.css" %>  
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProjectNAU</title>
    </head>
    <body>
        <div id="wrapper">

            <header>
                <div id="enter">
                    <a href="main.html">
                        <img id="logo" alt="Нет изображения" src="images/Truly.png" width="55" height="55">
                    </a>
                    
                    <form action="/Z13_IB/register.html">
                        <input id="myAc" type="submit" value="Регистрация"/>
                    </form>
                </div>    
            </header>
        </div>
             
        <div class="content">
            <form action="/Z13_IB/login.html">
                <input id="log" name="login" placeholder="Логин"/><br>
                <input id="pas" type="password" name="pass" placeholder="Пароль"/><br>
                <input id="put" type="submit" value="Подтвердить"/>
            </form>
        </div>
        
        <footer id="foot">
            <div id="cop">
                <ul id="list1">
                </ul>
                <hr>
                <hr>
                <p>Created by S.A.G.E.S</p>
            </div>
        </footer>
    </body>
</html>

