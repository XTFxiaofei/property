<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: 邱永臣
  Date: 2016-06-01
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>提交报修单_红叶物业报修系统</title>
    <meta name="keywords"
          content="wilddog, WildDog, realtime, PaaS, BaaS, HTMl5, CoAP, Thread, REST, Javascript, DTLS, websockets, realtime sync, UDP, JSON, developer, B2B, SDK, iOS, Android, Mac OS, Windows, 野狗, 野狗实时, 野狗云, 实时应用, 实时同步, 实时数据库, 跨平台, 物联网, 构建实时应用, 受限网络, 传感网, 解决方案, 云平台, 云计算, 云服务, 公有云, 私有云, 开发者">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <meta name="format-detection" content="email=no"/>
    <meta name="format-detection" content="address=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <!--[if lt IE 9]>
    <script type="text/javascript">
        window.location.href = "/outmen";
    </script>
    <![endif]-->
    <link rel="stylesheet" href="https://z.wilddog.com/bower_components/highlightjs/styles/color-brewer.css">
    <link rel="stylesheet" href="https://z.wilddog.com/css/base.css">
    <link rel="stylesheet" href="https://z.wilddog.com/css/fonts.css">
    <link rel="stylesheet" href="https://z.wilddog.com/css/header_public.css">
    <link rel="stylesheet" href="https://z.wilddog.com/css/footer.css">
    <link rel="stylesheet" href="https://z.wilddog.com/css/doc.css">

</head>

<body>
<div id="wrap">
    <section class="content">
        <h1> 修改报修单 </h1>
        <p id="id">${repair.id}</p>
        <div class="func pull-right">

        </div>

        <div class="content-text">

            <form class="form-horizontal" method="post" action="<c:url value="/student/repair/${repair.id}/update"/>"
                  enctype="multipart/form-data">
                <fieldset>
                    <div id="legend" class="">
                        <legend class="">表单名</legend>
                    </div>


                    <div class="control-group">

                        <!-- Textarea -->
                        <label class="control-label">故障详情</label>
                        <div class="controls">
                            <div class="textarea">
                                <textarea type="text" class="" name="detail" title=""
                                          placeholder=${repair.detail}> </textarea>
                            </div>
                        </div>
                    </div>

                    <div class="control-group">

                        <!-- Text input-->
                        <label class="control-label" for="place">故障地点</label>
                        <div class="controls">
                            <input type="text" name="place" placeholder=${repair.place} class="input-xlarge">
                            <p class="help-block"></p>
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label">现场图片</label>

                        <!-- File Upload -->
                        <div class="controls">
                            <input class="input-file" name="file" type="file">
                        </div>
                    </div>

                    <input type="submit" title="hi"/>

                </fieldset>
            </form>

        </div>
    </section>
</div>


<script src="https://z.wilddog.com/bower_components/jquery/dist/jquery.min.js"></script>
<!--
<script src="/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/bower_components/fitvids/jquery.fitvids.js"></script>
<script src="/bower_components/masonry/dist/masonry.pkgd.min.js"></script>
-->
<script src="https://z.wilddog.com/bower_components/highlightjs/highlight.pack.js"></script>
<script src="https://z.wilddog.com/scripts/raneto.js" type="text/javascript"></script>
<script src="https://z.wilddog.com/scripts/mobile.js" type="text/javascript"></script>
<script type="text/javascript">
    //        window.onload = loadOver;
    $(document).ready(function () {
        loadOver();
    })
</script>
<!-- Google Tag Manager -->
<script>
    window.addEventListener('load', function () {
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(),
                event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s),
                    dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                    '//www.wilddog.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-53PGC2');
    })
</script>
<!-- End Google Tag Manager -->
</body>


<script>
    function comitBtn() {
        $.ajax({
            url: "/student/commit",
            method: "POST",
            fileElementId: "img",
            dataType: "json",
            contentType: "json",
            success: function () {
                alert("nothing");
            }
        });
    }
</script>
</html>