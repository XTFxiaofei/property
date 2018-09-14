<%--
  Created by IntelliJ IDEA.
  User: 邱永臣
  Date: 2016-05-31
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@include file="common/bootstrap-header.jsp" %>

    <title>CL物业报修系统</title>

    <!-- Custom styles for this template -->
    <link href="./css/my/jumbotron.css" rel="stylesheet">

</head>

<body>
<script>
    getCookie("STUDENT_NAME");
    alert(getCookie("STUDENT_NAME"));

    function getCookie(cookie_name) {
        var allcookies = document.cookie;
        var cookie_pos = allcookies.indexOf(cookie_name);
// 如果找到了索引，就代表cookie存在，
// 反之，就说明不存在。
        if (cookie_pos != -1) {
// 把cookie_pos放在值的开始，只要给值加1即可。
            cookie_pos += cookie_name.length + 1;
            var cookie_end = allcookies.indexOf(";", cookie_pos);
            if (cookie_end == -1) {
                cookie_end = allcookies.length;
            }
            var value = unescape(allcookies.substring(cookie_pos, cookie_end));
        }
        return value;
    }
</script>
</body>
</html>
