<%-- 
    Document   : authentic
    Created on : Jan 9, 2019, 12:37:19 PM
    Author     : User
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if  test="${empty param.username or empty param.password}">
            <c:redirect url="login.jsp">
                <c:param name="errMsg" value="please Enter username and password"/>
            </c:redirect>
        </c:if>
        <c:if test="${ not empty param.username and not empty param.password}">
            <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                             url="jdbc:mysql://localhost:3306/jstllogin"
                             user="root" password="1234"/>
            <s:query dataSource="${ds}" var="sq">
                select count(*) as kount from users
                where username='${param.username}'
                and password='${param.password}'
            </s:query>
            <c:forEach items="${sq.rows}" var="r">
                <c:choose>
                    <c:when test="${r.kount gt 0}">
                        <c:set scope="session" value="${param.username}" var="loginUser"/>
                        <c:redirect url="index.jsp"/>
                    </c:when>
                </c:choose>
                <c:otherwise>
                    <c:redirect url="login.jsp">
                        <c:param name="errMsg" value=" username / password does not match"/>
                    </c:redirect>
                </c:otherwise>
            </c:forEach>
        </c:if>
    </body>
</html>
