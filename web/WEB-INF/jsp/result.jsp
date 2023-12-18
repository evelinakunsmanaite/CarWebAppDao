<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/result.css" rel="stylesheet" />

        <title>JSP Page</title>
    </head>
    <body>
        <c:choose>
            <c:when test="${not empty result}">
                <table>
                    <thead>
                    <th>ID машины</th>
                    <th>Бренд</th>
                    <th>Модель</th>
                    <th>Цвет</th>
                    <th>Номер</th>
                    <th>Год выпуска</th>
                    <th>Цена</th>
  
                </thead>
                <c:forEach var="a" items="${result}">
                    <tr>
                        <td>${a.id}</td>
                        <td>${a.brand}</td>
                        <td>${a.model}</td>
                        <td>${a.color}</td>
                        <td>${a.registrationNumber}</td>
                        <td>${a.yearOfIssue}</td>
                        <td>${a.price}</td>
                        </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise>
            <c:out value="искомые данные отсутствуют" />
        </c:otherwise>
    </c:choose>
    <a href="cabinet.jsp">Назад</a>  
</body>
</html>
