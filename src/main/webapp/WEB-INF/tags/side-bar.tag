<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<spring:url value="/assets" var="assets"/>
            <nav class="navbar-default navbar-static-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav metismenu" id="side-menu">
                        <li class="nav-header">
                            <div class="dropdown profile-element">
                                <span>
                                    <img src="${assets}/image/gloryLogo.svg" style="width: 100px; height: 100px;" alt="image" class="img-circle" />
                                </span>
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown">
                                    <span class="clear">
                                        <span class="block m-t-xs">
                                            <!-- <strong class="font-bold">未知目标</strong> -->
                                            <sec:authentication property="principal.username"/><br>
                                            <!-- <span>密码管理 <b class="caret"></b></span> -->

                                        </span>
                                        
                                    </span>
                                </a>
                                <ul class="dropdown-menu  fadeInRight m-t-xs"> <!-- animated --> 
                                	<!-- <spring:url value="/password" var="password"/>
                                	<li><a href="${password}">修改OA密码</a></li>-->
                                	<!--  
                                    <spring:url value="/devicepassword" var="devicepassword"/>
                                	<li><a href="${devicepassword}">修改机具密码</a></li>
                                	-->
                                </ul>
                            </div>
                            <div class="logo-element">
                                KBS
                            </div>
                        </li>
                        <li>
                            <spring:url value="/search/deviceStatus" var="searchDeviceStatus"/>
                            <a href="${searchDeviceStatus}">
                                <i class="fa fa-clipboard"></i>
                                <span class="nav-label">机具状态</span>
                                <span class="fa arrow"></span>
                            </a>
                        </li>
                        <li>
                            <a href="javascript:;">
                                <i class="fa fa-search-plus"></i>
                                <span class="nav-label">检索查询</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level">
                                <spring:url value="/historySearch" var="historySearch"/>
                                <li><a href="${historySearch}">履历查询</a></li>
                                <spring:url value="/users" var="users"/>
                                <li><a href="${users}">操作人员查询</a></li>
                                <spring:url value="/search/keys" var="searchKeys"/>
                                <li><a href="${searchKeys}">钥匙操作查询</a></li>
                                <%-- <spring:url value="/search/deviceStatus" var="searchDeviceStatus"/>
                                <li><a href="${searchDeviceStatus}">机具状态</a></li> --%>
                            </ul>
                        </li>
                        
                        <sec:authorize access="hasAnyAuthority('SYSTEM_ADMIN,LOCAL_SYSTEM_AD,LOCAL_MACHINE_M')">
                        <li>
                            <a href="javascript:;">
                                <i class="fa fa-th-large"></i>
                                <span class="nav-label">基本管理</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level collapse">
                           		<sec:authorize access="hasAnyAuthority('SYSTEM_ADMIN,LOCAL_SYSTEM_AD')">
                               	<spring:url value="/orgnaization/1" var="orgnaization"/>
                                <li><a href="${orgnaization}">机构管理</a></li>
                                <spring:url value="/orgnaization/1/users" var="user"/>
                                <li><a href="${user}">人员管理</a></li>
                                </sec:authorize>
                                <sec:authorize access="hasAnyAuthority('LOCAL_MACHINE_M')">
                                <spring:url value="/devices/1" var="device"/>
                                <li><a href="${device}">机具管理</a></li>
                                <spring:url value="/keytypes" var="keytypes"/>
                                <li><a href="${keytypes}">钥匙类型</a></li>
                                </sec:authorize>
     <%--                            <sec:authorize access="hasAnyAuthority('SYSTEM_ADMIN')">
                                <spring:url value="/roles" var="roles"/>
                                <li><a href="${roles}">角色管理</a></li>
                                </sec:authorize> --%>
                            </ul>
                        </li>
                        </sec:authorize>
                        <%-- <li>
                        	<spring:url value="/devices" var="keys"/>
                            <a href="${keys}">
                                <i class="fa fa-key"></i>
                                <span class="nav-label">钥匙管理</span>
                                <span class="fa arrow"></span>
                            </a>
                        </li> --%>
                        <sec:authorize access="hasAnyAuthority('LOCAL_MACHINE_M')">
                        <li>
                            <a href="javascript:;">
                                <i class="fa fa-cogs"></i>
                                <span class="nav-label">应用管理</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul class="nav nav-second-level collapse">
                            	<spring:url value="/userdevices" var="userdevices"/>
                            	<li><a href="${userdevices}">人员添加钥匙操作</a></li>
                            	<spring:url value="/devices" var="keys"/>
                            	<li><a href="${keys}">钥匙添加人员操作</a></li>
                                <spring:url value="/appmang" var="appmang"/>
                                <li><a href="${appmang}">机具操作</a></li>
                                <spring:url value="/logdownload" var="logdownload"/>
                                <li><a href="${logdownload}">日志下载</a></li>
                            </ul>
                        </li>
                        </sec:authorize>
                        
                        <%--<li>
                            <spring:url value="/basis/import" var="basisImport"/>
                            <a href="${basisImport}">
                                <i class="fa fa-clipboard"></i>
                                <span class="nav-label">基础数据导入</span>
                                <span class="fa arrow"></span>
                            </a>
                        </li> --%>
                        
                    </ul>
                </div>
            </nav>