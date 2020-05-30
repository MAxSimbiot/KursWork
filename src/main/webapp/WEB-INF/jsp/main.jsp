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
                        </form>
                    </c:if>

                </div>    
            </header>

            <div id="searchContent">
                <div id="search">
                    <form action="/Z13_IB/search.html">
                        <input class="search" type="text" name="search" placeholder="Введите текст" >
                        <input class="searchButton" type="submit" value="Поиск" >
                    </form>
                </div>    
                <div id="content">

                    <p class="cat">Категории:</p>
                    <table id="tab">
                        <tr>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=port">Портрет</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=lands">Пейзаж</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=natur">Натюрморт</a></td>
                            <td><a class="testo" href="/Z13_IB/search.html?cat=sketch">Набросок</a></td>
                        </tr>
                        <tr>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=archi">Архитектурная живопись</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=relig">Живопись на религиозные темы</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=battl">Батальная живопись</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=deco">Декоративная живопись</a></td>
                        </tr>
                        <tr>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=goua">Гуашь</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=waterc">Акварель</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=oilp">Масло</a></td>
                            <td ><a class="testo" href="/Z13_IB/search.html?cat=pastel">Пастель</a></td>
                        </tr>
                    </table>


                </div>
            </div>  

            <div id="items">
                <p class="cat1">Новые поступления:</p> 
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

