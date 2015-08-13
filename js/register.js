var msg = new Array();
msg[0] = "(*必填)邮箱/手机号码为用户名,并用于找回密码,接收订单通知等服务";
msg[1] = "<span class=\"icon\"></span>此手机号已注册,请更换其它手机号,或使用该<a href=\"signin.php?Email={#Email#}\" name=\"mobile_login _link\" class=\"more\">手机号登录</a>";
msg[2] = "<span class=\"icon\"></span>邮箱/手机格式不正确,请重新输入";
msg[3] = "<span class=\"icon\"></span>该邮箱已被注册,请更换其它邮箱,或使用该<a href=\"signin.php?Email={#Email#}\" name=\"email_login_link\" class=\"more\">邮箱登录</a>";
msg[4] = "<span class=\"icon\"></span>您的短信发送次数超过上限,请明天再试";
msg[5] = "<span class=\"icon\"></span>抱歉,您必须同意当当网的服务条款后,才能提交注册。";
msg[6] = "<span class=\"icon\"></span>邮箱/手机号码不能为空";
msg[7] = "(*必填)密码为6-20个字符,可由英文、数字及符号组成";
msg[8] = "<span class=\"icon\"></span>登录密码不能为空";
msg[9] = "<span class=\"icon\"></span>密码长度6-20个字符,请重新输入";
msg[10] = "(*必填)请再次输入密码";
msg[11] = "<span class=\"icon\"></span>两次输入的密码不一致,请重新输入";
msg[12] = "<span class=\"icon\"></span>密码不能为空";
msg[13] = "<span class=\"icon\"></span>密码不能包含“空格”,请重新输入";
msg[14] = "<span class=\"icon\"></span>图形验证码错误";
msg[15] = "<span class=\"icon\"></span>验证码错误";
msg[16] = "请填写正确的收货地址，以便我们及时发货";
msg[17] = "还是没有收到短信？请检查您的手机明天再试";
msg[18] = "验证码已经发送到您的手机上";
msg[19] = "<span class=\"icon\"></span>网络繁忙,请稍后重新点击“注册”按钮重试。";
msg[20] = "<span class=\"icon\"></span>请输入图形验证码";
msg[21] = "重新获取验证码";
msg[22] = "<span class=\"icon\"></span>请输入验证码";
msg[23] =  "<span class=\"icon\"></span>密码为6-20位字符,只能由英文、数字及符号组成";

var checkEmail = false;
var checkpassword = false;
var checkRepassword = false;
var VerifyCode = false;
var checkpop_sms_vcode = false;
var checkpop_vcode = false;
var selectdomin=-1;
var showTimer=5000;
var show_t="";


function show_vcode(img_id) {
    $('#' + img_id).attr('src', 'p/tmp_proxy.php?t=' + new Date().getTime());
}

function show_error(err_code) {
    switch (err_code) {
        case 0:
            break;
        case 1:
            $('#txt_vcode').val('');
            $('#txt_vcode').attr('class', 'text wrong').css('border-color', '');
            $('#spn_vcode_ok').html('').attr('class', '');
            $('#spn_vcode_wrong').attr('class', 'cue');
            $('#spn_vcode_wrong').html(msg[14]);
            $('#spn_vcode_wrong').css({'display': ''});
            show_vcode('imgVcode');
            break;
        case 2:
            $('#txt_vcode').val('');
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[3].replace('{#Email#}', $('#txt_username').val()));
            $('#spn_username_wrong').css({'display': ''});
            break;
        case 3:
            $('#txt_vcode').val('');
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[2]);
            $('#spn_username_wrong').css({'display': ''});
            break;
        case 4:
            $('#txt_pop_vcode').val('');
            $('#txt_pop_vcode').attr('class', 'text wrong').css('border-color', '');
            $('#spn_pop_vcode_ok').hide();
            $('#p_pop_vcode_wrong').attr('class', 'cue');
            $('#p_pop_vcode_wrong').html(msg[14]);
            $('#p_pop_vcode_wrong').css({'display': ''});
            show_vcode('popImgVcode');
            break;
        case 5:
            $('#div_mask_cover').css({'display': 'none'});
            $('#div_identity_verification').css({'display': 'none'});
            $('#txt_pop_sms_vcode').val('');
            $('#txt_pop_vcode').val('');
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[2]);
            $('#spn_username_wrong').css({'display': ''});
            break;
        case 6:
            $('#txt_pop_sms_vcode').val('');
            $('#txt_pop_vcode').val('');
            $('#txt_pop_sms_vcode').attr('class', 'text wrong').css('border-color', '');
            $('#spn_pop_sms_vcode_ok').hide();
            $('#p_pop_sms_vcode_wrong').addClass('cue');
            $('#p_pop_sms_vcode_wrong').html(msg[15]);
            $('#p_pop_sms_vcode_wrong').css({'display': ''});
            show_vcode('popImgVcode');
            break;
        case 7:
            $('#div_mask_cover').css({'display': 'none'});
            $('#div_identity_verification').css({'display': 'none'});
            $('#txt_pop_sms_vcode').val('');
            $('#txt_pop_vcode').val('');
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[1].replace('{#Email#}', $('#txt_username').val()));
            $('#spn_username_wrong').css({'display': ''});
            break;
        case 8:
            $('#div_mask_cover').css({'display': 'none'});
            $('#div_identity_verification').css({'display': 'none'});
            $('#txt_pop_sms_vcode').val('');
            $('#txt_pop_vcode').val('');
            $('#txt_vcode').val('');
            $('#spn_err_msg').html(msg[19]);
            $('#spn_err_msg').css({'display': ''});
            break;
        case 9:
            $('#txt_vcode').val('');
            $('#txt_password').attr('class', 'text wrong').css('border-color', '');
            $('#spn_password_ok').hide();
            $('#spn_password_wrong').attr('class', 'cue');
            $('#spn_password_wrong').html(msg[9]);
            $('#spn_password_wrong').css({'display': ''});
            break;
        case 10:
            $('#txt_vcode').val('');
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[4]);
            $('#spn_username_wrong').css({'display': ''});
            break;
        case 11:
            $('#txt_vcode').val('');
            $('#spn_err_msg').html(msg[19]);
            $('#spn_err_msg').css({'display': ''});
            break;
        default:
            break;
    }
}

