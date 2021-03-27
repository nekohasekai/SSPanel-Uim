<!DOCTYPE HTML>
<html lang="zh-cn">
<head>
    <title>{$config['appName']}</title>
    <meta name="keywords" content="{$config['appName']}"/>
    <meta name="description" content="{$config['appName']}"/>
    <meta charset="utf-8"/>
    <link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="bookmark" href="/favicon.ico"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="/assets/css/main.min.css"/>
    <link href="/bootstrap" type="text/html" rel="stylesheet">
    <noscript>
        <link rel="stylesheet" href="/assets/css/noscript.min.css"/>
    </noscript>
</head>

<body>
<div id="wrapper">
    <!--首页开始-->
    <div class="content">
        <div class="inner">
            <h1>用户协议 Terms of Service</h1>
        </div>
    </div>
    <p>{$config['appName']}，以下简称本站。</p>
    <div class="table-wrapper">
        <table>
            <tbody>
            <tr align="center">
                <td>隐私安全</td>
            </tr>
            <tr>
                <td>邮箱为本站服务的唯一凭证，请自行保管。</td>
            </tr>
            <tr>
                <td>本站会以SHA256加密存储用户密码，所有服务器无日志形式运行。</td>
            </tr>
            </tbody>
        </table>
    </div>
    </br>
    <nav>
        <ul>
            <a href="javascript:history.back();" class="button">返回上一页</a>
        </ul>
    </nav>
    <!--首页结束-->
    <div id="main">
        <!--全部标签结束-->
    </div>
    <!-- 版权底部 -->
    <footer id="footer">
        <p class="copyright">&copy;{date("Y")} {$config['appName']}</p>
    </footer>
    <!-- 版权结束 -->
</div>
<!-- BG -->
<div id="bg"></div>
<!-- Scripts -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1"></script>
<script src="https://cdn.jsdelivr.net/gh/ajlkn/skel@3.0.1/dist/skel.min.js"></script>
<script src="/assets/js/util.min.js"></script>
<script src="/assets/js/main.min.js"></script>
</body>
</html>
