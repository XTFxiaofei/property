<%--
  Created by IntelliJ IDEA.
  User: 邱永臣
  Date: 2016-05-31
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--bootsrtap示例版--%>
<%--<html>
<head>

    <%@include file="common/bootstrap-header.jsp" %>

    <!-- Custom styles for this template -->
    <link href="css/my/signin.css" rel="stylesheet">
    <title>登录(学生)</title>

    <script>
        function login() {
            alert("你是帅哥");
        }
    </script>
</head>

<body>


<div class="container">

    <form class="form-signin">
        <h2 class="form-signin-heading">登录系统</h2>

        <label for="inputUserName" class="sr-only">userName</label>
        <input type="text" id="inputUserName" class="form-control" placeholder="输入昵称" aria-describedby="basic-addon1"
               required>
        <label for="inputPassword" class="sr-only">密码</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="输入密码" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> 记住我
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit" onclick="login()">登录</button>
    </form>

</div> <!-- /container -->


<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>--%>


<!DOCTYPE html>
<html lang="zh">

<head>
    <!-- End of Google Analytics Content Experiment code -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>系统管理员登录_红叶物业报修系统</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="format-detection" content="email=no"/>
    <meta name="format-detection" content="address=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <!--[if lt IE 9]>
    <script type="text/javascript">
        window.location.href = "/outmen";
    </script>
    <![endif]-->
    <link rel="stylesheet" href="https://css.wdstatic.cn/www-nd/styles/wilddog-ui.b4f94a7c.css">
    <link rel="stylesheet" href="https://img.wdstatic.cn/www-nd/styles/webfonts.ea19afc4.css">
    <link rel="stylesheet" href="https://css.wdstatic.cn/www-nd/styles/fonts.1e1a628e.css">
    <link rel="stylesheet" href="./css/login-varab.30c2bb34.css">
    <link rel="dns-prefetch" href="https://z.wilddog.com">
    <link rel="dns-prefetch" href="https://talks.z.wilddog.com">
    <link rel="dns-prefetch" href="https://github.com">
    <link rel="dns-prefetch" href="https://www.github.com">
    <link rel="dns-prefetch" href="https://cdn.v2ex.com">
    <link rel="dns-prefetch" href="https://life.wilddog.com">
    <link rel="apple-touch-icon" sizes="57x57"
          href="https://css.wdstatic.cn/www-nd/images/touch-icon-iphone-57.fd363edb.png"/>
    <link rel="apple-touch-icon" sizes="72x72"
          href="https://img.wdstatic.cn/www-nd/images/touch-icon-ipad-72.23b57b48.png"/>
    <link rel="apple-touch-icon" sizes="114x114"
          href="https://css.wdstatic.cn/www-nd/images/touch-icon-iphone-114.a79f48a6.png"/>
    <link rel="apple-touch-icon" sizes="144x144"
          href="https://img.wdstatic.cn/www-nd/images/touch-icon-ipad-144.916f64d0.png"/>
    <link rel="dns-prefetch" href="https://z.wilddog.com">
    <link rel="dns-prefetch" href="https://talks.z.wilddog.com">
    <link rel="dns-prefetch" href="https://github.com">
    <link rel="dns-prefetch" href="https://www.github.com">
    <link rel="dns-prefetch" href="https://cdn.v2ex.com">
    <link rel="dns-prefetch" href="https://life.wilddog.com">
    <link rel="apple-touch-icon" sizes="57x57"
          href="https://css.wdstatic.cn/www-nd/images/touch-icon-iphone-57.fd363edb.png"/>
    <link rel="apple-touch-icon" sizes="72x72"
          href="https://img.wdstatic.cn/www-nd/images/touch-icon-ipad-72.23b57b48.png"/>
    <link rel="apple-touch-icon" sizes="114x114"
          href="https://css.wdstatic.cn/www-nd/images/touch-icon-iphone-114.a79f48a6.png"/>
    <link rel="apple-touch-icon" sizes="144x144"
          href="https://img.wdstatic.cn/www-nd/images/touch-icon-ipad-144.916f64d0.png"/>
</head>

<body>
<div style='display:none;'><img src='https://css.wdstatic.cn/www-nd/images/weixin-share-icon.c28bd20b.jpg' alt="微信分享"/>
</div>
<div class="container content content3">
    <div class="login-content clearfix">
        <div class="login-main">
            <h2 class="fzlt login-title">登录系统后台</h2>
            <form accept-charset="utf-8" class="submit-form">
                <input type="hidden" id="next" name="next" value="">
                <input type="hidden" id="ck" name="ck" value="nSV4F3McXx8gCMiuIRtF3rQVxmxHO76T">
                <input type="hidden" id="sk" name="sk" value="NR5NEjVaJvwaU59x">
                <div class="login-input-group">
                    <p class="input-title">邮箱：</p>
                    <div class="input-fill">
                        <input type="text" name="email" id="inputEmail" class="email-signup email-input"
                               autofocus="true">
                    </div>
                    <span class="warning text-center"></span>
                </div>
                <div class="login-input-group">
                    <p class="input-title">密码： <span class="forget-password"><a href="/student/forgot">忘记密码</a><span
                            class="question"></span></span>
                    </p>
                    <div class="input-fill">
                        <input type="password" name="password" id="inputPassword" class="email-signup password">
                    </div>
                    <span class="warning warning-password text-center"></span>
                </div>

            </form>
            <div class="login-sub text-center">
                <button class="btn btn-org-empty" id="login-btn">登&nbsp;&nbsp;录</button>
            </div>
            <div class="pro">
                <div class="agree text-center">
                    <div class="direct">
                        <input type="checkbox" value="auto" id="auto-login">记住我
                    </div>
                    <div class="secrecy">您的信息将通过加密渠道传输</div>
                </div>
            </div>
            <div class="others-login text-center">
                <div class="text-center three-title">
                    <span class="line line-left"></span>
                    <span class="or">or</span>
                    <span class="line line-right"></span>
                </div>
                <div class="party-link">
                    <button class="link login-coding"><span class="icon icon-coding icon-coding-01"></span></button>
                    <button class="link login-github"><span class="icon icon-github icon-39"></span></button>
                    <button class="link login-weibo"><span class="icon icon-weibo icon-56"></span></button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./js/jq.670de40a.js"></script>
<script src="./js/loginab.ca36a175.js"></script>
<script type="text/javascript">
    wd.login.init();
</script>
<!-- Google Tag Manager -->
<script>
    window.addEventListener('load', function () {
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start': new Date().getTime(), event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                    j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                    '//www.wilddog.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-53PGC2');
    })
</script>
<!-- End Google Tag Manager -->
<script>
    var baseExp = 'channel4'
</script>


</body>

</html>




