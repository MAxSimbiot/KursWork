<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <style>
            <%@include file="/styles/main.css" %>  
            <%@include file="/styles/change.css" %>   
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Diploma</title>
    </head>
    <body>
        <div id="wrapper">

            <header>
                <div id="enter">
                    <a href="main.html">
                        <img id="logo" alt="no picture avaliable" src="images/Truly.png" width="55" height="55">
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
            </header
        </div> 

        <div>
            <form action="/Z13_IB/change.html">
                <input id="pas3" type="password" name="Введите новый пароль" placeholder="Новый пароль"/><br>
                <input id="pas4" type="password" name="Повторите пароль" placeholder="Повторите пароль"/><br>
                <input id="otci" name="Другой город" placeholder="Другой город"/><br>
                <input id="nph"  name="Новый телефон" placeholder="Новый телефон"/><br>
                <input id="nEm"  name="Новая электронная почта" placeholder="Новая электронная почта"/><br>
                <input id="acc1" type="submit" value="Подтвердить"/>
            </form><hr>
            <form action="main.html">
              
            </form>
        </div>

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