function check_focus(txtid, spn_ok, spn_wrong) {
    $(txtid).attr('class', 'text').css('border-color', '#FF8E42');
    $(spn_ok).hide();
    $(spn_wrong).attr('class', 'warn').css({'display': ''});
}

function  check_email_input(e){
  var inpmail = $.trim($("#txt_username").val());
  var maildomin = $("#select_emaildomain");
  if(inpmail == "" || inpmail.indexOf("@") ==0) {
    maildomin.css("display","none");
    $('#spn_username_ok').hide();
    return;
   }
  var e= window.event || e;
  var c = e.keyCode || e.which;
  if (c == 27) {
     maildomin.css("display","none");
     return ;
  }else {
    if (c >= 48 && c < 127 && inpmail != "") {
      if ((/^\w+((\.\w+)|(-\w+))*$/.test(inpmail))) {
         maildomin.css("display","block");
         $('#spn_username_ok').hide();
         maildomin.children().each(function() {
         var mailtxt = inpmail;
         $(this).html(mailtxt + jQuery(this).attr("domin"));
         $(this).attr("title",mailtxt + jQuery(this).attr("domin"));
         $(this).removeClass("hover_domain");
         });
       }else{
         if(/^\w+((\.\w+)|(-\w+))*\@$/.test(inpmail))
          {
              maildomin.css("display","block");
              $('#spn_username_ok').hide();
               maildomin.children().each(function() {
                  var mailtxt = inpmail;
                  if(jQuery(this).attr("domin")){
                       mailtxt = inpmail.substr(0,inpmail.length-1);
                  }
                  $(this).html(mailtxt + jQuery(this).attr("domin"));
                  $(this).attr("title",mailtxt + jQuery(this).attr("domin"));
                  $(this).removeClass("hover_domain");
               });
           }else{
                  maildomin.css("display","none");
            }
       }
       return  ;
    } else {
      if (c == 8) {
         $('#spn_username_ok').hide();
         if (inpmail == ""||(!/^\w+((\.\w+)|(-\w+))*$/.test(inpmail))) {
             maildomin.css("display","none");
         }else {
             maildomin.css("display","block");
             maildomin.children().each(function() {
             var mailtxt = $.trim($("#txt_username").val());
             $(this).html(mailtxt + jQuery(this).attr("domin"));
             $(this).attr("title",mailtxt + jQuery(this).attr("domin"));
             $(this).removeClass("hover_domain");
             });
          }
         return ;
      }
      domincount = maildomin.children().size();
      if (c == 40) {
          if (selectdomin < domincount) 
             selectdomin++;
          else 
             selectdomin = 0;
          maildomin.children().each(function(index) {
            if (index == selectdomin)
            $(this).addClass("hover_domain").siblings().removeClass("hover_domain");
         });
         return ;
      }
      if (c == 38) {
         if (selectdomin > 0)
             selectdomin--;
         else 
             selectdomin = domincount;
         maildomin.children().each(function(index) {
             if (index ==selectdomin)
             $(this).addClass("hover_domain").siblings().removeClass("hover_domain");
         });
         return ;
       }
      if (c == 13) {
         if($("#select_emaildomain").is(":visible")) {
            maildomin.children().each(function(index) {
            if (index == selectdomin)
            $("#txt_username").val($(this).attr("title"));
            });
            $("#select_emaildomain").css("display","none");
            selectdomin = 0;
            username_check();
          }
          return ;
       }
       $("#select_emaildomain").css("display","none");
        return ;
      }
   }
}

