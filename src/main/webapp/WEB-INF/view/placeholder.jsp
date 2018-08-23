<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="springfield" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <springfield:head></springfield:head>

        <!-- ================== BEGIN PAGE LEVEL CSS STYLE ================== -->
        <!-- ================== END PAGE LEVEL CSS STYLE ================== -->
    </head>

    <body>
        <div id="wrapper">
            <springfield:side-bar></springfield:side-bar>

            <div id="page-wrapper" class="gray-bg">
                <springfield:top-menu></springfield:top-menu>
                <springfield:navigator title="项目1" navs="项目1,子项目2,孙项目3"></springfield:navigator>

                <div class="wrapper wrapper-content animated fadeInRight">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="ibox">
                                <div class="ibox-title">
                                    <h5>抬头</h5>
                                    <div class="ibox-tools">
                                        <a class="fullscreen-link">
                                            <i class="fa fa-expand"></i>
                                        </a>
                                        <a class="collapse-link">
                                            <i class="fa fa-chevron-up"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="ibox-content">
                                    <form>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <springfield:bottom-footer></springfield:bottom-footer>
            </div>
        </div>
        <springfield:foot></springfield:foot>

        <!-- ================== BEGIN PAGE LEVEL JS ================== -->
        <!-- ================== END PAGE LEVEL JS ================== -->
    </body>
</html>