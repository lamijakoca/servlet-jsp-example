<%-- 
    Document   : login
    Created on : Jan 31, 2022, 7:13:16 PM
    Author     : klami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Login Page</title>
        <style>
            .login{
                margin: auto;
                width: 40%;
                background: #5F9EA0;
                padding: 20px;
                border-radius: 9px;
                text-align: center;
                margin-top: 15%;
            }
            input{
                display: block;
                margin-left: auto;
                margin-right: auto;
                margin-bottom: 5px;
                width: 200px;
                height: 35px;
                border-radius: 3px;
            }
            h1{
                letter-spacing: 3px;
                color: white;
                
            }
        </style>
    </head>
    <body>
        <div class="login">
            <h1>LOGIN</h1>
            <form action="home.jsp" method="post">
                <input type="text" placeholder="Ime" name="name"/>
                <input type="text" placeholder="Prezime" name="surname"/>
                <input type="submit" value="Login"/>
            </form>
        </div>
    </body>
</html>
