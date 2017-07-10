<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.seu.cs.model.User" errorPage="error.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>预定</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
        background:#FFFFFf;
      }
      
      .orderDiv{
        padding:20px;
        background:#eaeaea;
      
      }
      
    </style>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
</head>
<body>
<%User user = (User)session.getAttribute("user");%>
<div class="navbar navbar-inverse navbar-fixed-top">
      <div style="color:#cccccc;padding-left:20px;" >
        <h3>千发配货系统</h3>
	</div>
</div>
<div class="container-fluid" style="padding:20px;">
    <div class="row">
        <div class="main">
            <!--录入订单-->
            <div class="container" style="width: 100%;">
            <h1>订单详情</h1>
            <!-- sorder表信息 -->
                <form id="sorder" class="form-horizontalm" role="form" style="padding-top:20px;">
                    <div class=" col-md-10 col-md-offset-1" style="margin-bottom:20px;">
                    
                        <div class="row panel-body">
                        	<div id="clientidDiv" class="form-group col-md-6">
                                <label for="clientid" class="col-sm-4 control-label">客户名</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="clientid" readonly="readonly" 
                                    value="${user.getShortName() }">
                                    <input type="hidden" id="clientId" value="${user.getClientId() }">
                                </div>
                            </div>
                            <div id="contectorDiv" class="form-group col-md-6">
                                <label for="contector" class="col-sm-4 control-label">联系人</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="contector">
                                </div>
                            </div>
                            <div id="phoneDiv" class="form-group col-md-6">
                                <label for="phone" class="col-sm-4 control-label">联系方式</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="phone">
                                </div>
                            </div>
                            <div id="shiptoDiv" class="form-group col-md-6">
                                <label for="shipto" class="col-sm-4 control-label">配送地址</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="shipto">
                                </div>
                            </div>   
                        </div>
                    </div>

                    <div class="panel panel-default">
                    <!-- 重复开始 -->
                    	<div id="goodPanel">
	                        <div class="panel-body row">
	                        	<div id="goodsNameDiv" class="form-group col-md-4">
	                                <label for="goodsName" class="col-sm-3 control-label">货品名称</label>
	                                <div class="col-sm-9">
	                                	<select style="font-size:16px;height:36px;width:200px;textalign:center" class="selectGoodsName">
	                                	<option value="" selected="selected">请选择货品类型</option>
	                                	</select>
	                                	<input class="goodsid" type="hidden">
	                                </div>
	                            </div>
	                            <div class="form-group col-md-2 onHandDiv">
	                                <label for="onhand" class="col-sm-5 control-label">库存</label>
	                                <div class="col-sm-7">
	                                    <input type="text" class="form-control onhand" readonly="readonly">
	                                </div>
	                            </div>
	                            <div class="form-group col-md-2 priceDiv">
	                                <label for="price" class="col-sm-5 control-label">单价</label>
	                                <div class="col-sm-7">
	                                    <input type="text" class="form-control price" readonly="readonly">
	                                </div>
	                            </div>
	                            <div class="form-group col-md-2 quantityDiv">
	                                <label for="quantity" class="col-sm-5 control-label">数量</label>
	                                <div class="col-sm-7">
	                                    <input type="text" class="form-control quantity">
	                                </div>
	                            </div>
	                            <div class="form-group col-md-2 amountDiv">
	                                <label for="amount" class="col-sm-5 control-label">金额</label>
	                                <div class="col-sm-7">
	                                    <input type="text" class="form-control amount" readonly="readonly">
	                                </div>
	                            </div>
                            </div>
                               
                     	</div>
                     	<!-- 重复结束 -->
                     	
                     	<div style="text-align:center">
                     	<button id="btn_addDiv" type="button" style="border:none;background:none;"><span class="glyphicon glyphicon-plus" style="color: #5b5b5b; font-size: 28px;" aria-hidden="true"></span></button>
                     	</div>
                    </div>
                    <div class="form-group col-md-offset-4 col-md-4" id="submitBtn">
                           <button type="button" class="btn btn-success btn-block btn-lg" id="uploadInfoBtn">确定</button>
                    </div>
                </form>
           </div>
      </div>
  </div>
</div>
                