function check_capslock_open(e){
    var  e= window.event || e;
    var  n=e.keyCode || e.which;
    var  m=e.shiftKey||(n==16)||false;
    if (((n >= 65 && n <= 90) && !m) || ((n >= 97 && n <= 122 )&& m)) {
        $('#spn_password_wrong').css({'display': 'none'});
        $("#capslock_change").css("display","block");
    }
    else if(n >= 97 && n <= 122 && !m){
        $("#capslock_change").css("display","none");
    }
    else if(n==27){
        $("#capslock_change").css("display","none");
    }
}


function check_username_focus() {
    check_focus('#txt_username', '#spn_username_ok', '#spn_username_wrong');
    $('#spn_username_wrong').html(msg[0]);

}

function username_check() {    
    var username = $.trim($('#txt_username').val());
    $('#spn_username_ok').html('').hide();
    if($('#spn_username_wrong').attr("class")=="warn")
      $('#spn_username_wrong').html('').hide();
    $("#select_emaildomain").css("display","none");
    checkEmail = false;
    var usernameExist = false;
    if (username == '') {
        $('#spn_username_ok').hide();
        return false;
    }
    if (!/^\d+$/.test(username)) {          
        if (username.length > 40 || !/^\w+((\.\w+)|(-\w+))*\@[a-zA-Z0-9]+((\.|-)[a-zA-Z0-9]+)*\.[a-zA-Z0-9]+$/.test(username)) {
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[2]);
            $('#spn_username_wrong').css({'display': ''});
            return false;
        }
        if (/[ ]/.test(username)) {
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[2]);
            $('#spn_username_wrong').css({'display': ''});
            return false;
        }
        $.ajax({
            type: 'POST',
            url: 'p/email_checker.php',
            data: 'email=' + username,
            async: false,
            success: function (flg) {
                if (flg == "true") {
                    $('#txt_username').attr('class', 'text wrong').css('border-color', '');
                    $('#spn_username_ok').hide();
                    $('#spn_username_wrong').attr('class', 'cue');
                    $('#spn_username_wrong').html(msg[3].replace('{#Email#}', username));
                    $('#spn_username_wrong').css({'display': ''});
                    usernameExist = true;
                    return;
                }
            }
        });
    } else {
        if (!/^1[3,4,5,7,8][0-9]{9}$/.test(username)) {
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[2]);
            $('#spn_username_wrong').css({'display': ''});
            return false;
        }
        $.ajax({
            type: 'POST',
            url: 'p/mobile_checker.php',
            data: 'mobile=' + username,
            async: false,
            success: function (flg) {
                if (flg == "true") {
                    $('#txt_username').attr('class', 'text wrong').css('border-color', '');
                    $('#spn_username_ok').hide();
                    $('#spn_username_wrong').attr('class', 'cue');
                    $('#spn_username_wrong').html(msg[1].replace('{#Email#}', username));
                    $('#spn_username_wrong').css({'display': ''});
                    usernameExist = true;
                    return;
                }
            }
        });
    }
    if (usernameExist == true) {
        return false;
    }
    $('#txt_username').attr('class', 'text');
    $('#spn_username_wrong').hide();
    $('#spn_username_ok').html('');
    $('#spn_username_ok').attr('class', 'icon_yes');
    $('#spn_username_ok').css({'display': ''});
    checkEmail = true;
    return true;
}

function check_password_focus() {
    if($("#hid_txt_password").is(":visible")){
       hidden_visible_password();
       clearTimeout(show_t);
       $("#txt_password").focus();
    }else{
    check_focus('#txt_password', '#spn_password_ok', '#spn_password_wrong');
    $('#spn_password_wrong').html(msg[7]);
    $('#spnPwdStrongTips').hide();
    }
}


