<%-- 
    Document   : home
    Created on : Feb 2, 2022, 3:01:09 PM
    Author     : klami
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <style>
            body{
                background: #5F9EA0;
            }
            .main{
                width: 70%;
                margin: auto;
                padding: 20px;
                background: white;
                display: block;
            }
            h2{
                text-align: center;
            }
            p{
                width:70%;
                margin: auto;
                padding: 20px;
                font-size: 30px;
                background: white;
                color: red;
                text-align: center;
                margin-top: 10%;
            }
        </style>
    </head>
    <body>
        </html>
        <%
            String ime = request.getParameter("name");
            String prezime = request.getParameter("surname");
            
            if(ime.equals("") || prezime.equals("")){
                out.println("<p>Credentials can not be empty.</p>");
            }

        %>
        <div class="main">
            <h2>Your Entered Information: </h2>
            <h4>Name: <%=ime%> </h4>
            <h4>Surname: <%=prezime%></h4>
        </div>
    </body>
</html>