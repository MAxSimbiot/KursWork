<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            <%@include file="/styles/main.css" %>
            <%@include file="/styles/item.css" %>
            #contentBlock{
                position: relative;
                margin-top: 7%;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ProjectNAU</title>
    </head>
    <body>
        <div id="wrapper">

            <header>
                <div id="enter">
                    <a href="main.html">
                        <img id="logo" alt="Нет изображения" src="images/Truly.png" width="55" height="55">
                    </a>
                    <div id="ct">
                     <a href="contact.html">
                        Контакты
                    </a>
                        <div id="ab">
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

                </div>    
            </header>
        <div id="itemContent">
            <div id="cBuB">
                <div id="contentBlock">
                    <img width="450px" height="350px" align="top" src="${i.picture}"/>
                    <h5>${i.name}</h5>
                </div>
                <div id="userBlock">
                    <div id="price">
                        <p class="pr">Цена: ${i.price} грн.</p>
                    </div>
                    <h3>Телефон владельца/информатора: ${i.phone}</h3>
                    <div >
                    <form  action="main.html">
                        <input id="main" type="submit" value="В меню"/>
                    </form>
                </div>
            </div>
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
