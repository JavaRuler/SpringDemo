<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <body>
        <h2>Hello World!</h2>
        <select id="cid" name="cid">
            <c:forEach items="${dropdowns}" var="dropdown" varStatus="st">
                <option value="${dropdown.id}">${dropdown.name}</option>
            </c:forEach>
        </select>
    </body>
</html>