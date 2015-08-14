<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="mybean.data.Login" %>
<%@ page import="java.util.*;" %>
<jsp:useBean id="loginBean" class="mybean.data.Login" scope="session"/>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>购物车 || 时代图书在线</title>
    <meta name="description" content="时代图书在线，是由武汉科技大学电子商务专业 陈凯 开发，该项目用于图书管理，现在阅读及销售，功能还在不断完善中！">
    <meta name="keywords" content="时代图书在线 | 陈凯 | 武汉科技大学">
    <link rel="shortcut icon" href="../image/icon/litIcon.ico">
    <link href="../css/reset.css" rel="stylesheet" type="text/css" />
    <link href="../css/page_car.css" rel="stylesheet" type="text/css" />
    <link href="../css/page.css" rel="stylesheet" type="text/css" />
    <script src="../js/jquey-1.8.0.min.js"></script>
</head>

<body>
    <!-- 顶部导航 -->
    <div id="top">
        <div class="car_wrap clear">
            <div class="welcome fl">
                <span class="cor3">欢迎光临时代，请
                    <a target="_self" href="login.jsp" title="请登录网站"style="color:#FF2832;" >登录</a>
                    <a target="_self" href="inputRegisterMess.jsp" title="免费注册时代账户">免费注册</a>
                </span>
            </div>
            <div class="topRight fr clear">
                <ul class="leftNav fl">
                    <li>
                        <a class="padl10" title="查看购物车" name="购物车" href="lookShoppingCar.jsp">购物车</a>
                        <span class="sep">|</span>
                    </li>
                    <li class="myOrder">
                        <a title="查看我的订单" name="我的订单" href="lookOrderForm.jsp" target="_blank">我的订单</a><i class="myLibIcon"></i>
                        <span class="sep">|</span></li>
                    <li class="myLib">
                        <a title="进入我的个人主页" name="我的当当" href="login.jsp" target="_blank">我的图书馆</a><i class="myLibIcon"></i>
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
    <!-- logo与进度反馈区域 -->
    <div id="logo_line" class="car_wrap clear">
        <div class="logo fl">
            <a href="index.jsp">
                <img src="../image/logo/logo7.png" alt="时代图书在线" title="欢迎进入当当图书在线">
            </a>
        </div>
        <div class="shopCar_tit fl">
            <h1>购物车</h1>
        </div>
        <div class="order_path order_path_1 ">
        </div>
    </div>
    <div class="car_hr"></div>
    <!-- /logo与进度反馈区域 -->
    <div class="content_show_wrapper">
        <div class="cart_notification cart_error" style="">
            <div class="message">
                <p></p>
            </div>
        </div>
        <div id="group_show">
            <div class="content_header clear">
                <div class="cart_timer_wrapper"> <i class="icon_small png"></i> <span class="cart_timer_counting"> 请在 <span class="cart_timer_text">14分51秒</span> 内去结账，并在下单后 <span class="pink">20</span> 分钟内完成支付 </span> <span class="cart_timer_out"> 已超过购物车商品保留时间，请尽快结算。 </span> [<a class="cart_timer_tip float_box" href="javascript:void(0)"> ? <div class="pop_box">  <span class="arrow_t_1"><span class="arrow_t_2"></span></span> <div class="timer_tip_text"> 由于商品库存有限，我们只能暂为您最多保存20分钟，<br>20分钟后购物车将被清空，请尽快结算订单。 </div> </div> </a>] </div>
                <div class="top_banner">
                    <ul class="header_icons">
                        <li> <span> <i class="icon_zhenpin header_icon png"></i> 真品防伪码 </span> </li>
                        <li> <span> <i class="icon_tuihuo header_icon png"></i> 30天无条件退货 </span> </li>
                        <li> <span> <i class="icon_baoyou header_icon png"></i> 美妆满2件或299元包邮 </span> </li>
                    </ul>
                </div>
                <div class="common_shippment"> <i class="icon_small icon_baoyou png">包邮</i> 时代发货商品满2件或299元包邮,新用户首单全场满39元包邮 </div>
            </div>
            <div class="groups_wrapper">
                <table class="cart_group_item  cart_group_item_product">
                    <thead>
                        <tr>
                            <th class="cart_overview">
                                <div class="cart_group_header">
                                    <input class="js_group_selector cart_group_selector" checked="checked" type="checkbox">
                                    <h2>时代在线发货</h2>
                                </div>
                            </th>
                            <th class="cart_price">时代价（元）</th>
                            <th class="cart_num">数量</th>
                            <th class="cart_total">小计（元）</th>
                            <th class="cart_option">操作</th>
                        </tr>
                    </thead>
                    <tbody class="hide">
                        <tr class="cart_item " hashid="d150603p892053zc" id="1057066_d150603p892053zc" product_id="892053" item_price="48.00" category_v3_3="18" brand_id="623" product_type="product">
                            <td valign="top">
                                <div class="cart_item_desc clear">
                                    <input class="js_item_selector cart_item_selector" data-item-key="1057066_d150603p892053zc" checked="'checked'/" type="checkbox">
                                    <div class="cart_item_desc_wrapper">
                                        <a class="cart_item_pic" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank"> <img src="../image/book/book_list4/list4_lit1.jpg" alt="世界那么大，我想去看看！"> <span class="sold_out_pic png"></span> </a> <a class="cart_item_link" title="世界那么大，我想去看看" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank">世界那么大，我想去看看！</a>
                                        <p class="sku_info">规格：<span class="cart_item_attribute">彩色</span>&nbsp; </p>
                                        <div class="sale_info clear">
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag gift JS_sale_tag" data-promo-type="gift"> 满赠 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99送109</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag reduce JS_sale_tag" data-promo-type="reduce"> 满减 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99减20</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_price">
                                    <p class="jumei_price">48.00</p>
                                    <p class="market_price">59.00</p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_num ">
                                    <div class="item_quantity_editer clear" data-item-key="1057066_d150603p892053zc"> <span class="decrease_one disabled ">-</span>
                                        <input class="item_quantity" value="1" type="text"> <span class="increase_one ">+</span> </div>
                                    <div class="item_shortage_tip"> </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_total">
                                    <p class="item_total_price">48.00</p>
                                    <p>省 <span class="item_saved_price">11.00</span></p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_option">
                                    <a class="icon_small delete_item png" data-item-key="1057066_d150603p892053zc" href="javascript:void(0)" title="删除"></a>
                                </div>
                                <script type="text/javascript">
                                $(".delete_item").click(function  () {
                                    $(".hide").hide();
                                })
                                </script>

                            </td>
                        </tr>
                    </tbody>
                    <tbody class="hide2">
                        <tr class="cart_item " hashid="d150603p892053zc" id="1057066_d150603p892053zc" product_id="892053" item_price="32.00" category_v3_3="18" brand_id="623" product_type="product">
                            <td valign="top">
                                <div class="cart_item_desc clear">
                                    <input class="js_item_selector cart_item_selector" data-item-key="1057066_d150603p892053zc" checked="'checked'/" type="checkbox">
                                    <div class="cart_item_desc_wrapper">
                                        <a class="cart_item_pic" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank"> <img src="../image/book/book_list2/list2_lit1.jpg" alt="傲慢与偏见"> <span class="sold_out_pic png"></span> </a> <a class="cart_item_link" title="傲慢与偏见" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank">傲慢与偏见（精包装）</a>
                                        <p class="sku_info"> 规格：<span class="cart_item_attribute">彩色</span>&nbsp; </p>
                                        <div class="sale_info clear">
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag gift JS_sale_tag" data-promo-type="gift"> 满赠 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99送109</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag reduce JS_sale_tag" data-promo-type="reduce"> 满减 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99减20</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_price">
                                    <p class="jumei_price">32.00</p>
                                    <p class="market_price">45.00</p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_num ">
                                    <div class="item_quantity_editer clear" data-item-key="1057066_d150603p892053zc"> <span class="decrease_one disabled ">-</span>
                                        <input class="item_quantity" value="1" type="text"> <span class="increase_one ">+</span> </div>
                                    <div class="item_shortage_tip"> </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_total">
                                    <p class="item_total_price">32.00</p>
                                    <p>省 <span class="item_saved_price">13.00</span></p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_option">
                                    <a class="icon_small delete_item png" data-item-key="1057066_d150603p892053zc" href="javascript:void(0)" title="删除"></a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr class="cart_item " hashid="d150603p892053zc" id="1057066_d150603p892053zc" product_id="892053" item_price="34.00" category_v3_3="18" brand_id="623" product_type="product">
                            <td valign="top">
                                <div class="cart_item_desc clear">
                                    <input class="js_item_selector cart_item_selector" data-item-key="1057066_d150603p892053zc" checked="'checked'/" type="checkbox">
                                    <div class="cart_item_desc_wrapper">
                                        <a class="cart_item_pic" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank"> <img src="../image/book/book_list1/list1_lit1.jpg" alt="平凡的世界"> <span class="sold_out_pic png"></span> </a> <a class="cart_item_link" title="平凡的世界" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank">平凡的世界</a>
                                        <p class="sku_info"> 规格：<span class="cart_item_attribute">彩色</span>&nbsp; </p>
                                        <div class="sale_info clear">
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag gift JS_sale_tag" data-promo-type="gift"> 满赠 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99送109</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag reduce JS_sale_tag" data-promo-type="reduce"> 满减 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99减20</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_price">
                                    <p class="jumei_price">34.00</p>
                                    <p class="market_price">38.00</p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_num ">
                                    <div class="item_quantity_editer clear" data-item-key="1057066_d150603p892053zc"> <span class="decrease_one disabled ">-</span>
                                        <input class="item_quantity" value="1" type="text"> <span class="increase_one ">+</span> </div>
                                    <div class="item_shortage_tip"> </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_total">
                                    <p class="item_total_price">34.00</p>
                                    <p>省 <span class="item_saved_price">4.00</span></p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_option">
                                    <a class="icon_small delete_item png" data-item-key="1057066_d150603p892053zc" href="javascript:void(0)" title="删除"></a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                    <tbody>
                        <tr class="cart_item " hashid="d150603p892053zc" id="1057066_d150603p892053zc" product_id="892053" item_price="48.00" category_v3_3="18" brand_id="623" product_type="product">
                            <td valign="top">
                                <div class="cart_item_desc clear">
                                    <input class="js_item_selector cart_item_selector" data-item-key="1057066_d150603p892053zc" checked="'checked'/" type="checkbox">
                                    <div class="cart_item_desc_wrapper">
                                        <a class="cart_item_pic" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank"> <img src="../image/book/book_list7/list7_lit1.jpg" alt="有一个地方我们知道"> <span class="sold_out_pic png"></span> </a> <a class="cart_item_link" title="有一个地方我们知道" href="http://sh.jumei.com/i/deal/d150603p892053zc.html" target="_blank">有一个地方我们知道</a>
                                        <p class="sku_info"> 规格：<span class="cart_item_attribute">彩色</span>&nbsp; </p>
                                        <div class="sale_info clear">
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag gift JS_sale_tag" data-promo-type="gift"> 满赠 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99送109</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tips_pop_full float_box JS_tips_pop_full">
                                                <div> <a class="sale_tag reduce JS_sale_tag" data-promo-type="reduce"> 满减 <i class="icon_small png"></i> </a> </div>
                                                <div class="pop_box JS_pop_box">
                                                    <div><span class="arrow_t_1"><span class="arrow_t_2"></span></span>
                                                    </div>
                                                    <div>
                                                        <a class="clear promo_sale_item promo_has_url" target="_blank" href="http://hd.jumei.com/act/4-3-6035-ppt_maybelline_150603.html"> <span class="title">时代图书团满99减20</span> <span class="tips">查看活动</span> </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_price">
                                    <p class="jumei_price">27.00</p>
                                    <p class="market_price">39.00</p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_num ">
                                    <div class="item_quantity_editer clear" data-item-key="1057066_d150603p892053zc"> <span class="decrease_one disabled ">-</span>
                                        <input class="item_quantity" value="1" type="text"> <span class="increase_one ">+</span> </div>
                                    <div class="item_shortage_tip"> </div>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_total">
                                    <p class="item_total_price">27.00</p>
                                    <p>省 <span class="item_saved_price">12.00</span></p>
                                </div>
                            </td>
                            <td>
                                <div class="cart_item_option">
                                    <a class="icon_small delete_item png" data-item-key="1057066_d150603p892053zc" href="javascript:void(0)" title="删除"></a>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="5"> 商品金额： <span class="group_total_price">￥141.00</span> </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <div class="common_handler_anchor"></div>
            <div class="common_handler">
                <div class="right_handler"> 共 <span class="total_amount"> 1 </span> &nbsp;件商品 &nbsp;&nbsp; 商品应付总额：<span class="total_price">￥141.00</span> <a id="go_to_order" class="btn" href="lookOrderForm.jsp">去结算</a> </div>
                <label for="js_all_selector" class="cart_all_selector_wrapper">
                    <input id="js_all_selector" class="js_all_selector all_selector" type="checkbox"> 全选 </label> <a class="go_back_shopping" href="http://sh.jumei.com/i/deal/d150603p892053zc.html">继续购物</a> <span class="seperate_line">|</span> <a class="clear_cart_all" href="">清空选中商品</a>
                <form id="form_to_order" action="" method="post" style="display: none;">
                    <input name="items_key" type="hidden"> </form>
            </div>
            <div class="content_footer clear">
                <div class="cart_timer_wrapper"> <i class="icon_small png"></i> <span class="cart_timer_counting"> 请在 <span class="cart_timer_text">14分51秒</span> 内去结账，并在下单后 <span class="pink">20</span> 分钟内完成支付 </span> <span class="cart_timer_out"> 已超过购物车商品保留时间，请尽快结算。 </span> [<a class="cart_timer_tip float_box" href="javascript:void(0)"> ? <div class="pop_box">  <span class="arrow_t_1"><span class="arrow_t_2"></span></span> <div class="timer_tip_text"> 由于商品库存有限，我们只能暂为您最多保存20分钟，<br>20分钟后购物车将被清空，请尽快结算订单。 </div> </div> </a>] </div>
            </div>
        </div>
        <div id="cart_side_nav">
            <a href="javascript:void(0)"></a>
        </div>
    </div>
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
