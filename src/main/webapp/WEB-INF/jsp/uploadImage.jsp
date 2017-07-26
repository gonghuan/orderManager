<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery.form.js"></script>
<title>上传图片</title>
</head>
<body>
	<table class="table table-bordered table-striped">
		<tr>
			<th>商品编码</th>
			<th>图片路径</th>
			<th>上传图片</th>
		</tr>
	</table>
</body>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url: 'getCodeAndImage',
			dataType: 'json',
			success: function(data){
				var length = data.length;
				var str = '';
				for(var i = 0; i < length; i++){
					var tmp = data[i];
					str += '<tr>';
					str += "<td>"+tmp.code+"</td>";
					str += "<td class='path'>"+tmp.imagePath+"</td>";
					str += "<td><form method='post' enctype='multipart/form-data'>"+
					"<input type='file' class='file' name='file' id='imageFile'/><input type='button' class='button' value='上传' data-id='"+
					tmp.code+"'/></form></td>"
					str += '</tr>';
				}
				var table = $('table');
				table.append(str);
				
				$('.button').click(function(){
					var file = $(this).prev('.file');
					var form = $(this).parent('form');
					var imagePath = $(file).val();
					var code = $(this).data('id');
					if(imagePath == ''){
						alert('请选择要上传的图片');
					}else{
						var strExtension = imagePath.substr(imagePath.lastIndexOf('.')+1);
						if(strExtension != 'jpg' && strExtension != 'gif' && strExtension != 'png' && strExtension != 'bmp'){
							alert('您选择的不是图片格式，需要时jpg,gif,png,bmp格式中的一种！');
						}else{
							$(form).ajaxSubmit({
								type: 'post',
								url: 'uploadImg',
								data: {'code': code},
								success: function(data){
									$(form).parents('tr').find('.path').text(data);
									$(file).empty();
								},
								error: function(){
									$(file).empty();
									alert('上传失败，请检查网络后重试');
								}
							});
						}
					}
				});
			},
			error: function(data, status, e){
				alert("发生未知错误");
			}
		});
	});
</script>
</html>