function getName() {
	var username =$("#user").val();
	if(username==null||username==""){
		gethtml("用户名不能为空",username,1);
	}else{
		gethtml("",username,1);
	}
};

function getpass(){
	var userpswd =$("#pswd").val();
	if(userpswd==null||userpswd==""){
		gethtml("密码不能为空",userpswd,2);
	}else{
		gethtml("",userpswd,2);
	}
};

function gethtml(texts,date,number){
	var html;
	if(date == ""){
		html ="<table class='img_landing_"+number+"'>" +
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


//$("#usersubmit").click(function (){
//	var userName  = $("#user").val();
//	var userpass = $("#pswd").val();
//	$.ajax({
//		url:"/landingUser",
//		type:"post",
//		data:{"usernam":userName ,"userpass":userpass},
//		dataType:"jsom",
//		success:function(data){
//			if(data!=null){
//				$.ajax({
//					url:"/index",
//					type:"post"
//				});
//			}
//		},
//		error:function(XMLHttpRequest, textStatus, errorThrown){
//			alert("错误");
//			
//		}
//		
//		
//		
//	})
//	
//	
//	
//});



