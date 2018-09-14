<%--
  Created by IntelliJ IDEA.
  User: 邱永臣
  Date: 2016-05-31
  Time: 14:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="tag.jsp" %>

<html>
<head>
    <title>Bootstrap 模板</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://apps.bdimg.com/libs/jquery/2.0.0/jquery.min.js"></script>

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://apps.bdimg.com/libs/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="container">
    <div class="panel panel-default">
        <div class="panel-heading text-center">
            根据ID获取到的报修单
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>编号</th>
                    <th>状态</th>
                    <th>详情</th>
                    <th>地点</th>
                    <th>现场图片</th>
                    <th>提交时间</th>
                    <th>学生编号</th>
                    <th>详情</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="r" items="${list}">
                    <tr>
                        <td>${r.id}</td>
                        <td>${r.status}</td>
                        <td>${r.detail}</td>
                        <td>${r.place}</td>
                        <td>${r.picMD5}</td>
                        <td>
                            <fmt:formatDate value="${r.submitTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                        </td>
                        <td>${r.studentId}</td>
                        <td>
                            <a class="btn btn-info" href="/repair/${r.id}/detail">info</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>