<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="mybean.data.Login" %>
<%@ page import="java.sql.*" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>时代图书在线 || bookshop</title>
        <meta name="description" content="时代图书在线，是由武汉科技大学电子商务专业 陈凯 开发，该项目用于图书管理，现在阅读及销售，功能还在不断完善中！">
        <meta name="keywords" content="时代图书在线 | 陈凯 | 武汉科技大学">
        <link rel="shortcut icon" href="../image/icon/litIcon.ico">
        <link href="../css/reset.css" rel="stylesheet" type="text/css" />
        <link href="../css/page.css" rel="stylesheet" type="text/css" />
        <link href="../css/detailPage.css" rel="stylesheet" type="text/css" />
        <script src="../js/jquey-1.8.0.min.js"></script>
    </head>

    <body>
        <!-- 顶部导航 -->
        <div id="top">
            <div class="wrap clear">
                <div class="welcome fl">
                    <span class="cor3">欢迎光临时代，请
                            <a title="会员直接登录" style="color:#FF2832;" target="_self" href="login.jsp" name="登录" title="请登录网站">登录</a>
                            <a title="新用户请先注册" rel="nofollw" target="_self" href="inputRegisterMess.jsp" name="免费注册" title="免费注册当当账户">免费注册
                            </a>
                        </span>
                </div>
                <div class="topRight fr clear">
                    <ul class="leftNav fl">
                        <li>
                            <a class="padl10" title="查看购物车" name="购物车" href="lookShoppingCar.jsp">购物车</a>
                            <span class="sep">|</span>
                        </li>
                        <li class="myOrder">
                            <a title="查看我的订单" name="我的订单" href="lookOrderForm.jsp" target="_blank">我的订单</a>
                            <i class="myLibIcon"></i>
                            <span class="sep">|</span></li>
                        <li class="myLib">
                            <a title="进入我的个人主页" name="我的当当" href="login.jsp" target="_blank">我的图书馆</a>
                            <i class="myLibIcon"></i>
                            <div id="topLookTab">
                                <ul class="looktabnav clear">
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                            <a href="" target="_blank">名人演说</a>
                                            <a href="" target="_blank">金融</a>
                                        </div>
                                    </li>
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志/成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                            <a href="" target="_blank">名人演说</a>
                                            <a href="" target="_blank">金融</a>
                                        </div>
                                    </li>
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志/成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                        </div>
                                    </li>
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                        </div>
                                    </li>
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                        </div>
                                    </li>
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                        </div>
                                    </li>
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                        </div>
                                    </li>
                                    <li class="">
                                        <h4>经管励志</h4>
                                        <div class="e">
                                            <a href="" target="_blank">励志成功</a>
                                            <a href="" target="_blank">管理</a>
                                            <a href="" target="_blank">经济</a>
                                            <a href="" target="_blank">投资理财</a>
                                            <a href="" target="_blank">心灵修养</a>
                                            <a href="" target="_blank">职场</a>
                                        </div>
                                    </li>
                                    <ul>
                            </div>
                        </li>
                        </ul>
                        <ul class="rightNav fr">
                            <li class="myInformation"><a title="登录网站" href="login.jsp">个人中心</a><i class="myLibIcon"></i><span class="sep">|</span> </li>
                            <li><a title="退出系统" name="退出" href="login.jsp">退出</a></li>
                        </ul>
                </div>
            </div>
        </div>
        <!-- /顶部导航 -->
        <!-- logo与search区域 -->
        <div id="logo_line" class="wrap clear">
            <div class="logo fl">
                <a href="index.jsp">
                    <img src="../image/logo/logo7.png" alt="时代图书在线" title="欢迎进入当当图书在线">
                </a>
            </div>
            <div class="search fr">
                <form method="post" action="byPageShow.jsp">
                    <input type="text" name="searchMess" autocomplete="on" placeholder="时空图书" class="text gray">
                    <span class="select">
                        <span id="Show_Category_Name">读书节</span>
                    <span class="icon"></span>
                    </span>
                    <div class="search_bottom">
                        <span>搜索条件：</span>
                        <input type="radio" name="radio" value="图书价格">图书价格
                        <input type="radio" name="radio" value="图书名称">图书名称
                        <input type="radio" name="radio" value="图书版本">图书版本
                    </div>
                    <input type="submit" name="g" value="搜索" class="button" title="点击我搜索吧！">
                </form>
                <!-- <div class="shopCar">
                        <span class="shopText">购物车</span>
                        <span class="shopNum">0</span>
                    </div> -->
            </div>
            <!-- 购物车盒子 -->
            <div id="cart_box" class="cart_box fr clear">
                <a id="cart" class="cart_link" rel="nofollow"  href="lookShoppingCar.jsp">
                    <img src="../image/icon/cart.gif" width="28" height="28" class="cart_gif">
                    <span class="text">去购物车结算</span>
                    <span class="num" style="display: none;"></span>
                    <s class="icon_arrow_right"></s>
                </a>
                <div class="cart_content" id="cart_content">
                    <i class="cart-icons"></i>
                    <div class="cart_content_null" style="display: none;">购物车中还没有商品，
                        <br>快去挑选心爱的商品吧！</div>
                    <div class="cart_content_all" style="display: none;">
                        <div class="cart_left_time">已超过购物车商品保留时间，请尽快结算。</div>
                        <div class="cart_content_center"></div>
                        <div class="con_all">
                            <div class="price_whole"><span>共<span class="num_all"></span>件商品</span>
                            </div>
                            <div><span class="price_gongji">共计<em>￥</em><span class="total_price">69</span></span><a href="lookShoppingCar.jsp" class="cart_btn" rel="nofollow">去购物车结算</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /logo与search区域 -->
        <!-- 导航条 -->
        <div id="navbar">
            <div class="wrap clear">
                <h3 class="navindex"><a href="index.jsp" title="图书在线，欢迎品读购买">时代图书在线</a></h3>
                <ul>
                    <li class=""><a class="current" title="进入书店主页" href="index.jsp">主页</a></li>
                    <li class="today">
                        <a title="浏览商品列表" href="byPageShow.jsp">浏览图书
                                <em class="white_arrow"></em>
                            </a>
                        <div id="looktab">
                            <ul class="looktabnav">
                                <li class="">
                                    <h4>经管励志</h4>
                                    <div class="e">
                                        <a href="" target="_blank">励志成功</a>
                                        <a href="" target="_blank">管理</a>
                                        <a href="" target="_blank">经济</a>
                                        <a href="" target="_blank">投资理财</a>
                                        <a href="" target="_blank">心灵修养</a>
                                        <a href="" target="_blank">职场</a>
                                        <a href="" target="_blank">名人演说</a>
                                        <a href="" target="_blank">金融</a>
                                    </div>
                                </li>
                                <li class="">
                                    <h4>经管励志</h4>
                                    <div class="e">
                                        <a href="" target="_blank">励志成功</a>
                                        <a href="" target="_blank">管理</a>
                                        <a href="" target="_blank">经济</a>
                                        <a href="" target="_blank">投资理财</a>
                                        <a href="" target="_blank">心灵修养</a>
                                        <a href="" target="_blank">职场</a>
                                        <a href="" target="_blank">名人演说</a>
                                        <a href="" target="_blank">金融</a>
                                    </div>
                                </li>
                                <li class="">
                                    <h4>经管励志</h4>
                                    <div class="e">
                                        <a href="" target="_blank">励志成功</a>
                                        <a href="" target="_blank">管理</a>
                                        <a href="" target="_blank">经济</a>
                                        <a href="" target="_blank">投资理财</a>
                                        <a href="" target="_blank">心灵修养</a>
                                        <a href="" target="_blank">职场</a>
                                        <a href="" target="_blank">名人演说</a>
                                        <a href="" target="_blank">金融</a>
                                    </div>
                                </li>
                                <li class="">
                                    <h4>经管励志</h4>
                                    <div class="e">
                                        <a href="" target="_blank">励志成功</a>
                                        <a href="" target="_blank">管理</a>
                                        <a href="" target="_blank">经济</a>
                                        <a href="" target="_blank">投资理财</a>
                                        <a href="" target="_blank">心灵修养</a>
                                        <a href="" target="_blank">职场</a>
                                        <a href="" target="_blank">名人演说</a>
                                        <a href="" target="_blank">金融</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="lookbook">
                        <a title="查询图书" href="byPageShow.jsp">查询图书</a>
                    </li>
                    <li><a title="查看购物车" href="lookShoppingCar.jsp">查看购物车</a></li>
                    <li class="loveclub">
                        <a title="查看您的订单" href="lookOrderForm.jsp">查看订单
                                <em class="white_arrow"></em>
                                </a>
                        <div class="loveclubtab">
                            <a href="lookShoppingCar.jsp">一键购买</a>
                            <a href="lookOrderForm.jsp">今日订单</a>
                            <a href="lookOrderForm.jsp">历史订单</a>
                        </div>
                    </li>
                </ul>
                <div class="sales fr"></div>
            </div>
        </div>
        <!-- /导航条 -->
        <!-- 商品内容列表区域上部 -->
        <div id="content" class="wrap clear">
            <div class="userPosition wrap clear">
                <a href="">首页</a>
                <span>&nbsp;&gt;&nbsp;</span>
                <a href="">流行读物</a>
                <span>&nbsp;&gt;&nbsp;</span>
                <a href="">最热图书</a>
                <span>&nbsp;&gt;&nbsp;</span>
                <a href="">前端科技</a>
                <span>&nbsp;&gt;&nbsp;</span>
                <a href="">web标准</a>
                <span>&nbsp;&gt;&nbsp;</span>
                <a href="">开发规范</a>
                <span>&nbsp;&gt;&nbsp;</span>
                <a href="">书写规则</a>
            </div>
            <div class="description clear">
                <div class="dleftArea fl">
                    <div class="topItem">
                        <a href="">
                            <img src="../image/book/book_list4/list4_big1.jpg" alt="" height="400" width="400">
                        </a>
                    </div>
                    <ul class="thumb">
                        <li class="tfirst">
                            <a href=""><img src="../image/book/book_list4/list4_lit1.jpg" height="50" width="50" alt=""></a>
                        </li>
                        <li>
                            <a href=""><img src="../image/book/book_list4/list4_lit2.jpg" alt=""></a>
                        </li>
                        <li>
                            <a href=""><img src="../image/book/book_list4/list4_lit3.jpg" alt=""></a>
                        </li>
                        <li>
                            <a href=""><img src="../image/book/book_list4/list4_lit4.jpg" alt=""></a>
                        </li>
                        <li>
                            <a href=""><img src="../image/book/book_list4/list4_lit1.jpg" alt=""></a>
                        </li>
                        <li>
                            <a href=""><img src="../image/book/book_list4/list4_lit2.jpg" alt=""></a>
                        </li>
                        <li class="tlast">
                            <a href=""><img src="../image/book/book_list4/list4_lit3.jpg" alt=""></a>
                        </li>
                    </ul>
                    <div class="social">
                        <ul class="clear">
                            <li><a href="">收藏商品</a></li>
                            <li><a href="">加入对比</a></li>
                            <li class="attention"><b></b><a href="">关注商品</a></li>
                            <li class="share"><b></b><a href="">分享</a></li>
                        </ul>
                    </div>
                </div>
                <div class="drightArea fl clear">
                    <div class="itemInfo fl clear">
                        <div id="name">
                            <h1>世界那么大  我想去看看</h1>
                            <div id="p-ad" class="p-ad J-ad-1279804">降11元，仅售48元，现货速抢，手慢后悔！</div>
                            <div id="p-ad-phone" class="p-ad">送全套明信片</div>
                        </div>
                        <div id="compare">
                            <a href="#none" id="comp_1279804" data-sku="1279804" class="J_contrast btn-compare selected btn-compare-s-active" clstag="shangpin|keycount|product|jiaruduibi">
                                <span>对比</span>
                            </a>
                        </div>
                        <div id="summary">
                            <div id="comment-count" clstag="shangpin|keycount|product|1|pingjiabtn">
                                <p class="comment">累计评价</p>
                                <a class="count J-comm-1279804" href="#comment">11327</a>
                            </div>
                            <div id="summary-price">
                                <div class="dt">时 代 价：</div>
                                <div class="dd">
                                    <strong class="p-price" id="jd-price">￥48.00</strong>
                                    <a data-type="1" data-sku="1279804" id="notice-downp" class="J-notify-1" href="#none" clstag="shangpin|keycount|product|1|jiangjia">(降价通知)</a>
                                </div>
                            </div>
                            <div id="J-summary-top" class="summary-top">
                                <div id="summary-promotion" class="hide" style="display: block;">
                                    <div class="dt">促销信息：</div>
                                    <div class="dd J-prom-wrap p-promotions-wrap" style="padding-bottom: 5px;">
                                        <div class="p-promotions">
                                            <div class="J-prom-bvalue">
                                                <a class="hl_red_bg">通信B </a>
                                                <a class="hl_red"> 赠送153个时代通信B</a>
                                                <a href="" target="_blank">&nbsp;&nbsp;详情 &gt;&gt;</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="summary-stock" class="clear">
                                <div class="dt">配 送 至：</div>
                                <div class="dd clearfix">
                                    <div id="store-selector" class="">
                                        <div class="text">
                                            <div title="北京朝阳区三环以内">北京朝阳区三环以内</div>
                                            <b></b>
                                        </div>
                                        <div class="content">
                                            <div data-widget="tabs" class="m JD-stock" id="JD-stock">
                                                <div class="mt">
                                                    <ul class="tab">
                                                        <li data-index="0" data-widget="tab-item" class=""><a href="#none" class=""><em>北京</em><i></i></a></li>
                                                        <li data-index="1" data-widget="tab-item" style="" class=""><a href="#none" class="" title="朝阳区"><em>朝阳区</em><i></i></a></li>
                                                        <li data-index="2" data-widget="tab-item" style="display: list-item;" class="curr"><a href="#none" class="hover" title="三环以内"><em>三环以内</em><i></i></a></li>
                                                        <li data-index="3" data-widget="tab-item" style="display: none;"><a href="#none" class=""><em>请选择</em><i></i></a></li>
                                                    </ul>
                                                    <div class="stock-line"></div>
                                                </div>
                                                <div class="mc" data-area="0" data-widget="tab-content" id="stock_province_item" style="display: none;">
                                                    <ul class="area-list">
                                                        <li><a href="#none" data-value="1">北京</a></li>
                                                        <li><a href="#none" data-value="2">上海</a></li>
                                                        <li><a href="#none" data-value="3">天津</a></li>
                                                        <li><a href="#none" data-value="4">重庆</a></li>
                                                        <li><a href="#none" data-value="5">河北</a></li>
                                                        <li><a href="#none" data-value="6">山西</a></li>
                                                        <li><a href="#none" data-value="7">河南</a></li>
                                                        <li><a href="#none" data-value="8">辽宁</a></li>
                                                        <li><a href="#none" data-value="9">吉林</a></li>
                                                        <li><a href="#none" data-value="10">黑龙江</a></li>
                                                        <li><a href="#none" data-value="11">内蒙古</a></li>
                                                        <li><a href="#none" data-value="12">江苏</a></li>
                                                        <li><a href="#none" data-value="13">山东</a></li>
                                                        <li><a href="#none" data-value="14">安徽</a></li>
                                                        <li><a href="#none" data-value="15">浙江</a></li>
                                                        <li><a href="#none" data-value="16">福建</a></li>
                                                        <li><a href="#none" data-value="17">湖北</a></li>
                                                        <li><a href="#none" data-value="18">湖南</a></li>
                                                        <li><a href="#none" data-value="19">广东</a></li>
                                                        <li><a href="#none" data-value="20">广西</a></li>
                                                        <li><a href="#none" data-value="21">江西</a></li>
                                                        <li><a href="#none" data-value="22">四川</a></li>
                                                        <li><a href="#none" data-value="23">海南</a></li>
                                                        <li><a href="#none" data-value="24">贵州</a></li>
                                                        <li><a href="#none" data-value="25">云南</a></li>
                                                        <li><a href="#none" data-value="26">西藏</a></li>
                                                        <li><a href="#none" data-value="27">陕西</a></li>
                                                        <li><a href="#none" data-value="28">甘肃</a></li>
                                                        <li><a href="#none" data-value="29">青海</a></li>
                                                        <li><a href="#none" data-value="30">宁夏</a></li>
                                                        <li><a href="#none" data-value="31">新疆</a></li>
                                                        <li><a href="#none" data-value="32">台湾</a></li>
                                                        <li><a href="#none" data-value="42">香港</a></li>
                                                        <li><a href="#none" data-value="43">澳门</a></li>
                                                        <li><a href="#none" data-value="84">钓鱼岛</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mc" data-area="1" data-widget="tab-content" id="stock_city_item" style="display: none;">
                                                    <ul class="area-list">
                                                        <li><a href="#none" data-value="72">朝阳区</a></li>
                                                        <li><a href="#none" data-value="2800">海淀区</a></li>
                                                        <li><a href="#none" data-value="2801">西城区</a></li>
                                                        <li><a href="#none" data-value="2802">东城区</a></li>
                                                        <li><a href="#none" data-value="2803">崇文区</a></li>
                                                        <li><a href="#none" data-value="2804">宣武区</a></li>
                                                        <li><a href="#none" data-value="2805">丰台区</a></li>
                                                        <li><a href="#none" data-value="2806">石景山区</a></li>
                                                        <li><a href="#none" data-value="2807">门头沟</a></li>
                                                        <li><a href="#none" data-value="2808">房山区</a></li>
                                                        <li><a href="#none" data-value="2809">通州区</a></li>
                                                        <li><a href="#none" data-value="2810">大兴区</a></li>
                                                        <li><a href="#none" data-value="2812">顺义区</a></li>
                                                        <li><a href="#none" data-value="2814">怀柔区</a></li>
                                                        <li><a href="#none" data-value="2816">密云区</a></li>
                                                        <li><a href="#none" data-value="2901">昌平区</a></li>
                                                        <li><a href="#none" data-value="2953">平谷区</a></li>
                                                        <li><a href="#none" data-value="3065">延庆县</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mc" data-area="2" data-widget="tab-content" id="stock_area_item" style="display: block;">
                                                    <ul class="area-list">
                                                        <li><a href="#none" data-value="2799">三环以内</a></li>
                                                        <li><a href="#none" data-value="4137">管庄</a></li>
                                                        <li><a href="#none" data-value="4139">北苑</a></li>
                                                        <li><a href="#none" data-value="4211">定福庄</a></li>
                                                        <li class="long-area"><a href="#none" data-value="2819">三环到四环之间</a></li>
                                                        <li class="long-area"><a href="#none" data-value="2839">四环到五环之间</a></li>
                                                        <li class="long-area"><a href="#none" data-value="2840">五环到六环之间</a></li>
                                                    </ul>
                                                </div>
                                                <div class="mc" data-area="3" data-widget="tab-content" id="stock_town_item" style="display: none;"></div>
                                            </div><span class="clr"></span>
                                        </div>
                                        <div class="close" onclick="$('#store-selector').removeClass('hover')"></div>
                                    </div>
                                    <div id="store-prompt">
                                        <b>有货</b>，支持&nbsp;
                                        <a href="http://help.jd.com/user/issue/103-983.html" target="_blank" title="钻石会员自营订单满59元（含）免运费， 其他会员自营订单满79元（含）免运费， 不足金额订单收取5元/单运费（偏远地区额外收取10元/件）。">79免运费</a> &nbsp;&nbsp;|&nbsp;&nbsp;
                                        <a href="http://help.jd.com/user/issue/103-983.html" target="_blank" title="支持送货上门后再收款，支持现金、POS机刷卡等方式">货到付款</a>
                                        <span class="charges"></span>
                                    </div>
                                </div>
                                <span class="clr"></span>
                            </div>
                            <div id="summary-service" clstag="shangpin|keycount|product|1|fuwu">
                                <div class="dt">服　　务：</div>
                                <div class="dd"><span class="deliver">由 时代 发货,</span>
                                    <a href="" clstag="shangpin|keycount|product|bbtn" class="hl_red">魅族手机旗舰店</a> 提供售后服务。15:00前完成下单,可预约今晚送达
                                </div>
                            </div>
                        </div>
                        <!-- 选择商品规格 -->
                        <div id="summary-service" clstag="shangpin|keycount|product|1|fuwu">
                            <div class="dt">颜　　色：</div>
                            <div class="dd">
                                <a href="" class="standard">白色</a>
                                <a href="" class="standard">黑色</a>
                                <a href="" class="standard">紫色</a>
                                <a href="" class="standard">灰色</a>
                                <a href="" class="standard">红色</a>
                                <a href="" class="standard">粉色</a>
                            </div>
                        </div>
                        <div id="summary-service" clstag="shangpin|keycount|product|1|fuwu">
                            <div class="dt">尺　　码：</div>
                            <div class="dd">
                                <a href="" class="standard">S</a>
                                <a href="" class="standard">M</a>
                                <a href="" class="standard">L</a>
                                <a href="" class="standard">XL</a>
                            </div>
                        </div>
                        <!-- /选择商品规格 -->
                        <!-- 购买数量 -->
                        <dl class="amount dl clear">
                            <dt class="property-type">数&nbsp;&nbsp;&nbsp; 量：</dt>
                            <dd>
                                <span class="stock" id="J_Stock">
                                        <a href="#" hidefocus="" class="reduce J_Reduce iconfont disable-reduce" data-spm-anchor-id="2013.1.20140002.5">-</a>
                                        <input id="J_IptAmount" type="text" class="tb-text" value="1" maxlength="8" title="请输入购买量"><a href="#" hidefocus="" class="tb-increase J_Increase tb-iconfont" data-spm-anchor-id="2013.1.20140002.6">+</a>&nbsp;&nbsp;&nbsp;  件
                                    </span>
                                <em>(库存<span id="J_SpanStock" class="count">1462</span>件)</em>
                            </dd>
                        </dl>
                        <!-- /购买数量 -->
                        <!-- 立即购买，放入购物车 -->
                        <div id="J_juValid" class="action clear">
                            <div class="btn-buy fl">
                                <a href="lookShoppingCar.jsp" data-addfastbuy="true" title="点击此按钮，到下一步确认购买信息" class="J_LinkBuy" data-spm-click="gostr=/tbdetail;locaid=d1" shortcut-key="b" shortcut-label="立即购买" shortcut-effect="click" data-spm-anchor-id="2013.1.20140002.d1">立即购买</a>
                            </div>
                            <div class="btn-add fl">
                                <a href="#" title="加入购物车" class="J_LinkAdd" data-spm-click="gostr=/tbdetail;locaid=d2" shortcut-key="a" shortcut-label="加入购物车" shortcut-effect="click" data-spm-anchor-id="2013.1.20140002.9"><i class="iconfont"></i>加入购物车</a>
                            </div>
                        </div>
                        <!-- /立即购买，放入购物车 -->
                        <div class="dl">
                            <dl class="mod_detailInfor_ensure clear">
                                <dt class="dt">保&nbsp;&nbsp;&nbsp; 障</dt>
                                <dd class="dd clear">
                                    <div class="payment" id="payment">
                                        <a href="javascript:void(0);" class="paybtn">支付方式
                                            <span class="iconDetail"></span>
                                            </a>
                                    </div>
                                    <div id="payServiceList">
                                        <a href="">正品保障</a>
                                        <a title="假一赔三" href="" target="_blank">假一赔三</a>
                                    </div>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <div class="dadd fr" id="r_mod">
                        <div class="mod_change" id="r_mod_change">
                            <div class="cha_t">看了还看
                                <a href="javascript:void(0);" id="r_cha_t">
                                    <span class="iconDetail"></span>换一批
                                </a>
                            </div>
                            <ul class="seeclip_list clear">
                                <li>
                                    <a href=""><img src="../image/pageside/little/1.jpg" alt=""></a>
                                </li>
                                <li>
                                    <a href=""><img src="../image/pageside/little/3.jpg" alt=""></a>
                                </li>

                            </ul>
                            <p class="see_more">
                                <a href="http://shop.yhd.com/m-3941.html" target="_blank" onclick="addTrackPositionToCookie(1,'detail_fpage_seemore_goshop')">去店铺逛逛
                                    <span class="iconDetail"></span>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /商品内容列表区域上部 -->
        <!-- 商品详细说明下部 -->
        <div id="detail" class="wrap clear">
            <div id="detailLeft" class="fl">
                <h3>时代官方旗舰店</h3>
                <ul class="seeclip_list clear">
                    <li>
                        <a href=""><img src="../image/pageside/little/1.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/2.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/3.jpg" alt=""></a>
                    </li>
                </ul>
                <ul class="seeclip_list clear">
                    <li>
                        <a href=""><img src="../image/pageside/little/4.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/5.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/6.jpg" alt=""></a>
                    </li>
                </ul>
                <h3>看了又看</h3>
                <ul class="seeclip_list clear">
                    <li>
                        <a href=""><img src="../image/pageside/little/1.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/2.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/3.jpg" alt=""></a>
                    </li>
                </ul>
                <ul class="seeclip_list clear">
                    <li>
                        <a href=""><img src="../image/pageside/little/4.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/5.jpg" alt=""></a>
                    </li>
                    <li>
                        <a href=""><img src="../image/pageside/little/6.jpg" alt=""></a>
                    </li>
                </ul>
            </div>
            <div id="detailRight" class="fr">
                <ul class="des_tab">
                    <li class="des_tabbox" id="detail_desc_tab">
                        <a href="javascript:void(0)" tabindex="0" class="tab cur">商品介绍</a>
                        <a href="javascript:void(0)" class="tab" id="desc_sppj" tabindex="-100">评价&nbsp;<em>3</em></a>
                        <a tabindex="1" href="javascript:void(0)" class="tab">规格及包装</a>
                        <a tabindex="3" href="javascript:void(0)" class="tab">售后服务</a><a href="javascript:void(0)" id="desc_spwd" class="tab" tabindex="-101">商品问答</a>
                    </li>
                    <li class="des_act">
                        <div class="btnbox">
                            <a class="add_cart" style="display:none;" id="detail_desc_addCartBtn" href="javascript:void(0);"><span>加入购物车</span></a>
                        </div>
                        <div style="display:none;" id="detail_desc_FaqBtn" class="onlinebox"><a href="javascript:void(0);">商家客服</a></div>
                    </li>
                </ul>
                <div class="goodStandard clear">
                    <h4>规格参数</h4>
                    <ul>
                        <li>国家：中国大陆</li>
                        <li>产地：中国北京</li>
                        <li>出版社：中国教育出版社</li>
                        <li>书名：HTML5与CSS3权威指南</li>
                    </ul>
                    <ul>
                        <li>作者：陆凌牛</li>
                        <li>版本：2014年11月第2版</li>
                        <li>出版时间：2014年2月</li>
                        <li>页数：466页</li>
                    </ul>
                    <ul>
                        <li>图书编号：1770796886</li>
                        <li>图书分类：前端科技</li>
                        <li>是否为套装：是</li>
                        <li>样式：黑白印刷</li>
                    </ul>
                </div>
                <div class="des_img">
                    <img src="../image/detail/css01.jpg" height="240" width="790">
                    <img src="../image/detail/css02.png">
                    <div class="hr40"></div>
                    <div>
                        <img height="60" width="750" style="margin-top: 10.0px;" src="../image/detail/css03.jpg">
                    </div>
                    <table width="750" cellspacing="0" cellpadding="0" border="0" style="line-height: 23.0px;font-size: 14.0px;color: #666666;margin-top: 10.0px;border: solid 1.0px #cccccc;border-width: 1.0px 0 0 1.0px;">
                        <tbody>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;书名：</td>
                                <td width="628" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;【正版】图解CSS3：核心技术与案例实战|63768</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;图书定价：</td>
                                <td width="628" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;79元</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;图书作者：</td>
                                <td width="628" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;大漠</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;出版社：</td>
                                <td width="628" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;机械工业出版社</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;出版日期：</td>
                                <td width="628" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;2014/7/1 0:00:00</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;ISBN号：</td>
                                <td width="628" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;9787111469209</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;开本：</td>
                                <td style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">16开</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;页数：</td>
                                <td style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">486</td>
                            </tr>
                            <tr>
                                <td width="119" bgcolor="#FBFBFB" align="right" style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">&nbsp;版次：</td>
                                <td style="border: solid 1.0px #cccccc;border-width: 0 1.0px 1.0px 0;">1-1</td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="750" cellspacing="0" cellpadding="0" border="0" style="border: 1.0px solid #cccccc;margin-top: 10.0px;line-height: 23.0px;font-size: 14.0px;color: #666666;">
                        <tbody>
                            <tr>
                                <td style="border-bottom: 1.0px dashed #cccccc;background-color: #fbfbfb;font-weight: bold;color: #990000;">&nbsp;作者简介</td>
                            </tr>
                            <tr>
                                <td style="padding: 10.0px;">廖伟华(网名：大漠)，资深Web前端工程师，W3cplus(http：／／www．w3cplus．com)创始人，目前就职于Ctrip UED。中国Drupal社区核心成员之一。对HTML5、CSS3、XHTML和Sass等前端脚本语言有非常深入的认识和丰富的实践经验，尤其专注对CSS3的研究，是国内最早研究和使用CSS3技术的一批人。现在还关注Web产品策划、交互设计、SEO以及移动端开发。2012年4月刊的《程序员》杂志上发表文章“Twitter Bootstrap：前端框架利器”。</td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="750" cellspacing="0" cellpadding="0" border="0" style="border: 1.0px solid #cccccc;margin-top: 10.0px;line-height: 23.0px;font-size: 14.0px;color: #666666;">
                        <tbody>
                            <tr>
                                <td style="border-bottom: 1.0px dashed #cccccc;background-color: #fbfbfb;font-weight: bold;color: #990000;">&nbsp;内容简介</td>
                            </tr>
                            <tr>
                                <td style="padding: 10.0px;">《图解CSS3：核心技术与案例实战》是国内著名的Web前端专家历时两载的心血之作，根据最新的CSS3撰写，融入了作者在CSS领域近10年的使用经验，旨在将本书打造成为CSS3领域最权威和实用的专业著作，供没有经验的读者系统学习，供有经验的读者参考备查。
                                    <br>《图解CSS3：核心技术与案例实战》理论知识系统全面，详细讲解了选择器、边框、背景、文本、颜色、盒模型、伸缩布局盒模型、多列布局、渐变、过渡、动画、媒体、响应Web设计、Web字体等主题下涵盖的所有CSS3新特性，所有这些都巧妙地融入到案例中，而不是纯粹枯燥的理论讲解；讲解方式直观易懂，以图解的方式巧妙地展示了这些新特性；实战性强，既为每个知识点精心设计了小案例，也有综合性的大案例，所有案例都非常详尽，有功能需求分析、设计思路和完整代码，还有最终的效果展示。</td>
                            </tr>
                        </tbody>
                    </table>
                    <table width="750" cellspacing="0" cellpadding="0" border="0" style="border: 1.0px solid #cccccc;margin-top: 10.0px;line-height: 23.0px;font-size: 14.0px;color: #666666;">
                        <tbody>
                            <tr>
                                <td style="border-bottom: 1.0px dashed #cccccc;background-color: #fbfbfb;font-weight: bold;color: #990000;">&nbsp;目录</td>
                            </tr>
                            <tr>
                                <td style="padding: 10.0px;">
                                    <br>《图解CSS3：核心技术与案例实战》
                                    <br>前&#12288;言
                                    <br>第1章&#12288;揭开CSS3的面纱 1
                                    <br>1.1&#12288;什么是CSS3 1
                                    <br>1.1.1&#12288;CSS3的新特性 2
                                    <br>1.1.2&#12288;CSS3的发展状况 4
                                    <br>1.1.3&#12288;现在能使用CSS3吗 5
                                    <br>1.1.4&#12288;使用CSS3有什么好处 5
                                    <br>1.2&#12288;浏览器对CSS3的支持状况 6
                                    <br>1.2.1&#12288;经典回顾：图说浏览器大战 7
                                    <br>1.2.2&#12288;浏览器的市场份额 8
                                    <br>1.2.3&#12288;主流浏览器对CSS3支持状况 9
                                    <br>1.3&#12288;渐进增强 11
                                    <br>1.3.1&#12288;渐进增强与优雅降级 11
                                    <br>1.3.2&#12288;渐进增强的优点 12
                                    <br>1.4&#12288;CSS3的现状及未来 13
                                    <br>1.4.1&#12288;谁在使用CSS3 13
                                    <br>1.4.2&#12288;CSS3的未来 14
                                    <br>1.5&#12288;本章小结 14
                                    <br>第2章&#12288;CSS3选择器 15
                                    <br>2.1&#12288;认识CSS选择器 15
                                    <br>2.1.1&#12288;CSS3选择器的优势 15
                                    <br>2.1.2&#12288;CSS3选择器分类 16
                                    <br>2.2&#12288;基本选择器 16
                                    <br>2.2.1&#12288;基本选择器语法 16
                                    <br>2.2.2&#12288;浏览器兼容性 17
                                    <br>2.2.3&#12288;实战体验：使用基本选择器 17
                                    <br>2.2.4&#12288;通配选择器 18
                                    <br>2.2.5&#12288;元素选择器 18
                                    <br>2.2.6&#12288;ID选择器 18
                                    <br>2.2.7&#12288;类选择器 19
                                    <br>2.2.8&#12288;群组选择器 20
                                    <br>2.3&#12288;层次选择器 21
                                    <br>2.3.1&#12288;层次选择器语法 21
                                    <br>2.3.2&#12288;浏览器兼容性 21
                                    <br>2.3.3&#12288;实战体验：使用层次选择器选择元素 21
                                    <br>2.3.4&#12288;后代选择器 23
                                    <br>2.3.5&#12288;子选择器 23
                                    <br>2.3.6&#12288;相邻兄弟选择器 24
                                    <br>2.3.7&#12288;通用兄弟选择器 25
                                    <br>2.4&#12288;动态伪类选择器 25
                                    <br>2.4.1&#12288;动态伪类选择器语法 26
                                    <br>2.4.2&#12288;浏览器兼容性 26
                                    <br>2.4.3&#12288;实战体验：美化按钮 27
                                    <br>2.5&#12288;目标伪类选择器 29
                                    <br>2.5.1&#12288;目标伪类选择器语法 29
                                    <br>2.5.2&#12288;浏览器兼容性 30
                                    <br>2.5.3&#12288;实战体验：制作手风琴效果 30
                                    <br>2.6&#12288;语言伪类选择器 33
                                    <br>2.6.1&#12288;语言伪类选择器语法 33
                                    <br>2.6.2&#12288;浏览器兼容性 34
                                    <br>2.6.3&#12288;实战体验：定制不同语言版本引文风格 34
                                    <br>2.7&#12288;UI元素状态伪类选择器 36
                                    <br>2.7.1&#12288;UI元素状态伪类选择器语法 36
                                    <br>2.7.2&#12288;浏览器兼容性 36
                                    <br>2.7.3&#12288;实战体验：Bootstrap的表单元素UI状态 37
                                    <br>2.8&#12288;结构伪类选择器 41
                                    <br>2.8.1&#12288;重温HTML的DOM树 41
                                    <br>2.8.2&#12288;结构伪类选择器语法 42
                                    <br>2.8.3&#12288;浏览器兼容性 43
                                    <br>2.8.4&#12288;结构伪类选择器中的n是什么 44
                                    <br>2.8.5&#12288;结构伪类选择器的使用方法详解 47
                                    <br>2.8.6&#12288;实战体验：CSS3美化表格 61
                                    <br>2.9&#12288;否定伪类选择器 66
                                    <br>2.9.1&#12288;否定伪类选择器语法 66
                                    <br>2.9.2&#12288;浏览器兼容性 67
                                    <br>2.9.3&#12288;实战体验：改变图片效果 67
                                    <br>2.10&#12288;伪元素 69
                                    <br>2.10.1&#12288;伪元素::first-letter 69
                                    <br>2.10.2&#12288;伪元素::first-line 70
                                    <br>2.10.3&#12288;伪元素::before和::after 70
                                    <br>2.10.4&#12288;伪元素::selection 72
                                    <br>2.11&#12288;属性选择器 73
                                    <br>2.11.1&#12288;属性选择器语法 73
                                    <br>2.11.2&#12288;浏览器兼容性 74
                                    <br>2.11.3&#12288;属性选择器的使用方法详解 75
                                    <br>2.11.4&#12288;实战体验：创建个性化链接样式 81
                                    <br>2.12&#12288;本章小结 84
                                    <br>第3章&#12288;CSS3边框 85
                                    <br>3.1&#12288;CSS3边框简介 85
                                    <br>3.1.1&#12288;边框的基本属性 85
                                    <br>3.1.2&#12288;边框的类型 86
                                    <br>3.1.3&#12288;谁在使用CSS3边框 88
                                    <br>3.2&#12288;CSS3边框颜色属性 88
                                    <br>3.2.1&#12288;border-color属性的语法及参数 88
                                    <br>3.2.2&#12288;浏览器兼容性 90
                                    <br>3.2.3&#12288;border-color属性的优势 90
                                    <br>3.2.4&#12288;实战体验：立体渐变边框效果 91
                                    <br>3.3&#12288;CSS3图片边框属性 91
                                    <br>3.3.1&#12288;border-image属性的语法及参数 92
                                    <br>3.3.2&#12288;border-image属性使用方法 92
                                    <br>3.3.3&#12288;浏览器兼容性 99
                                    <br>3.3.4&#12288;border-image属性的优势 100
                                    <br>3.3.5&#12288;实战体验：按钮圆角阴影效果 100
                                    <br>3.4&#12288;CSS3圆角边框属性 105
                                    <br>3.4.1&#12288;border-radius属性的语法及参数 105
                                    <br>3.4.2&#12288;border-radius属性使用方法 107
                                    <br>3.4.3&#12288;浏览器兼容性 114
                                    <br>3.4.4&#12288;border-radius属性的优势 115
                                    <br>3.4.5&#12288;实战体验：制作特殊图形 115
                                    <br>3.5&#12288;CSS3盒子阴影属性 118
                                    <br>3.5.1&#12288;box-shadow属性的语法及参数 118
                                    <br>3.5.2&#12288;box-shadow属性使用方法 119
                                    <br>3.5.3&#12288;浏览器兼容性 129
                                    <br>3.5.4&#12288;box-shadow属性的优势 130
                                    <br>3.5.5&#12288;实战体验：制作3D搜索表单 130
                                    <br>3.6&#12288;本章小结 133
                                    <br>第4章&#12288;CSS3背景 134
                                    <br>4.1&#12288;CSS3背景属性简介 134
                                    <br>4.1.1&#12288;背景的基本属性 134
                                    <br>4.1.2&#12288;与背景相关的新增属性 137
                                    <br>4.2&#12288; CSS3背景原点属性 137
                                    <br>4.2.1&#12288;background-origin属性的语法及参数 137
                                    <br>4.2.2&#12288;background-origin属性使用方法 138
                                    <br>4.2.3&#12288;浏览器兼容性 140
                                    <br>4.3&#12288;CSS3背景裁切属性 141
                                    <br>4.3.1&#12288;background-clip属性的语法及参数 141
                                    <br>4.3.2&#12288;background-clip属性使用方法 143
                                    <br>4.3.3&#12288;浏览器兼容性 147
                                    <br>4.4&#12288;CSS3背景尺寸属性 148
                                    <br>4.4.1&#12288;background-size属性的语法及参数 148
                                    <br>4.4.2&#12288;background-size属性使用方法 149
                                    <br>4.4.3&#12288;浏览器兼容性 152
                                    <br>4.4.4&#12288;实战体验：制作全屏背景 153
                                    <br>4.5&#12288;内联元素背景图像平铺循环方式 154
                                    <br>4.6&#12288;CSS3多背景属性 154
                                    <br>4.6.1&#12288;CSS3多背景语法及参数 155
                                    <br>4.6.2&#12288;CSS3多背景的优势 156
                                    <br>4.6.3&#12288;浏览器兼容性 156
                                    <br>4.6.4&#12288;实战体验：制作花边框 157
                                    <br>4.7&#12288;本章小结 159
                                    <br>第5章&#12288;CSS3文本 160
                                    <br>5.1&#12288;CSS3文本简介 160
                                    <br>5.2&#12288;CSS3文本阴影属性 161
                                    <br>5.2.1&#12288;text-shadow属性的语法及参数 162
                                    <br>5.2.2&#12288;浏览器兼容性 162
                                    <br>5.2.3&#12288;实战体验：制作立体文本 163
                                    <br>5.3&#12288;CSS3溢出文本属性 166
                                    <br>5.3.1&#12288;text-overflow属性的语法及参数 166
                                    <br>5.3.2&#12288;浏览器兼容性 166
                                    <br>5.3.3&#12288;text-overflow属性使用方法 167
                                    <br>5.3.4&#12288;实战体验：制作固定区域的博客列表 168
                                    <br>5.4&#12288;CSS3文本换行 170
                                    <br>5.4.1&#12288;word-wrap属性 170
                                    <br>5.4.2&#12288;word-break属性 173
                                    <br>5.4.3&#12288;white-space属性 177
                                    <br>5.4.4&#12288;文本换行技巧 179
                                    <br>5.4.5&#12288;文本换行技术对比 180
                                    <br>5.5&#12288;本章小结 180
                                    <br>☆第6章&#12288;CSS3颜色特性 181
                                    <br>6.1&#12288;网页中的色彩特性 181
                                    <br>6.1.1&#12288;网页色彩的表现原理 181
                                    <br>6.1.2&#12288;Web页面的安全色 182
                                    <br>6.1.3&#12288;色彩模式 183
                                    <br>6.2&#12288;CSS3透明属性 184
                                    <br>6.2.1&#12288;opacity属性的语法及参数 184
                                    <br>6.2.2&#12288;opacity浏览器兼容性 185
                                    <br>6.2.3&#12288;实战体验：制作透明过渡色块 185
                                    <br>6.3&#12288;CSS3颜色模式 187
                                    <br>6.3.1&#12288;RGBA颜色模式 187
                                    <br>6.3.2&#12288;HSL颜色模式 190
                                    <br>6.3.3&#12288;HSLA颜色模式 194
                                    <br>6.3.4&#12288;RGBA和HSLA颜色模式之间的选择 196
                                    <br>6.3.5&#12288;RGBA/HSLA的IE兼容方案 196
                                    <br>6.3.6&#12288;RGBA/HSLA滤镜格式 197
                                    <br>6.4&#12288;本章小结 197
                                    <br>第7章&#12288;CSS3盒模型 198
                                    <br>7.1&#12288;CSS盒模型简介 198
                                    <br>7.1.1&#12288;什么是盒模型 198
                                    <br>7.1.2&#12288;重置盒模型解析模式 199
                                    <br>7.2&#12288;CSS3盒模型属性 200
                                    <br>7.2.1&#12288;box-sizing属性的语法及参数 200
                                    <br>7.2.2&#12288;浏览器兼容性 201
                                    <br>7.2.3&#12288;实战体验：box-sizing拯救了布局 202
                                    <br>7.3&#12288;CSS3内容溢出属性 209
                                    <br>7.3.1&#12288;overflow-x和overflow-y属性的语法及参数 209
                                    <br>7.3.2&#12288;浏览器兼容性 209
                                    <br>7.4&#12288;CSS3自由缩放属性 210
                                    <br>7.4.1&#12288;resize属性的语法及参数 210
                                    <br>7.4.2&#12288;浏览器兼容性 210
                                    <br>7.4.3&#12288;实战体验：修改文本域随意调整大小的功能 210
                                    <br>7.5&#12288;CSS3外轮廓属性 211
                                    <br>7.5.1&#12288;outline属性的语法及参数 211
                                    <br>7.5.2&#12288;浏览器兼容性 212
                                    <br>7.5.3&#12288;outline和border的对比 212
                                    <br>7.5.4&#12288;实战体验：模仿边框效果 213
                                    <br>7.6&#12288;本章小结 213
                                    <br>第8章&#12288;CSS3伸缩布局盒模型 214
                                    <br>8.1&#12288;Flexbox模型基础知识 214
                                    <br>8.1.1&#12288;CSS中的布局模式 214
                                    <br>8.1.2&#12288;Flexbox模型的功能 215
                                    <br>8.1.3&#12288;Flexbox模型中的术语 215
                                    <br>8.1.4&#12288;Flexbox模型规范状态 218
                                    <br>8.1.5&#12288;Flexbox模型浏览器兼容性 218
                                    <br>8.1.6&#12288;Flexbox模型语法变更 219
                                    <br>8.2&#12288;旧版本Flexbox模型的基本使用 221
                                    <br>8.2.1&#12288;伸缩容器设置display 222
                                    <br>8.2.2&#12288;伸缩流方向box-orient 224
                                    <br>8.2.3&#12288;布局顺序box-direction 226
                                    <br>8.2.4&#12288;伸缩换行box-lines 229
                                    <br>8.2.5&#12288;主轴对齐box-pack 232
                                    <br>8.2.6&#12288;侧轴对齐box-align 237
                                    <br>8.2.7&#12288;伸缩性box-flex 242
                                    <br>8.2.8&#12288;显示顺序box-ordinal-group 246
                                    <br>8.2.9&#12288;实战体验：box制作自适应的三列等高布局 249
                                    <br>8.3&#12288;混合版本Flexbox模型的基本使用 253
                                    <br>8.3.1&#12288;伸缩容器设置display 253
                                    <br>8.3.2&#12288;伸缩流方向flex-direction 254
                                    <br>8.3.3&#12288;伸缩换行flex-wrap 257
                                    <br>8.3.4&#12288;伸缩流方向与换行flex-flow 259
                                    <br>8.3.5&#12288;主轴对齐flex-pack 259
                                    <br>8.3.6&#12288;侧轴对齐flex-align 262
                                    <br>8.3.7&#12288;堆栈伸缩行flex-line-pack 266
                                    <br>8.3.8&#12288;伸缩性flex 271
                                    <br>8.3.9&#12288;显示顺序flex-order 273
                                    <br>8.4&#12288;新版本Flexbox模型的基本使用 275
                                    <br>8.4.1&#12288;伸缩容器display 275
                                    <br>8.4.2&#12288;伸缩流方向flex-direction 276
                                    <br>8.4.3&#12288;伸缩换行flex-wrap 276
                                    <br>8.4.4&#12288;伸缩流方向与换行flex-flow 277
                                    <br>8.4.5&#12288;主轴对齐justify-content 277
                                    <br>8.4.6&#12288;侧轴对齐align-items和align-self 278
                                    <br>8.4.7&#12288;堆栈伸缩行align-content 280
                                    <br>8.4.8&#12288;伸缩性flex 281
                                    <br>8.4.9&#12288;显示顺序order 285
                                    <br>8.5&#12288;综合案例：跨浏览器的三列布局 288
                                    <br>8.6&#12288;本章小结 292
                                    <br>第9章&#12288;CSS3多列布局 293
                                    <br>9.1&#12288;CSS3多列布局简介 293
                                    <br>9.1.1&#12288;浏览器兼容性 293
                                    <br>9.1.2&#12288;CSS3多列布局的属性 294
                                    <br>9.2&#12288;CSS3多列布局基本属性 295
                                    <br>9.2.1&#12288;columns属性的语法及参数 295
                                    <br>9.2.2&#12288;浏览器兼容性 295
                                    <br>9.2.3&#12288;实战体验：Web页面的多列布局 296
                                    <br>9.3&#12288;CSS3多列布局列宽属性 297
                                    <br>9.3.1&#12288;column-width属性的语法及参数 297
                                    <br>9.3.2&#12288;实战体验：浏览器根据窗口宽度变化调整列数 298
                                    <br>9.4&#12288;CSS3多列布局列数属性 302
                                    <br>9.4.1&#12288;column-count属性的语法及参数 302
                                    <br>9.4.2&#12288;实战体验：显示固定列数 302
                                    <br>9.5&#12288;CSS3多列布局列间距属性 303
                                    <br>9.5.1&#12288;column-gap属性的语法及参数 304
                                    <br>9.5.2&#12288;实战体验：设置列间距 304
                                    <br>9.6&#12288;CSS3多列布局列边框样式属性 306
                                    <br>9.6.1&#12288;column-rule属性的语法及参数 306
                                    <br>9.6.2&#12288;实战体验：设置列边框 307
                                    <br>9.7&#12288;CSS3多列布局跨列属性 309
                                    <br>9.7.1&#12288;column-span属性的语法及参数 310
                                    <br>9.7.2&#12288;实战体验：文章标题跨列显示 310
                                    <br>9.8&#12288;CSS3多列布局列高度属性 311
                                    <br>9.9&#12288;本章小结 311
                                    <br>☆第10章&#12288;CSS3渐变 312
                                    <br>10.1&#12288;CSS3渐变简介 312
                                    <br>10.1.1&#12288;什么是色标 312
                                    <br>10.1.2&#12288;浏览器兼容性 313
                                    <br>10.2&#12288;CSS3线性渐变 314
                                    <br>10.2.1&#12288;CSS3线性渐变语法与参数 315
                                    <br>10.2.2&#12288;CSS3 线性渐变的基本用法 317
                                    <br>10.2.3&#12288;自定义CSS3线性渐变 324
                                    <br>10.2.4&#12288;实战体验：CSS3制作渐变按钮 325
                                    <br>10.3&#12288;CSS3径向渐变 333
                                    <br>10.3.1&#12288;CSS3径向渐变语法 333
                                    <br>10.3.2&#12288;CSS3径向渐变的属性参数 334
                                    <br>10.3.3&#12288;CSS3径向渐变的基本用法 335
                                    <br>10.3.4&#12288;实战体验：CSS3径向渐变制作圆形图标按钮 350
                                    <br>10.4&#12288;CSS3重复渐变 353
                                    <br>10.4.1&#12288;CSS3重复线性渐变 353
                                    <br>10.4.2&#12288;CSS3重复径向渐变 354
                                    <br>10.4.3&#12288;实战体验：制作记事本纸张效果 354
                                    <br>10.5&#12288;综合案例：CSS3渐变制作纹理背景 355
                                    <br>10.6&#12288;本章小结 357
                                    <br>第11章&#12288;CSS3变形 358
                                    <br>11.1&#12288;CSS3变形简介 358
                                    <br>11.1.1&#12288;CSS变形属性及函数 358
                                    <br>11.1.2&#12288;浏览器兼容性 359
                                    <br>11.2&#12288;CSS变形属性详解 360
                                    <br>11.2.1&#12288;transform属性 360
                                    <br>11.2.2&#12288;transform-origin属性 363
                                    <br>11.2.3&#12288;transform-style属性 370
                                    <br>11.2.4&#12288;perspective属性 372
                                    <br>11.2.5&#12288;perspective-origin属性 377
                                    <br>11.2.6&#12288;backface-visibility属性 380
                                    <br>11.3&#12288;CSS3 2D变形 385
                                    <br>11.3.1&#12288;2D位移 385
                                    <br>11.3.2&#12288;2D缩放 390
                                    <br>11.3.3&#12288;2D旋转 394
                                    <br>11.3.4&#12288;2D倾斜 396
                                    <br>11.3.5&#12288;2D矩阵 398
                                    <br>11.4&#12288;CSS3 3D变形 403
                                    <br>11.4.1&#12288;3D位移 404
                                    <br>11.4.2&#12288;3D缩放 406
                                    <br>11.4.3&#12288;3D旋转 407
                                    <br>11.4.4&#12288;3D矩阵 409
                                    <br>11.5&#12288;多重变形 410
                                    <br>11.5.1&#12288;2D多重变形制作立方体 410
                                    <br>11.5.2&#12288;3D多重变形制作立方体 412
                                    <br>11.6&#12288;综合案例：3D变形制作产品信息展示 413
                                    <br>11.7&#12288;本章小结 416
                                    <br>☆第12章&#12288;CSS3过渡 417
                                    <br>12.1&#12288;CSS3过渡简介 417
                                    <br>12.1.1&#12288;如何创建简单的过渡 417
                                    <br>12.1.2&#12288;浏览器兼容性 418
                                    <br>12.1.3&#12288;CSS3过渡属性 418
                                    <br>12.2&#12288;CSS3过渡子属性详解 420
                                    <br>12.2.1&#12288;指定过渡属性transition-property 421
                                    <br>12.2.2&#12288;指定过渡所需时间transition-duration 423
                                    <br>12.2.3&#12288;指定过渡函数transition-timing-function 425
                                    <br>12.2.4&#12288;指定过渡延迟时间transition-delay 431
                                    <br>12.2.5&#12288;多个CSS3过渡效果 433
                                    <br>12.3&#12288;CSS3触发过渡 434
                                    <br>12.3.1&#12288;伪元素触发 434
                                    <br>12.3.2&#12288;媒体查询触发 436
                                    <br>12.3.3&#12288;JavaScript触发 436
                                    <br>12.4&#12288;CSS3过渡技巧 437
                                    <br>12.4.1&#12288;一个完整的过渡 437
                                    <br>12.4.2&#12288;可过渡的属性 438
                                    <br>12.4.3&#12288;优先的过渡属性 439
                                    <br>12.4.4&#12288;过渡的开始和结束为auto 439
                                    <br>12.4.5&#12288;隐式过渡 439
                                    <br>12.4.6&#12288;开关状态的不同过渡方式 440
                                    <br>12.4.7&#12288;几乎无限延迟的过渡 441
                                    <br>12.4.8&#12288;通过硬件加速过渡更加流畅 441
                                    <br>12.4.9&#12288;过渡和伪元素 442
                                    <br>12.5&#12288;综合案例：纯CSS3制作CSS Dock导航效果 443
                                    <br>12.6&#12288;本章小结 449
                                    <br>第13章&#12288;CSS3动画 450
                                    <br>13.1&#12288;CSS3动画简介 450
                                    <br>13.1.1&#12288;浏览器兼容性 450
                                    <br>13.1.2&#12288;CSS3动画属性 451
                                    <br>13.2&#12288;关键帧 452
                                    <br>13.2.1&#12288;@keyframes的作用 452
                                    <br>13.2.2&#12288;@keyframes的语法 453
                                    <br>13.2.3&#12288;浏览器兼容性 454
                                    <br>13.3&#12288;CSS中为元素应用动画 454
                                    <br>13.3.1&#12288;使用@keyframes声明动画 454
                                    <br>13.3.2&#12288;调用@keyframes声明的动画 456
                                    <br>13.4&#12288;CSS3动画子属性详解 457
                                    <br>13.4.1&#12288;调用动画animation-name 457
                                    <br>13.4.2&#12288;设置动画播放时间animation-duration 458
                                    <br>13.4.3&#12288;设置动画播放方式animation-timing-function 458
                                    <br>13.4.4&#12288;设置动画开始播放的时间animation-delay 458
                                    <br>13.4.5&#12288;设置动画播放次数animation-iteration-count 458
                                    <br>13.4.6&#12288;设置动画播放方向animation-direction 458
                                    <br>13.4.7&#12288;设置动画的播放状态animation-play-state 459
                                    <br>13.4.8&#12288;设置动画时间外属性animation-fill-mode 459
                                    <br>13.5&#12288;综合案例：全屏Slidershow效果 459
                                    <br>13.6&#12288;本章小结 464
                                    <br>第14章&#12288;媒体特性与Responsive设计 465
                                    <br>14.1&#12288;媒体类型 465
                                    <br>14.1.1&#12288;Media Type设备类型 465
                                    <br>14.1.2&#12288;媒体类型引用方法 466
                                    <br>14.2&#12288;媒体特性 467
                                    <br>14.2.1&#12288;Media Query和CSS属性集合 467
                                    <br>14.2.2&#12288;常用Media Query设备特性 468
                                    <br>14.2.3&#12288;浏览器兼容性 468
                                    <br>14.2.4&#12288;Media Query使用方法 468
                                    <br>14.3&#12288;Responsive布局概念 470
                                    <br>14.3.1&#12288;Responsive设计特点 471
                                    <br>14.3.2&#12288;Responsive中的术语 471
                                    <br>14.3.3&#12288;Responsive布局技巧 473
                                    <br>14.3.4&#12288;meta标签 474
                                    <br>14.4&#12288;本章小结 475
                                    <br>第15章&#12288;嵌入Web字体 476
                                    <br>15.1&#12288;@font-face模块介绍 476
                                    <br>15.1.1&#12288;浏览器兼容性 476
                                    <br>15.1.2&#12288;@font-face语法 477
                                    <br>15.1.3&#12288;使用字体图标的优势 477
                                    <br>15.2&#12288;实现@font-face 478
                                    <br>15.2.1&#12288;使用@font-face自定义字体 478
                                    <br>15.2.2&#12288;声明字体来源 479
                                    <br>15.2.3&#12288;创建各种字体 481
                                    <br>15.2.4&#12288;调用字体 483
                                    <br>15.3&#12288;综合案例：将图标转换成Web字体 483
                                    <br>15.3.1&#12288;创建一个图标字体 483
                                    <br>15.3.2&#12288;准备插图 484
                                    <br>15.3.3&#12288;导入到IcoMoon 485
                                    <br>15.3.4&#12288;从IcoMoon中导出字体 485
                                    <br>15.3.5&#12288;下载字体文件 485
                                    <br>15.3.6&#12288;调用字体 486
                                    <br>15.4&#12288;本章小结 486
                                    <br>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="hr40"></div>
                    <img src="../image/detail/css04.png">
                </div>
            </div>
        </div>
        <!-- /商品详细说明下部 -->
        <!-- 时代服务 -->
        <div id="service-2014" clstag="h|keycount|2015|32a">
            <div class="slogen clear">
                <span class="item fore1">
                    <i></i><b>多</b>品类齐全，轻松购物
                </span>
                <span class="item fore2">
                    <i></i><b>快</b>多仓直发，极速配送
                </span>
                <span class="item fore3">
                    <i></i><b>好</b>正品行货，精致服务
                </span>
                <span class="item fore4">
                    <i></i><b>省</b>天天低价，畅选无忧
                </span>
            </div>
            <div class="w wrap clear">
                <dl class="fore1">
                    <dt>购物指南</dt>
                    <dd>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-29.html">购物流程</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-151.html">会员介绍</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-297.html">生活旅行/团购</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue.html">常见问题</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-136.html">大家电</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/index.html">联系客服</a></div>
                    </dd>
                </dl>
                <dl class="fore2">
                    <dt>配送方式</dt>
                    <dd>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-81-100.html">上门自提</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-81.html">211限时达</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/103-983.html">配送服务查询</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/109-188.html">配送费收取标准</a></div>
                        <div><a target="_blank" href="http://en.jd.com/chinese.html">海外配送</a></div>
                    </dd>
                </dl>
                <dl class="fore3">
                    <dt>支付方式</dt>
                    <dd>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-172.html">货到付款</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-173.html">在线支付</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-176.html">分期付款</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-174.html">邮局汇款</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-175.html">公司转账</a></div>
                    </dd>
                </dl>
                <dl class="fore4">
                    <dt>售后服务</dt>
                    <dd>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/321-981.html">售后政策</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-132.html">价格保护</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/130-978.html">退款说明</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://myjd.jd.com/repair/repairs.action">返修/退换货</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://help.jd.com/user/issue/list-50.html">取消订单</a></div>
                    </dd>
                </dl>
                <dl class="fore5">
                    <dt>特色服务</dt>
                    <dd>
                        <div><a target="_blank" href="http://help.jd.com/user/issue/list-133.html">夺宝岛</a></div>
                        <div><a target="_blank" href="http://help.jd.com/user/issue/list-134.html">DIY装机</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://fuwu.jd.com/">延保服务</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://giftcard.jd.com/market/index.action">时代E卡</a></div>
                        <div><a rel="nofollow" target="_blank" href="http://mobile.jd.com/">时代通信</a></div>
                    </dd>
                </dl>
                <div id="coverage">
                    <div class="dt">
                        时代自营覆盖区县
                    </div>
                    <div class="dd">
                        <p>时代已向全国2050个区县提供自营配送服务，支持货到付款、POS机刷卡和售后上门服务。</p>
                        <p class="ar"><a target="_blank" href="http://help.jd.com/user/issue/103-983.html">查看详情&nbsp;&gt;</a></p>
                    </div>
                </div>
                <span class="clr"></span>
            </div>
        </div>
        <!-- /时代服务 -->
        <!-- 页尾链接和版权信息 -->
        <div id="footer" class="">
            <div class="footer_nav">
                <a href="" target="_blank" rel="nofollow">公司简介</a>
                <span class="sep">|</span>
                <a href="" target="_blank">合作关系</a>
                <span class="sep">|</span>
                <a href="" target="_blank" rel="nofollow">诚征英才</a>
                <span class="sep">|</span>
                <a href="" target="_blank">网站联盟</a>
                <span class="sep">|</span>
                <a href="" target="_blank">广告服务</a>
                <span class="sep">|</span>
                <a href="" target="_blank">时代招商</a>
                <span class="sep">|</span>
                <a href="" target="_blank" rel="nofollow">机构销售</a>
                <span class="sep">|</span>
                <a href="" target="_blank">手机时代</a>
                <span class="sep">|</span>
                <a href="">官方Blog</a>
            </div>
            <p class="padt10 textc cor2 lh20">
                <a class="disin padlr10" href="" target="_blank">时代图书在线</a>
                <a class="disin padlr10" href="" target="_blank">当当网</a>
                <a class="disin padlr10" href="" target="_blank">亚马逊</a>
                <span class="dinin padlr5">|</span>
                <a class="disin padlr10" href="">微博微信</a>
                <a class="disin padlr10" href="">天猫旗舰店</a>
                <a class="disin padlr10" href="" target="_blank">极客学院</a>
                <a class="disin padlr10" href="" target="_blank">湖北省.武汉市</a>
                <a class="disin padlr10" href="" target="_blank">电子商务 kay chen</a>
            </p>
            <p class="padt10 textc cor2 lh20">版权所有&nbsp;&copy;&nbsp;武汉科技大学&nbsp;&nbsp;地址:洪山区黄家湖3号&nbsp;&nbsp;邮编:430063&nbsp;&nbsp;鄂ICP备&nbsp;05064445号&nbsp;鄂公网安备110402430070
            </p>
            <small class="ft_pic_link" id="footerbanner2LazyLoad">
                    <a rel="nofollow" target="_blank" href="https://online.unionpay.com/?tp=15.35979875.20.0.22.Kqsb84y-10-DHf4`">
                        <img alt="" src="../image/copyright/01.jpg" height="31" width="90">
                    </a>
                    |
                    <a rel="nofollow" target="_blank" href="http://creditcard.pingan.com/index.shtml">
                        <img alt="" src="../image/copyright/02.jpg">
                    </a>
                    |
                    <a rel="nofollow">
                        <img alt="" src="../image/copyright/01.jpg">
                    </a>
                    |
                    <a rel="nofollow" target="_blank" href="http://www.zx110.org/">
                        <img alt="" src="../image/copyright/03.jpg">
                    </a>
                    |
                    <a rel="nofollow" target="_blank" href="http://www.shodr.org/">
                        <img alt="" src="../image/copyright/04.jpg">
                    </a>
                    |
                    <a rel="nofollow" target="_blank" href="http://net.china.com.cn/index.htm">
                        <img alt="" src="../image/copyright/05.gif">
                    </a>
                    |
                    <a rel="nofollow" target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e13050631010040492h5mq000000&amp;ct=df&amp;a=1&amp;pa=500267">
                        <img alt="" src="../image/copyright/07.jpg">
                    </a>
                    |
                    <a rel="nofollow" target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e13050631010040492h5mq000000&amp;ct=df&amp;a=1&amp;pa=500267">
                        <img alt="" src="../image/copyright/08.png">
                    </a>
                    |
                </small>
        </div>
        <!-- /页尾链接和版权信息 -->
        <script src="../js/jquery-1.4.2.min.js"></script>
        <script src="../js/imgTab.js"></script>
    </body>

</html>

