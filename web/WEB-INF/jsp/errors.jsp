<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
        <fmt:bundle basename="com.localization.messages.msg">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/error.css" rel="stylesheet" />

 <style>
                <%@include file="/resources/css/error.css" %>
            </style>
    </head>
    <body>
        <h1 style='color:red;'> Данные отсутствуют </h1>
 <form action="page" method="post">
                <input type="hidden" name="page" value="toUser">
                <input type="submit" value="<fmt:message key="button.toHomepage"/>">
            </form> 
    </body></fmt:bundle>
</html>