function password_check() {
    var password = $('#txt_password').val();
    $('#txt_password').attr('class', 'text');
    $('#spn_password_ok').hide();
    $('#spn_password_wrong').attr('class', 'warn');
    $('#spn_password_wrong').html(msg[7]);
    $('#spn_password_wrong').css({'display': ''});
    $("#capslock_change").css({'display': 'none'});
    checkpassword = false;
    if (password == '') {
        $('#spn_password_ok').hide();
        $('#spn_password_wrong').hide();
        $('#spnPwdStrongTips').hide();
        return false;
    }
    if (password.length < 6 || password.length > 20) {
        $('#txt_password').attr('class', 'text wrong').css('border-color', '');
        $('#spn_password_ok').hide();
        $('#spn_password_wrong').attr('class', 'cue');
        $('#spn_password_wrong').html(msg[9]);
        $('#spn_password_wrong').css({'display': ''});
        $('#spnPwdStrongTips').hide();
        return false;
    }
    if (!/^\S{1,20}$/.test(password)) {
        $('#txt_password').attr('class', 'text wrong').css('border-color', '');
        $('#spn_password_ok').hide();
        $('#spn_password_wrong').attr('class', 'cue');
        $('#spn_password_wrong').html(msg[13]);
        $('#spn_password_wrong').css({'display': ''});
        $('#spnPwdStrongTips').hide();
        return false;
    }
    
   for(var i=0;i<password.length;i++){
      if(password.charCodeAt(i)>127){
        $('#txt_password').attr('class', 'text wrong').css('border-color', '');
        $('#spn_password_ok').hide();
        $('#spn_password_wrong').attr('class', 'cue');
        $('#spn_password_wrong').html(msg[23]);
        $('#spn_password_wrong').css({'display': ''});
        $('#spnPwdStrongTips').hide();
        return false; 
        }
   }
     
    $('#txt_password').css("border-color","#7f9db9");
    $('#spn_password_wrong').hide();
    $('#spn_password_ok').hide();
    txtPassword_strong_check();
    checkpassword = true;
    return true;
}

function txtPassword_strong_check() {
    var password = $('#txt_password').val();
    var passwordTrim = $.trim(password);
    if (passwordTrim.length == 0) {
        $('#spnPwdStrongTips').css('display', 'none');
        $('#spn_password_wrong').html(msg[7]);
        $('#spn_password_wrong').css({'display': ''});
        return;
    }
    $('#spn_password_ok').hide();
    $('#spn_password_wrong').hide();
    $('#txt_password').attr('class', 'text');
    if (passwordTrim.length < 6) {
        $('#spnPwdStrong1').css('display', '');
        $('#spnPwdStrong2').hide();
        $('#spnPwdStrong3').hide();
        $('#spnPwdStrongTips').css('display', '');
        return;
    }
    
    if (passwordTrim.length > 20){    
        $('#txt_password').attr('class', 'text wrong').css('border-color', '');
        $('#spn_password_ok').hide();
        $('#spn_password_wrong').attr('class', 'cue');
        $('#spn_password_wrong').html(msg[9]);
        $('#spn_password_wrong').css({'display': ''});
        $("#capslock_change").css({'display': 'none'});
        $('#spnPwdStrongTips').hide();
        return false;
    }
    var chenum = checkStrong();
    if (chenum == 0) {
        return;
    } else if (chenum == 1) {
        $('#spnPwdStrong1').css('display', '');
        $('#spnPwdStrong2').hide();
        $('#spnPwdStrong3').hide();
    } else if (chenum == 2) {
        $('#spnPwdStrong1').hide();
        $('#spnPwdStrong2').css('display', '');
        $('#spnPwdStrong3').hide();
    } else if (chenum >= 3) {
        $('#spnPwdStrong1').hide();
        $('#spnPwdStrong2').hide();
        $('#spnPwdStrong3').css('display', '');
    }
    $('#spnPwdStrongTips').css('display', '');
    return;
}

function check_repassword_focus() {
    if($("#hid_txt_repassword").is(":visible")){
       hidden_visible_password();
       clearTimeout(show_t);
       $("#txt_repassword").focus();
       check_focus('#txt_repassword', '#spn_repassword_ok', '#spn_repassword_wrong');
       $('#txt_repassword').css("color","black");
       $('#spn_repassword_wrong').html(msg[10]);
    }else{
    check_focus('#txt_repassword', '#spn_repassword_ok', '#spn_repassword_wrong');
    $('#txt_repassword').css("color","black");
    $('#spn_repassword_wrong').html(msg[10]);
    }
}