<script type="text/javascript">
	 $(function(){
		$.ajax({
			url: 'getAllGoodsName',
			success: function(data){
				for(var i = 0; i < data.length; i++){
					$('.selectGoodsName').append("<option value="+data[i]+">"+data[i] + "</option>");
				}
			},
			error: function(data, status, e){
				alert('发生未知错误');
			}
		});	
		
	});
	
	$('select').change(function(){
		var select = $(this);
		var name = $(this).find( 'option:selected').text();
		$.ajax({
			url: 'getDetailGoodsInfoByName',
			data: {'name' : name},
			datatype: 'json',
			type: 'post',
			success: function(data){
				select.parents('.panel-body').find('.onhand').val(data.onHand);
				select.parents('.panel-body').find('.price').val(15);
				select.parents('.panel-body').find('.goodsid').val(data.goodsId);
			},
			error: function(data, status, e){
				alert('发生未知错误');
			}
		});
	});
	
	$('.quantity').blur(function(){
		var quantity = $(this).val();
		var parent = $(this).parents('.panel-body');
		var price = parent.find('.price').val();
		parent.find('.amount').val(quantity*price);
	});
	
	$('#uploadInfoBtn').click(function(){
		var clientId = $('#clientId').val();
		var shortName = $('#clientid').val();
		var contector = $('#contector').val();
		var phone = $('#phone').val();
		var shipto = $('#shipto').val();
		var dataArray = new Array();
		var panels = $('#goodPanel .panel-body');
		for(var i = 0; i < panels.length; i++){
			var panel = $(panels[i]);
			var goodsName = panel.find('select option:selected').text();
			var onhand = panel.find('.onhand').val();
			var price = panel.find('.price').val();
			var quantity = panel.find('.quantity').val();
			var amount = panel.find('.amount').val();
			var goodsId = panel.find('.goodsid').val();
			if(quantity == null || quantity == '') quantity = 0;
			if(amount == null || quantity == '') amount = 0;
			var data = '{"goodsName":'+ goodsName + ', "onhand":'+ onhand+', "price":'+price+', "quantity":'+
				quantity+', "amount":'+amount+',"goodsId":'+goodsId+'}';
			//var data = eval('('+tmp+')');
			dataArray[i]=data;
		}
		$.ajax({
			url: 'insertOrderAndDetail',
			type: 'post',
			dataType: 'json', 
			data: {'clientId' : clientId, 'shortName':shortName, 'contector': contector, 'phone':phone, 'shipto':shipto,
				'strs': dataArray.join('$')},
			success: function(data){
				alert('操作成功');
			},
			error: function(data, status, e){
				alert('操作失败');
			}	
		});
	});
	 
	$('#btn_addDiv').click(function(){
		var goodItem = document.createElement("div");
		goodItem.setAttribute("class", "panel-body row"); 
		
		goodItem.innerHTML="<div class=\"form-group col-md-4\"><label for=\"goodsName\" class=\"col-sm-3 control-label\">货品名称</label><div class=\"col-sm-9\"><select style=\"font-size:16px;height:36px;width:200px;textalign:center\"  class=\"selectGoodsName\"><option value=\" selected=\"selected\">请选择货品类型</option></select><input class=\"goodsid\" type=\"hidden\"></div></div><div class=\"form-group col-md-2 onhandDiv\"><label for=\"onhand\" class=\"col-sm-5 control-label\">库存</label><div class=\"col-sm-7\"><input type=\"text\" class=\"form-control onhand\" readonly=\"readonly\"></div></div><div class=\"form-group col-md-2 priceDiv\"><label for=\"price\" class=\"col-sm-5 control-label\">单价</label><div class=\"col-sm-7\"><input type=\"text\" class=\"form-control price\" readonly=\"readonly\"></div></div><div class=\"form-group col-md-2 quantityDiv\"><label for=\"quantity\" class=\"col-sm-5 control-label\">数量</label><div class=\"col-sm-7\"><input type=\"text\" class=\"form-control quantity\"></div></div><div class=\"form-group col-md-2 amountDiv\"><label for=\"amount\" class=\"col-sm-5 control-label\">金额</label><div class=\"col-sm-7\"><input type=\"text\" class=\"form-control amount\" readonly=\"readonly\"></div></div>";
		
		var gPanel = document.getElementById("goodPanel");
		gPanel.appendChild(goodItem);
		var firstSelect = $('select:first');
		var lastSelect = $('select:last');
		lastSelect.html(firstSelect.html());
		
		$('select').change(function(){
			var select = $(this);
			var name = $(this).find( 'option:selected').text();
			$.ajax({
				url: 'getDetailGoodsInfoByName',
				data: {'name' : name},
				datatype: 'json',
				type: 'post',
				success: function(data){
					select.parents('.panel-body').find('.onhand').val(data.onHand);
					select.parents('.panel-body').find('.price').val(1);
					select.parents('.panel-body').find('.goodsid').val(data.goodsId);
					/* $('#specInput').val(data.spec);
					$('#unitInput').val(data.unit);
					$('#goodsIdInput').val(data.goodsId);
					$('#onhandInput').val(data.onHand); */
				},
				error: function(data, status, e){
					alert('发生未知错误');
				}
			});
		});
		
		$('.quantity').blur(function(){
			var quantity = $(this).val();
			var parent = $(this).parents('.panel-body');
			var price = parent.find('.price').val();
			parent.find('.amount').val(quantity*price);
		});
		
		 /*$('#uploadInfoBtn').click(function(){
			var clientId = $('#clientId').val();
			var shortName = $('#clientid').val();
			var contector = $('#contector').val();
			var phone = $('#phone').val();
			var shipto = $('#shipto').val();
			var dataArray = new Array();
			var panels = $('#goodPanel .panel-body');
			for(var i = 0; i < panels.length; i++){
				var panel = $(panels[i]);
				var goodsName = panel.find('select option:selected').text();
				var onhand = panel.find('.onhand').val();
				var price = panel.find('price').val();
				var quantity = panel.find('.quantity').val();
				var amount = panel.find('.amount').val();
				var goodsId = panel.find('.goodsid').val();
				var data = "{'goodsName':"+ goodsName + ", 'onhand':"+ onhand+", 'price':"+price+", 'quantity':"+
					quantity+", 'amount':"+amount+",'goodsId':"+goodsId+"}";
				//var data = eval('('+tmp+')');
				dataArray[i]=data;
			}
			$.ajax({
				url: 'insertOrderAndDetail',
				type: 'post',
				dataType: 'json', 
				data: {'clientId' : clientId, 'shortName':shortName, 'contector': contector, 'phone':phone, 'shipto':shipto,
					'list': dataArray.join('#')},
				success: function(data){
					alert('操作成功');
				},
				error: function(data, status, e){
					alert('操作失败');
				}	
			});
		}); */
	});


</script>
</body>
</html>