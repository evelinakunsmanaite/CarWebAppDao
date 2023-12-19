<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
    <head>
          <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
          <fmt:bundle basename="com.localization.messages.msg">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            <%@include file="/resources/css/result.css" %><!-- Генерируем URL для CSS файла -->            
        </style>
    </head>
    <body>
        <table>
            <thead>
                <th><fmt:message key="table.id"/></th>
                <th><fmt:message key="table.brand"/></th>
                <th><fmt:message key="table.model"/></th>
                <th><fmt:message key="table.color"/></th>
                <th><fmt:message key="table.number"/></th>
                <th><fmt:message key="table.year"/></th>
                <th><fmt:message key="table.price"/></th>
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
        <form action="page" method="post">
            <input type="hidden" name="page" value="toUser">
            <input type="submit" value="<fmt:message key="button.toHomepage"/>">
        </form>
    </body></fmt:bundle>
</html>