function repassword_check() {
    if($('#spn_repassword_wrong').attr('class')=="cue")
     return ;
    var rep_password = $('#txt_repassword').val();
    $('#txt_repassword').attr('class', 'text');
    $('#spn_repassword_ok').hide();
    $('#spn_repassword_wrong').attr('class', 'warn');
    $('#spn_repassword_wrong').html(msg[7]);
    $('#spn_repassword_wrong').css({'display': ''});
    checkRepassword = false;
    if (rep_password == '') {
        $('#spn_repassword_ok').hide();
        $('#spn_repassword_wrong').hide();
        return false;
    }
    if (rep_password != $('#txt_password').val()) {
        var  p_password=$('#txt_password').val();
        var  k="false";l="false";
        var  j=1;
        for(var i=0;i<p_password.length;i++){
            if(p_password.charAt(i)!=rep_password.charAt(i) && i<p_password.length && l=="false"){
               j+=i;
               k="true";
               l="true";
            }          
        }
        if(k=="false")
        j=p_password.length+1;
        var errmind="第"+j+"位输入错误";
        var errhtml="<span class=\"icon\"></span><span id=\"pwrong_mind\">"+errmind+"</span><a id=\"a_show_pass\"  href=\"javascript:show_visible_password();\" class=\"show_pass\"   style=\"display:;\";>显示密码</a>";   
        $('#txt_repassword').attr('class', 'text wrong').css('border-color', '');
        $('#spn_repassword_ok').hide();
        $('#txt_repassword').css("color","red");
        $('#spn_repassword_wrong').attr('class', 'cue');
        $('#spn_repassword_wrong').html(errhtml);
        $('#spn_repassword_wrong').css({'display': ''});
        return false;
    }
    if (password_check()) {
        $('#spn_repassword_ok').css({'display': ''});
    } else {
        $('#spn_repassword_ok').hide();
    }
    $('#txt_repassword').css("border-color","#7f9db9");
    $('#spn_repassword_wrong').hide();
    $('#spn_repassword_ok').html('');
    $('#spn_repassword_ok').attr('class', 'icon_yes');
    checkRepassword = true;
    return true;
}

function repassword_session_check(){
     var password= $('#txt_password').val();
     var rep_password = $('#txt_repassword').val();
     var nLen=rep_password.length;
     if(nLen>0 &&  $('#spn_repassword_wrong').attr("class")!='cue'){
       for(var i=0 ;i<nLen;i++){
          if(password.charAt(i)!=rep_password.charAt(i)){ 
            var errBit=i+1;
            var errmind="第"+errBit+"位输入错误";
            var errhtml="<span class=\"icon\"></span><span id=\"pwrong_mind\">"+errmind+"</span><a id=\"a_show_pass\"  href=\"javascript:show_visible_password();\" class=\"show_pass\"   style=\"display:;\";>显示密码</a>";   
            $('#txt_repassword').attr('class', 'text wrong').css('border-color', '');
            $('#spn_repassword_ok').hide();
            $('#txt_repassword').css("color","red");
            $('#spn_repassword_wrong').attr('class', 'cue');
            $('#spn_repassword_wrong').html(errhtml);
            $('#spn_repassword_wrong').css({'display': ''});
            return false;
          }
       }
     }else if (nLen==0){
            check_focus('#txt_repassword', '#spn_repassword_ok', '#spn_repassword_wrong');
            $('#txt_repassword').css("color","black");
            $('#spn_repassword_wrong').html(msg[10]);
     }
     else 
     {    
           for(var i=0 ;i<nLen;i++){
                if(password.charAt(i)!=rep_password.charAt(i))
                 return  false;
           }

           $('#txt_repassword').css("color","black");
           $('#spn_repassword_wrong').html(msg[10]);
           $('#txt_repassword').attr('class', 'text').css('border-color', '#FF8E42');
           $('#spn_repassword_ok').hide();
           $('#spn_repassword_wrong').attr('class', 'warn').css({'display': ''});
    
     }
}


function  show_visible_password(){
     var v_password= $("#txt_password").val();
     var v_repassword=$("#txt_repassword").val();  
     $("#txt_password").css("display","none");
     $("#a_show_pass").css("display","none");
     $("#hid_txt_password").css("display","");
     $("#txt_repassword").css("display","none");
     $("#hid_txt_repassword").css("display","");
     $('#hid_txt_repassword').attr('class', 'text wrong').css('border-color', '');
     $("#hid_txt_password").val(v_password);
     $("#hid_txt_repassword").val(v_repassword);
      show_t=setTimeout(function() {
          hidden_visible_password();
     }, showTimer);
}

function  hidden_visible_password(){
     $("#hid_txt_password").css("display","none");
     $("#txt_password").css("display","");
     $("#hid_txt_repassword").css("display","none");
     $("#txt_repassword").css("display","");
     $("#a_show_pass").css("display","");
}


function check_vcode_focus() {
    check_focus('#txt_vcode', '#spn_vcode_ok', '#spn_vcode_wrong');
    $('#spn_vcode_ok').html('').attr('class', '').css({'display': ''});
    $('#spn_vcode_wrong').html(msg[16]);
}

