<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="err" tagdir="/WEB-INF/tags" %>  

<!DOCTYPE html>
<html>
<head>
    <fmt:setLocale value='${pageContext.response.locale}' scope="session"/>
    <fmt:bundle basename="com.localization.messages.msg">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            <%@include file="/resources/css/login.css" %><!-- Генерируем URL для CSS файла -->            
        </style>
    </head>
    <body>
    <div class="animated bounceInDown">
        <div class="container">
            <span class="error animated tada" id="msg"></span>
            <form method="post" action="LoginServlet" name="form1" class="box" >
                <h4><fmt:message key="welcome.title" /></h4>
                <err:error />

                <input type="text" name="login" placeholder='<fmt:message key="login.label" />'>

                <input type="password" name="password" placeholder='<fmt:message key="password.label" />'>

                <div>
                    <input type="submit" value='<fmt:message key="submit.button" />' class="btn1">
                </div>
            </form>
            <table id="languageTable">
                <tr>
                    <td>                                                                       
                        <form action="LocalServlet" class="box1"> 
                            <div class="form-group form-button">
                                <input type="hidden" name="locale" value="en"/>
                                <input class="btn1"  type="submit" value='<fmt:message key="en" />'/>
                            </div>
                        </form>
                    </td>
                    <td>
                        <form action="LocalServlet" class="box2"> 
                            <div class="form-group form-button">
                                <input type="hidden" name="locale" value="ru"/>
                                <input class="btn1"  type="submit" name="locale" value='<fmt:message key="ru" />'/>
                            </div>
                        </form>
                    </td>
                </tr>
            </table>
        </div> 
    </div>
    </body></fmt:bundle>
</html>
