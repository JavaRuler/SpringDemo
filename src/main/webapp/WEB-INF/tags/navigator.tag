<%@ tag language="java" pageEncoding="UTF-8"%>
<%@attribute name="title" required="true" type="java.lang.String"%>
<%@attribute name="navs" required="true" type="java.lang.String"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fns" uri="http://www.vsc.com/springfield/web/taglib/function" %>
                <div class="row wrapper border-bottom white-bg page-heading">
                    <div class="col-lg-12">
                        <h2>${title}</h2>
                            <ol class="breadcrumb">
                            <c:forEach items="${fns:splitString(navs,',')}" var="item" varStatus="status">
                                <c:choose>
                                    <c:when test="${status.last}">
                                        <li class="active">
                                            <strong>${item}</strong>
                                        </li>
                                    </c:when>
                                    <c:otherwise>
                                    <li>
                                        <a>${item}</a>
                                    </li>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                        </ol>
                    </div>
                </div>