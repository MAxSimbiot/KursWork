<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <style>
            <%@include file="/styles/main.css" %>      
            <%@include file="/styles/about.css" %>        
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Diploma</title>
    </head>
    <body>
        <div id="wrapper">

            <header>
                <div id="enter">
                    <a href="main.html">
                        <img id="logo" alt="Нет изображения" src="images/Truly.png" width="55" height="55">
                    </a>
                     <a href="contact.html">
                        Контакты
                    </a>
                    <a href="about.html">
                        О нас
                    </a>

                    <c:if test="${!isLogin}">
                        <form action="/Z13_IB/login.html">
                            <input id="myAc" type="submit" value="Войти"/>
                        </form>
                    </c:if>

                    <c:if test="${isLogin}">
                        <form action="/Z13_IB/change.html">
                            <input id="myAc" type="submit" value="${login}"/>
                        </form>
                    </c:if>
                    
                    <c:if test="${isLogin}">
                        <form action="/Z13_IB/cart.html">
                        </form>
                    </c:if>

                </div>    
            </header>
            <h2>Васильев Артур Юрьевич - подсистема пользовательского интерфейса</h2>
            <h3>Прокопенко Максим Сергеевич - подсистема обработки данных</h3>
             <footer id="foot">
            <div id="cop">
                <ul id="list1">
                </ul>
                <hr>
                <hr>
                <p>Created by S.A.G.E.S.</p>
            </div>
        </footer>
    </body>
</html>