function vcode_check() {
    // 判断是否显示了图形验证码
    if ($('#tb_tr_reg_vcode').css("display") == "none") {
        return true;
    }
    var vcode = $('#txt_vcode').val();
    $('#txt_vcode').attr('class', 'text');
    $('#spn_vcode_ok').html('').attr('class', '');
    $('#spn_vcode_wrong').html(msg[16]).attr('class', 'warn').css({'display': ''});
    VerifyCode = false;
    var vcodeIsWrong = false;
    if (vcode == '') {
        $('#spn_vcode_wrong').hide();
        return false;
    }
    if (!/\w{4}/.test(vcode)) {
        $('#txt_vcode').attr('class', 'text wrong').css('border-color', '');
        $('#spn_vcode_ok').html('').attr('class', '');
        $('#spn_vcode_wrong').attr('class', 'cue');
        $('#spn_vcode_wrong').html(msg[14]);
        $('#spn_vcode_wrong').css({'display': ''});
        return false;
    }
    var type=0;
    $.ajax({
        type: 'POST',
        url: 'p/vcode_check_new.php',
        data: 'vcode=' + vcode+'&type='+type,
        async: false,
        success: function (flg) {
            if (flg == 'false') {
                $('#txt_vcode').attr('class', 'text wrong').css('border-color', '');
                $('#spn_vcode_ok').html('').attr('class', '');
                $('#spn_vcode_wrong').attr('class', 'cue');
                $('#spn_vcode_wrong').html(msg[14]);
                $('#spn_vcode_wrong').css({'display': ''});
                show_vcode('imgVcode');
                vcodeIsWrong = true;
                return;
            }
        }
    });
    if (vcodeIsWrong == true) {
        return false;
    }
    $('#txt_vcode').attr('class', 'text');
    $('#spn_vcode_wrong').hide();
    $('#spn_vcode_ok').html('').attr('class', 'icon_yes').css({'display': ''});
    VerifyCode = true;
    return true;
}

function checkStrong() {
    var sPW = $('#txt_password').val();
    if (sPW.length < 1)
        return 0;
    Modes = 0;
    for (i = 0; i < sPW.length; i++) {
        Modes |= Evaluate(sPW.charCodeAt(i));
    }
    var num = bitTotal(Modes);
    return num;
}
function Evaluate(character) {
    if (character >= 48 && character <= 57)
        return 1;
    if (character >= 65 && character <= 90)
        return 2;
    if (character >= 97 && character <= 122)
        return 4;
    else
        return 8;
}

function bitTotal(num) {
    modes = 0;
    for (i = 0; i < 4; i++) {
        if (num & 1) modes++;
        num >>>= 1;
    }
    return modes;
}

function CheckdoSubmit(e) {
    var ev = window.event || e;
    if (ev.keyCode == 13) {
        check_register();
    }
}

function reg_submit(buttonname) {
    if (buttonname == "regbutton") {
        return true;
    } else {
        return false;
    }
}

function agreeement_check() {
    if ('checked' == $('#chb_agreement').attr('checked')) {
        $('#spn_agreement_wrong').css('display', 'none');
        return true;
    } else {
        $('#spn_agreement_wrong').html(msg[5]);
        $('#spn_agreement_wrong').css('display', '');
        return false;
    }
}

