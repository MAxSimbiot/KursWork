<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <style>
            <%@include file="/styles/main.css" %>            
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diploma</title>
    </head>
    <body>


        <div id="wrapper">

            <header>
                <div id="enter">
                    <a href="main.html">
                        <img id="logo" alt="no picture avaliable" src="images/logo-olx.png" width="77" height="77">
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

            <a href="/Z13_IB/pay.html?id=${i.id}&top=true">
                <input class="pay" type="submit" value="Top"/>                
            </a>
            <a href="/Z13_IB/pay.html?id=${i.id}&up=true">
                <input class="pay" type="submit" value="Up"/>
            </a>


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
                <p>Created by S.A.G.E.S.</p>
            </div>
        </footer>
    </body>
</html>

