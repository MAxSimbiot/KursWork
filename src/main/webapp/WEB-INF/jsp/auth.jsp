<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html >
    <head>
        <meta charset="UTF-8">
        <title>Sign-Up/Login Form</title>
        <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

        <style>
            <%@include file="/styles/style.css" %>            
        </style>
        
        <script>
            function disp(form) {
                if (form.style.display === "none") {
                    form.style.display = "block";
                } else {
                    form.style.display = "none";
                }
            }
        </script>
    </head>

    <body>
        <header>
            <img class="image" src="logo-olx.png"/><hr class="hhr">

            <form>
                <a class="profile" href="#myProfile">Мой профиль</a>
               
            </form>
        </header>
        <div class="form">


            <ul class="tab-group">
                <li class="tab active"><a href="#signup">Регистрация</a></li>
                <li class="tab"><a href="#login">     Войти   </a></li>
            </ul>

            <div class="tab-content">
                <div id="signup">   
                    <h1>Регистрация на сайте</h1>

                    <form action="/" method="post">

                        <div class="top-row">
                            <div class="field-wrap">
                                <label>
                                    Email 
                                </label>
                                <input type="email"required autocomplete="off"/>
                            </div>
                        </div>


                    </form>
                    <form id="formB">
                        <button type="button" class="button button-block" onclick="disp(document.getElementById('form1'));disp(document.getElementById('formB'));"/>Продолжить</button>
                    </form>
                    <form id="form1" action="/" style="display: none;">
                        <div class ="field-wrap number">
                            <label>
                                Ваш телефон
                            </label>
                            <input type="tel"  required autocomplete="off" >
                            <button class="button button-block"/>Регистрация</button>
                        </div>
                        
                    </form>


                </div>

                <div id="login">   
                    <h1>Добро пожаловать!</h1>

                    <form action="/" method="post">

                        <div class="field-wrap">
                            <label>
                                Ваш Email 
                            </label>
                            <input type="email"required autocomplete="on"/>
                        </div>

                        <div class="field-wrap">
                            <label>
                                Пароль
                            </label>
                            <input type="password"required autocomplete="off"/>
                        </div>

                        <p class="forgot"><a href="#forgot">Забыли пароль?</a></p>

                        <button class="button button-block"/>Войти</button>

                    </form>

                </div>

            </div>

        </div> 
        <footer>


        </footer>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="index.js"></script>

    </body>
</html>