function check_register() {
    var usernameTrim = $('#txt_username').val();
    var passwordTrim = $('#txt_password').val();
    var repasswordTrim = $('#txt_repassword').val();
    var vcodeTrim = "";

    // 判断是否显示了图形验证码
    if($('#tb_tr_reg_vcode').css("display") == "none") {
        vcodeTrim = "1111";
    }else {
        vcodeTrim = $.trim($('#txt_vcode').val());
    }

    if ($.trim(usernameTrim) == "" || $.trim(passwordTrim) == "" || $.trim(repasswordTrim) == "" || $.trim(vcodeTrim) == "") {
        if ($.trim(usernameTrim) == "") {
            $('#txt_username').attr('class', 'text wrong').css('border-color', '');
            $('#spn_username_ok').hide();
            $('#spn_username_wrong').attr('class', 'cue');
            $('#spn_username_wrong').html(msg[6]);
            $('#spn_username_wrong').css({'display': ''});
        }
        if ($.trim(passwordTrim) == "") {
            $('#txt_password').attr('class', 'text wrong').css('border-color', '');
            $('#spn_password_ok').hide();
            $('#spn_password_wrong').attr('class', 'cue');
            $('#spn_password_wrong').html(msg[8]);
            $('#spn_password_wrong').css({'display': ''});
        }
        if ($.trim(repasswordTrim) == "") {
            $('#txt_repassword').attr('class', 'text wrong').css('border-color', '');
            $('#spn_repassword_ok').hide();
            $('#spn_repassword_wrong').attr('class', 'cue');
            $('#spn_repassword_wrong').html(msg[12]);
            $('#spn_repassword_wrong').css({'display': ''});
        }
        if (vcodeTrim == "") {
            $('#txt_vcode').val('');
            $('#txt_vcode').attr('class', 'text wrong').css('border-color', '');
            $('#spn_vcode_ok').html('').attr('class', '');
            $('#spn_vcode_wrong').attr('class', 'cue');
            $('#spn_vcode_wrong').html(msg[20]);
            $('#spn_vcode_wrong').css({'display': ''});
        }
        return false;
    }
    if (agreeement_check() && vcode_check() && username_check() && password_check() && repassword_check()) {
        $('#hdn_username').val($.trim(usernameTrim));
        $('#hdn_password').val($.trim(passwordTrim));
        if(/^\w+((\.\w+)|(-\w+))*\@[a-zA-Z0-9]+((\.|-)[a-zA-Z0-9]+)*\.[a-zA-Z0-9]+$/.test($.trim(usernameTrim))) {
            // email注册
            $("#register_form").attr("onsubmit","return true;");      
            $('#btn_confirm').click();
        }else{
            // 手机号注册，发送验证码短信
            var custid = 0;
            var mobile_phone = $.trim(usernameTrim);
            var verify_type = 5;
            var send_flg = false;
            $.ajax({
                type: 'POST',
                url: 'p/send_mobile_vcode.php',
                data: 'custid=' + custid + '&mobile_phone=' + mobile_phone + '&verify_type=' + verify_type,
                async: false,
                success: function (flg) {
                    if (flg == "-2") {
                        // 当天发送短信的次数超过了规定的最大次数
                        $('#txt_username').attr('class', 'text wrong').css('border-color', '');
                        $('#spn_username_ok').hide();
                        $('#spn_username_wrong').attr('class', 'cue');
                        $('#spn_username_wrong').html(msg[4]);
                        $('#spn_username_wrong').css({'display': ''});
                        return;
                    }else if(flg == "0") {
                        // 发送验证码短信成功
                        send_flg = true;
                        return ;
                    }else if(flg == "-4" || flg == "-5" || flg == "-7" || flg == "-8") {
                        // 手机验证码插入数据库失败 或者 发送验证码到用户手机失败 或者 两次发送间隔少于2分钟
                        $('#txt_vcode').val('');
                        $('#spn_err_msg').html(msg[19]);
                        $('#spn_err_msg').css({'display': ''});
                        return ;
                    }
                }
            });

            if(send_flg == false) {
                return false;
            }

            // 检测手机验证弹窗里是否显示验证码
            var isVcodeShow =false;
            $.ajax({
                type: 'POST',
                url: 'p/check_is_vcode_show.php',
                data: '',
                async: false,
                success: function (flg) {
                    if (flg == true) {
                        // 没有前导页面或者检测出恶意ip，则显示验证码
                        isVcodeShow = true;
                        return;
                    }
                }
            });
            if(isVcodeShow == true) {
                show_vcode('popImgVcode');
                $("#dt_mp_vcode").css({'display': ''});
                $("#dd_mp_vcode").css({'display': ''});
            }

            ///////////////////// 手机验证弹窗初始化开始//////////////////////////////////////////////////////////////
            // 显示遮罩和手机验证弹窗
            $("#div_mask_cover").css({'display': ''});
            $("#div_identity_verification").css({'display': ''});

            // 初始化弹层里的手机号
            $('#b_pop_mobliephone').html($.trim(usernameTrim));
            
            // 计时器初始化
            miao=120;
            $('#p_pop_mobliephone_ok').html(msg[18]);
            $('#p_pop_mobliephone_ok').show();
            changejishi();

            // 清空并隐藏短信验证码发送失败的错误提示信息
            $('#p_pop_mobliephone_wrong').html('');
            $('#p_pop_mobliephone_wrong').hide();

            // 清空弹层里的短信验证码输入框和右边的提示信息，并将光标定位到短信验证码输入框
            $('#txt_pop_sms_vcode').val('');
            $('#p_pop_sms_vcode_wrong').html('');
            $('#txt_pop_sms_vcode').focus();
            $('#txt_pop_vcode').attr("class","text");
            
            // 清空弹层里的图形验证码和右边的提示信息
            $('#txt_pop_vcode').val('');
            $("#spn_pop_vcode_ok").css({'display': 'none'});
            $('#p_pop_vcode_wrong').html('');
            $('#p_pop_vcode_wrong').hide();
            /////////////////////////////// 手机验证弹窗初始化结束///////////////////////////////////////////////////
        }

        return true;
    }
    return false;
}

function check_pop_sms_vcode_focus() {
    $('#txt_pop_sms_vcode').attr('class', 'text').css('border-color', '#FF8E42');
    $('#spn_pop_sms_vcode_ok').hide();
    $('#p_pop_sms_vcode_wrong').html('');
    $('#p_pop_sms_vcode_wrong').attr('class', 'hint');
}

function pop_sms_vcode_check() {
    var pop_sms_vcode = $('#txt_pop_sms_vcode').val();
    check_pop_sms_vcode_focus();
    $('#txt_pop_sms_vcode').css('border-color', '')
    checkpop_sms_vcode = false;
    if ($.trim(pop_sms_vcode) == '') {
        return true;
    }
    if (pop_sms_vcode.length != 6) {
        $('#txt_pop_sms_vcode').attr('class', 'text wrong').css('border-color', '');
        $('#spn_pop_sms_vcode_ok').hide();
        $('#p_pop_sms_vcode_wrong').addClass('cue').html(msg[15]);
        return false;
    }
    $('#spn_pop_sms_vcode_ok').css({'display': ''});
    checkpop_sms_vcode = true;
    return true;
}

