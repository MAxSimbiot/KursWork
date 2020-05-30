<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <style>
            <%@include file="/styles/main.css" %>            
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
                            <input id="add" type="submit" value="Корзина"/>
                        </form>
                    </c:if>

                    <c:if test="${isLogin}">
                        <form action="/Z13_IB/cart.html">
                            <input id="add" type="submit" value="Очистить корзину"/>
                        </form>
                    </c:if>

                </div>    
            </header>
            <h2>Корзина</h2>
            <div id="items">
                <p class="cat1">Корзина:</p> 
                <c:forEach items="${items}" var="i">
                    <a href="item.html?id=${i.id}">
                        <div class="itemBlocks">
                            <img class="iImg" src="${i.picture}"/>
                            <h5>${i.name}</h5>
                            <h6>${i.price} Грн.</h6>
                        </div>
                    </a>
                </c:forEach>

            </div>
             <footer id="foot">
            <div id="cop">
                <ul id="list1">
                    <li>a</li>
                    <li>b</li>
                    <li>c</li>
                </ul>
                <hr>
                <p>@ copyright</p>
                <hr>
                <p>Created by S.A.G.E.S (all rights reserved)</p>
            </div>
        </footer>
    </body>
</html>