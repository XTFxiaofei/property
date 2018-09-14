<%--
  Created by IntelliJ IDEA.
  User: 邱永臣
  Date: 2016-06-01
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zh">

<head>
    <!-- End of Google Analytics Content Experiment code -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>红叶物业报修系统 - 注册</title>
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
    <link rel="stylesheet" href="./css/signup-varab.0c7cffb4.css">
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
    <div class="register-content clearfix">
        <div class="register-main">
            <h2 class="fzlt register-title">注册红叶账号</h2>
            <p class="register-adv">立刻参与先进的在线报修行动</p>
            <form accept-charset="utf-8" class="submit-form">
                <div class="register-input-group">
                    <p class="input-title">邮箱：<span class="login">已有账号？ 去<a href="/student/login">登录</a></span></p>
                    <div class="input-fill">
                        <input type="text" class="email-signup input-focus email-input" autofocus="true">
                    </div>
                    <span class="warning text-center"></span>
                </div>
                <div class="register-input-group">
                    <p class="input-title">密码： </p>
                    <div class="input-fill">
                        <input type="password" class="email-signup password">
                    </div>
                    <span class="warning text-center"></span>
                </div>

            </form>

            <div class="register-sub text-center">
                <button class="btn btn-org-empty" id="register-btn">注&nbsp;&nbsp;册</button>
            </div>
            <div class="pro">
                <div class="agree text-center">
                    注册账号，代表您同意 《<a href="/terms/sa" target="_blank" class="agreement">红叶物业报修系统服务协议</a>》
                    <div class="secrecy">您的信息将通过加密渠道传输</div>
                </div>
            </div>
            <div class="text-center three">
                <div class="text-center three-title">
                    <span class="line line-left"></span>
                    <span class="or">or</span>
                    <span class="line line-right"></span>
                </div>
                <div class="party-link">
                    <button class="link coding"><span class="wd-icon icon-coding-01"></span></button>
                    <button class="link github"><span class="wd-icon icon-39"></span></button>
                    <button class="link weibo"><span class="wd-icon icon-56"></span></button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="./js//jq.670de40a.js"></script>
<script src="./js/register-varab.149a336b.js"></script>
<script type="text/javascript">
    wd.signup.init();
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