function check_pop_vcode_focus() {
    $('#txt_pop_vcode').attr('class', 'text').css('border-color', '#FF8E42');
    $('#spn_pop_vcode_ok').hide();
    $('#p_pop_vcode_wrong').html('').hide();
}

function pop_vcode_check() {  
    if ($('#dt_mp_vcode').css("display") == "none") {
        return true;
    }

    var vcode = $('#txt_pop_vcode').val();
    check_pop_vcode_focus();
    $('#txt_pop_vcode').css('border-color', '')
    checkpop_vcode = false;
    var vcodeIsWrong = false;
    if (vcode == '') {
        return false;
    }
    if (!/\w{4}/.test(vcode)) {
        $('#txt_pop_vcode').attr('class', 'text wrong').css('border-color', '').val('');
        $('#spn_pop_vcode_ok').hide();
        $('#p_pop_vcode_wrong').attr('class', 'cue').html(msg[14]).css({'display': ''});
        return false;
    }
    var type=0;
    $.ajax({
        type: 'POST',
        url: 'p/vcode_check_new.php',
        data: 'vcode=' + vcode+'&type='+type,
        async: false,
        success: function (flg) {
            if (flg == 'false') {
                $('#txt_pop_vcode').attr('class', 'text wrong').css('border-color', '').val('');
                $('#spn_pop_vcode_ok').hide();
                $('#p_pop_vcode_wrong').attr('class', 'cue').html(msg[14]).css({'display': ''});
                show_vcode('popImgVcode');
                vcodeIsWrong = true;
                return;
            }
        }
    });
    if (vcodeIsWrong == true) {
        return false;
    }
    $('#spn_pop_vcode_ok').html('');
    $('#spn_pop_vcode_ok').attr('class', 'icon_yes');
    $('#spn_pop_vcode_ok').css({'display': ''});
    checkpop_vcode = true;
    return true;
}

function CheckdoPopSubmit(e) {
    var ev = window.event || e;
    if (ev.keyCode == 13) {
        pop_mobilephone_check();
    }
}

function pop_reg_submit(buttonname) {
    if (buttonname == "popregbutton") {
        return true;
    } else {
        return false;
    }
}

function pop_mobilephone_check() {
    var pop_sms_vcode = $('#txt_pop_sms_vcode').val();
    var pop_vcode = "";

    // 判断是否显示了图形验证码
    if($('#dt_mp_vcode').css("display") == "none") {
        pop_vcode = "1111";
    }else {
        pop_vcode = $('#txt_pop_vcode').val();
    }

    if ($.trim(pop_sms_vcode) == "" || $.trim(pop_vcode) == "") {
        if ($.trim(pop_sms_vcode) == "") {
            $('#txt_pop_sms_vcode').attr('class', 'text wrong').css('border-color', '');
            $('#spn_pop_sms_vcode_ok').hide();
            $('#p_pop_sms_vcode_wrong').attr('class', 'hint cue').html(msg[22]);
        }
        if ($.trim(pop_vcode) == "") {
            $('#txt_pop_vcode').attr('class', 'text wrong').css('border-color', '');
            $('#spn_pop_vcode_ok').hide();
            $('#p_pop_vcode_wrong').attr('class', 'cue').html(msg[20]).css({'display': ''});
        }
        return false;
    }

    if (pop_vcode_check() && pop_sms_vcode_check()) {
        // 前端验证输入的手机短信验证码是否正确
        var smsvcodeIsWrong = false;
        var verify_type = 5;
        var type = 0;
        $.ajax({
            type: 'POST',
            url: 'p/check_mobilephone_vcode.php',
            data: 'mobile_phone=' + $('#hdn_username').val() + "&verify_type=" + verify_type +"&sms_vcode=" + pop_sms_vcode + "&type=" + type,
            async: false,
            success: function (flg) {
                if (flg == 'false') {
                    $('#txt_pop_sms_vcode').attr('class', 'text wrong').css('border-color', '');
                    $('#spn_pop_sms_vcode_ok').hide();
                    $('#p_pop_sms_vcode_wrong').addClass('cue').html(msg[15]);
                    smsvcodeIsWrong = true;
                    return;
                }
            }
        });
        if (smsvcodeIsWrong == true) {
            return false;
        }

        // 手机注册填完短信验证码点提交
        $("#register_form").attr("onsubmit","return true;");
        $('#btn_pop_submit').click();
        return true;
    }
    return false;
}