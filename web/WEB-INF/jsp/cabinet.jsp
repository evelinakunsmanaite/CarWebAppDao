<%-- 
    Document   : cabinet
    Created on : 22 мая 2023 г., 01:37:36
    Author     : Administrator
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/cabinet.css" rel="stylesheet" />

        <title>JSP Page</title>
    </head>
    <body>
        <h2>Добро пожаловать, <%= session.getAttribute("firstName")%> <%= session.getAttribute("middleName")%></h2>

        <form class="input-form" action="allCarsServlet" method="get">
                <label>Cписок всех автомобилей:
                    <div class="input-container">
                        <input type="submit" value="Отправить">
                    </div></label>
            </form>      
        
        <form class="input-form" action="brandServlet" method="post">
                <label>Cписок автомобилей заданной марки:
                    <div class="input-container">
                        <input type="text" name="brand" required placeholder="Введите марку автомобиля">
                        <input type="submit" value="Отправить">
                    </div></label>
            </form>       

            <form class="input-form" action="exploitationServlet" method="post">
                <label>Cписок автомобилей заданной модели, которые эксплуатируются больше n лет:
                    <div class="input-container">
                        <input type="number" name="exploitation" required placeholder="Введите срок эксплуатации">
                        <input type="submit" value="Отправить">
                    </div></label>
            </form>
            
            <form class="input-form" action="yearOfIssueAndPriceServlet" method="post">
                <label>Список автомобилей заданного года выпуска, цена которых больше указанной:
                    <div class="input-container">
                       <input type="number" name="yearOfIssue" required placeholder="Введите год">
                       <input type="number" name="price" required placeholder="Введите цену">
                        <input type="submit" value="Отправить">
                    </div></label>
            </form>

        <a href="index.jsp">Назад</a>  


    </body>
</html>