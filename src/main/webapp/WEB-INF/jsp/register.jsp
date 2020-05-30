<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Sign-Up/Login Form</title>
        <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

        <style>
            
            <%@include file="/styles/register.css" %>     
              
           
            
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
                <div id="enter">
                    <a href="main.html">
                        <img id="logo" alt="Нет изображения" src="images/Truly.png" width="55" height="55">
                    </a>
                    </header>
                    

        <form id="form1"  action="register.html">
      
       
          
            <table>
                
                <tr>
                    <td> </td>
                    <td><input id="log1" name="login" placeholder="Логин" /><td/>
                <tr/>
                <tr>
                    <td> </td>
                    <td><input id="pas1" type="password" name="pass" placeholder="Пароль"/><td/>
                <tr/>
                <tr>
                    <td> </td>
                    <td><input id="pas2"type="password" name="pass2" placeholder="Повторите пароль"/><td/>
                <tr/>
                <tr>
                    <td> </td>
                    <td><input id="phon1" name="phone" placeholder="Укажите телефон"/><td/>
                <tr/>
                <tr>
                    <td> </td>
                    <td><input id="mail1" name="email" placeholder="Укажите электронную почту"/><td/>
                <tr/>
                <tr>
                    <td> </td>
                    <td><input id="city1" name="city" placeholder="Укажите город"/>
                <tr/>
                
                <tr>
                    <input id="yeah" type="submit" value="Ok"/>
                    
            </tr>
                               

            </table>
                               

        </form>
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
