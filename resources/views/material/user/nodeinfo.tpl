{include file='user/header_info.tpl'}

{$ssr_prefer = URL::SSRCanConnect($user, $mu)}

<main class="content">
    <div class="content-header ui-content-header">
        <div class="container">
            <h1 class="content-heading">节点信息</h1>
        </div>
    </div>
    <div class="container">
        <section class="content-inner">
            <div class="ui-card-wrap">
                <div class="row">
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">注意！</p>
                                    <p>配置请勿泄露！</p>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">配置信息</p>
                                    <div class="tab-content">
                                                {$ss_item = $node->getItem($user, $mu, $relay_rule_id, 1)}
                                                    <p>服务器地址：{$ss_item['address']}<br>
                                                        服务器端口：{$ss_item['port']}<br>
                                                        加密方式：{$ss_item['method']}<br>
                                                        密码：{$ss_item['passwd']}<br></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">配置链接</p>
                                                <p><a class="copy-text"
                                                      data-clipboard-text="{URL::getItemUrl($ss_item, 1)}">点我复制配置链接</a>
                                                </p>
                                                <p><a href="{URL::getItemUrl($ss_item, 1)}">iOS 上用 Safari 打开点我即可直接添加</a>
                                                </p>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-sm-12">
                        <div class="card">
                            <div class="card-main">
                                <div class="card-inner">
                                    <p class="card-heading">配置二维码</p>

                                                <nav class="tab-nav">
                                                    <ul class="nav nav-list">
                                                        <li class="active">
                                                            <a class="" data-toggle="tab" href="#ss_qrcode_normal">
                                                                <i class="icon icon-lg">android</i>
                                                                &nbsp;其他平台
                                                            </a>
                                                        </li>
                                                        <li>
                                                            <a class="" data-toggle="tab" href="#ss_qrcode_win">
                                                                <i class="icon icon-lg">desktop_windows</i>
                                                                &nbsp;Windows
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </nav>
                                                <div class="tab-pane fade active in" id="ss_qrcode_normal">
                                                    <div class="text-center">
                                                        <div id="ss-qr" class="qr-center"></div>
                                                    </div>
                                                </div>
                                                <div class="tab-pane fade" id="ss_qrcode_win">
                                                    <div class="text-center">
                                                        <div id="ss-qr-win" class="qr-center"></div>
                                                    </div>
                                                </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    {include file='dialog.tpl'}
                </div>
            </div>
        </section>
    </div>
</main>

{include file='user/footer.tpl'}

<script src="https://cdn.jsdelivr.net/gh/davidshimjs/qrcodejs@gh-pages/qrcode.min.js"></script>
<script>
	$(function(){
		new ClipboardJS('.copy-text');
	});
	$(".copy-text").click(function () {
		$("#result").modal();
		$("#msg").html("已复制到您的剪贴板，请您继续接下来的操作。");
	});
</script>
<script>
    $(function () {
        new ClipboardJS('.copy-text');
    });
    $(".copy-text").click(function () {
        $("#result").modal();
        $$.getElementById('msg').innerHTML = '已拷贝订阅链接，请您继续接下来的操作'
    });
    {if URL::SSCanConnect($user, $mu)}
    var text_qrcode = '{URL::getItemUrl($ss_item, 1)}',
        text_qrcode_win = '{URL::getItemUrl($ss_item, 2)}';
    var qrcode1 = new QRCode(document.getElementById("ss-qr"), {
            correctLevel: 3
        }),
        qrcode2 = new QRCode(document.getElementById("ss-qr-win"), {
            correctLevel: 3
        });
    qrcode1.clear();
    qrcode1.makeCode(text_qrcode);
    qrcode2.clear();
    qrcode2.makeCode(text_qrcode_win);
    {/if}
    {if URL::SSRCanConnect($user, $mu)}
    var text_qrcode2 = '{URL::getItemUrl($ssr_item, 0)}';
    var qrcode3 = new QRCode(document.getElementById("ss-qr-n"), {
        correctLevel: 3
    });
    qrcode3.clear();
    qrcode3.makeCode(text_qrcode2);
    {/if}
</script>
