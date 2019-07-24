//获取QQ验证码
$("#qqtexte").click(function() {
	var jsondata = $("#qqtext").val();
	if(jsondata==""||jsondata==null){
		userqq();
	}else{
		  $.ajax({
	          url:"verification",
	          type:"post",
	          data:{"jsondata":jsondata},
	          dataType:"json",
	         success:function(data){
	              if (data!=null ) {
	            	  alert("qq");
//	               $("#userSpan").text("用户名已存在");
//	               $("#username").val('');
	           }else if(data==null && username !=''){
	        	   alert("qq账号");
//	               $("#userSpan").text("用户名可用");
	           }
	         },
	        error: function (XMLHttpRequest, textStatus, errorThrown) {
	        	 alert("qq账号验证不正确");
              }

	       });
	}
	
});


//检验用户名
function usernamee() {
	var name = $("#username").val();
	gethtml("用户名不能为空",name,1);	
};
//校验密码
function userpass(){
	var pswd = $("#pswd").val();
	
	gethtml("密码不能为空",pswd,2);
	
	
	
};
//校验两个密码是否相同
function userPassoft(){
	var pswds = $("#pswds").val();
	var pswd = $("#pswd").val();
	var html;
	gethtml("第二次密码不能为空",pswds,3);
	if(pswds != pswd){
		html ="<table class='img_3'>" +
					"<tr>" +
						"<td>" +
							"<img  src='static/images/glyphicons-505-alert.png'>" +
						"</td>" +
						"<td>" +
							"<span class='span_1'>两个密码不相同</span>" +
						"</td>" +
					"</tr>" +
			  "</table>";
		$("#tablediv").html(html);
	}
	
};
//校验QQ账号
function userqq(){
	
	var qqtext = $("#qqtext").val();
	if(qqtext==null||qqtext){
		gethtml("QQ账号不能为空",qqtext,4);
	}else{
		if(qqtext.search(/^[1-9]\d{4,8}$/) !=-1){
			gethtml("QQ格式不对",qqtext,4);
		}
	}
};
//校验验证码
function useryanz(){
	var Verificationcode = $("#Verificationcode").val();
	gethtml("验证码能为空",Verificationcode,5);
	
};
//形成校验信息
function gethtml(texts,date,number){
	var html;
	if(date == ""){
		html ="<table class='img_"+number+"'>" +
					"<tr>" +
						"<td>" +
							"<img  src='static/images/glyphicons-505-alert.png'>" +
						"</td>" +
						"<td>" +
							"<span class='span_1'>"+texts+"</span>" +
						"</td>" +
					"</tr>" +
			  "</table>";
		$("#tablediv").html(html);
	}else{
		html="";
		$("#tablediv").html(html);
	}
};




window.onload = function(){
    var oForm = document.getElementById('loginForm');
    var oUser = document.getElementById('user');
    var oPswd = document.getElementById('pswd');
    var oRemember = document.getElementById('remember');
    
    //页面初始化时，如果帐号密码cookie存在则填充
    if(getCookie('user') && getCookie('pswd')){
      oUser.value = getCookie('user');
      oPswd.value = getCookie('pswd');
      oRemember.checked = true;
    }
    //复选框勾选状态发生改变时，如果未勾选则清除cookie
    oRemember.onchange = function(){
      if(!this.checked){
        delCookie('user');
        delCookie('pswd');
      }
    };
    //表单提交事件触发时，如果复选框是勾选状态则保存cookie
    oForm.onsubmit = function(){
      if(remember.checked){ 
        setCookie('user',oUser.value,7); //保存帐号到cookie，有效期7天
        setCookie('pswd',oPswd.value,7); //保存密码到cookie，有效期7天
      }
    };
  };
  //设置cookie
  function setCookie(name,value,day){
    var date = new Date();
    date.setDate(date.getDate() + day);
    document.cookie = name + '=' + value + ';expires='+ date;
 
  };
  //获取cookie
  function getCookie(name){
    var reg = RegExp(name+'=([^;]+)');
    var arr = document.cookie.match(reg);
    if(arr){
      return arr[1];
    }else{
      return '';
    }
  };
  //删除cookie
  function delCookie(name){
    setCookie(name,null,-1);
  };
