<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.seu.cs.model.User"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link ref="stylesheet" href="css/bootstrap.min.css"/>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<title>测试页面</title>
<%User user = (User)session.getAttribute("user");%>
</head>
<body>
	<input id="shortNameInput" value="${user.getShortName() }">
	<input type="hidden" id="clientId" value="${user.getClientId() }">
	<input id="contatorInput">
	<input id="phoneInput">
	<input id="takedateInput">
	<input id="shiponInput">
	<br>
		<select id="goodsNameSelect"></select>
		<input id="codeInput">
		<input id="specInput">
		<input id="unitInput">
		<input id="goodsIdInput">
		<input id="onhandInput">
		<input id="taxrateInput">
		<input id="discInput">
		<input id="amountInput">
		<!-- <input id="shopidInput">
		<input id="opidInput">
		<input id="closedInput">
		<input id="finishedInput">
		<input id="refercountInput">
		<input id="printedInput">
		<input id="printcountInput">
		<input id="dsorderInput">
		<input id="uploadedInput">
		<input id="billstatusInput">
		<input id="ackapprInput">
		<input id="filecountInput"> -->
		<button id="button">提交</button>
<script>
	/* $(function(){
		$.ajax({
			url: 'getAllGoodsName',
			success: function(data){
				$('#goodsNameSelect').append("<option value=''>请选择</option>");
				for(var i = 0; i < data.length; i++){
					$('#goodsNameSelect').append("<option value="+data[i]+">"+data[i] + "</option>");
				}
			},
			error: function(data, status, e){
				alert('发生未知错误');
			}
		});	
		
		$('#goodsNameSelect').change(function(){
			var name = $('#goodsNameSelect option:selected').text();
			$.ajax({
				url: 'getDetailGoodsInfoByName',
				data: {'name' : name},
				datatype: 'json',
				type: 'post',
				success: function(data){
					$('#codeInput').val(data.code);
					$('#specInput').val(data.spec);
					$('#unitInput').val(data.unit);
					$('#goodsIdInput').val(data.goodsId);
					$('#onhandInput').val(data.onHand);
				},
				error: function(data, status, e){
					alert('发生未知错误');
				}
			});
		});
		
		$('#button').click(function(){
			$.ajax({
				url:'testInsert',
				contentType: "application/json charset=utf-8",
				dataType: 'json',
				type: 'post',
				data: {'shortName':$('#shortNameInput').val() , 'contator':$('#contatorInput').val(),
					'phone':$('#phoneInput').val(), 'takedate':$('#takedateInput').val(), 'shipon':$('#shiponInput').val(),
					'goodsname':$('#goodsNameSelect option:selected').text(), 'code':$('#codeInput').val(), 
					'spec':$('#specInput').val(), 'taxrate':$('#taxrateInput').val(), 'disc':$('#discInput').val(),
					'unit':$('#unitInput').val(), 'goodsId':$('#goodsIdInput').val(),'onhand':$('#onhandInput').val(),
					'amount':$('#amountInput').val(), 'clientId':$('#clientId').val() 
					},
				success: function(data){
					alert('更改成功');
				},
				error: function(data, status, e){
					alert('发生未知错误');
				}
			});
		});
	}); */
</script>
</body>
</html>