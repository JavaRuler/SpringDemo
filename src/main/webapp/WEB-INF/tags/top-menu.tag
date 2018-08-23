<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<spring:url value="/assets" var="assets"/>
                <div class="row border-bottom">
                    <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
  <!--                       <div class="navbar-header">
                            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="javascript:;"><i class="fa fa-bars"></i></a>
                            <div role="search" class="navbar-form-custom">
                                <div class="form-group">
                                    <input type="text" placeholder="快速查询..." class="form-control" name="top-search" id="top-search">
                                </div>
                            </div>
                        </div> -->
                        <ul class="nav navbar-top-links navbar-right">
                            <li>
                                <span class="m-r-sm text-muted welcome-message">v1.1</span>
                                <span class="m-r-sm text-muted welcome-message">欢迎回来</span>
                                <sec:authentication property="principal.username"/>
                            </li>
                            <%-- <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="javascript:;">
                                    <i class="fa fa-envelope"></i>
                                    <span class="label label-warning">16</span>
                                </a>
                                <ul class="dropdown-menu dropdown-messages">
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="javascript:;" class="pull-left">
                                                <img src="${assets}/image/user_small.jpg" alt="image" class="img-circle" />
                                            </a>
                                            <div class="media-body">
                                                <small class="pull-right">46小时前</small>
                                                <strong>测试人员2</strong>开始跟进<strong>某试验</strong>的进度。 <br>
                                                <small class="text-muted">开始于：3天前（2017.01.07 19:58）</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="javascript:;" class="pull-left">
                                                <img src="${assets}/image/user_small.jpg" alt="image" class="img-circle" />
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right text-navy">5小时前</small>
                                                <strong>上海市六人民医院</strong>提交了一份关于<strong>核磁共振仪</strong>的检测申请。 <br>
                                                <small class="text-muted">开始于：昨天（2017.01.09 13:21）</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="dropdown-messages-box">
                                            <a href="javascript:;" class="pull-left">
                                                <img src="${assets}/image/user_small.jpg" alt="image" class="img-circle" />
                                            </a>
                                            <div class="media-body ">
                                                <small class="pull-right">26小时前</small>
                                                <strong>测试人员5</strong>对<strong>某试验</strong>的结果开始进行校验。<br>
                                                <small class="text-muted">开始于：2天前（2017.01.08 2:30）</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="javascript:;">
                                                <i class="fa fa-envelope"></i> <strong>查阅更多消息</strong>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li> --%>
                            <!-- <li class="dropdown">
                                <a class="dropdown-toggle count-info" data-toggle="dropdown" href="javascript:;">
                                    <i class="fa fa-bell"></i>  <span class="label label-primary">8</span>
                                </a>
                                <ul class="dropdown-menu dropdown-alerts">
                                    <li>
                                        <a href="javascript:;">
                                            <i class="fa fa-envelope fa-fw"></i> 你有16条消息
                                            <span class="pull-right text-muted small">4分钟前</span>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="javascript:;">
                                        <i class="fa fa-twitter fa-fw"></i> 3人正在跟进你的试验结果
                                        <span class="pull-right text-muted small">12分钟前</span>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="javascript:;">
                                            <i class="fa fa-upload fa-fw"></i> 服务器重启
                                            <span class="pull-right text-muted small">4分钟前</span>
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <div class="text-center link-block">
                                            <a href="javascript:;">
                                                <strong>查阅全部警示信息</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li> -->

                            <li>
                                <spring:url value="/logout" var="logout"/>
                                <form:form class="csrf" action="${logout}" method="post">
                                    <a href="javascript:;" id="logout">
                                        <i class="fa fa-sign-out"></i> 注销
                                    </a>
                                </form:form>
                            </li>
                            <spring:url value="/password" var="password"/>
                            <li><a href="${password}">修改OA密码</a></li>
                        </ul>

                    </nav>
                </div>