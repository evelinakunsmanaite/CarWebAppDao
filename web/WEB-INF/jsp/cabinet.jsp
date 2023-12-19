<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
         <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
         <fmt:bundle basename="com.localization.messages.msg">
                         <style>
                <%@include file="/resources/css/cabinet.css"%>
            </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="resources/css/cabinet.css" rel="stylesheet" />
    </head>
    <body>
        <h2><fmt:message key="welcome.message" /> <%= session.getAttribute("name")%></h2>

        <form class="input-form" action="allCarsServlet" method="get">
            <label><fmt:message key="list.all.cars" />
                <div class="input-container">
                    <input type="submit" value="<fmt:message key="submit" />">
                </div></label>
            </form>      
        
        <form class="input-form" action="brandServlet" method="post">
            <label><fmt:message key="list.brand.cars" />
                <div class="input-container">
                    <input type="text" name="brand" required placeholder="<fmt:message key="placeholder.brand" />">
                    <input type="submit" value="<fmt:message key="submit" />">
                </div></label>
            </form>       

            <form class="input-form" action="exploitationServlet" method="post">
                <label><fmt:message key="list.exploitation.cars" />
                    <div class="input-container">
                        <input type="number" name="exploitation" required placeholder="<fmt:message key="placeholder.exploitation" />">
                        <input type="submit" value="<fmt:message key="submit" />">
                    </div></label>
            </form>
            
            <form class="input-form" action="yearOfIssueAndPriceServlet" method="post">
                <label><fmt:message key="list.yearAndPrice.cars" />
                    <div class="input-container">
                       <input type="number" name="yearOfIssue" required placeholder="<fmt:message key="placeholder.year" />">
                       <input type="number" name="price" required placeholder="<fmt:message key="placeholder.price" />">
                        <input type="submit" value="<fmt:message key="submit" />">
                    </div></label>
            </form>

 <form action="page" method="post">
                <input type="hidden" name="page" value="toLogin">
                <input type="submit" value="<fmt:message key="button.toHomepage"/>">
            </form>     </body></fmt:bundle>
</html>
