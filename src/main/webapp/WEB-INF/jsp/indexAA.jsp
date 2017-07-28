<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.seu.cs.model.UserInMysql" errorPage="error.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>预定</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<meta name="renderer" content="webkit">
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
      
      .title{
      	font-size:10px;
      	margin-top:5px;
      	margin-bottom:5px;
      }
    </style>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
</head>
<body>
<%UserInMysql user = (UserInMysql)session.getAttribute("user");%>
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
                <form id="sorder" class="form-horizontalm hidden-xs hidden-sm visible-md-* visible-lg-*" role="form" style="padding-top:20px;">
                    <div class=" col-md-10 col-md-offset-1" style="margin-bottom:20px;">
                        <div class="row panel-body">
                        	<div id="clientidDiv" class="form-group col-md-6">
                                <label for="clientid" class="col-sm-4 control-label">客户名</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="clientid" readonly="readonly" 
                                    value="${user.getName() }">
                                    <input type="hidden" id="clientId" value="${user.getId() }">
                                    <input type="hidden" id="level" value="${user.getLevel() }">
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
                    	<div class="panel-body row" style="text-align:center;">
                    		<div class="form-group col-md-2 col-md-offset-2">
                    			<label class="control-label">货品图片</label>
                    		</div>
                    		<div class="form-group col-md-2">
                    			<label class="control-label">货品名称</label>
                    		</div>
                    		<div class="form-group col-md-1">
                    			<label class="control-label">库存</label>
                    		</div>
                    		<div class="form-group col-md-1">
                    			<label class="control-label">单价</label>
                    		</div>
                    		<div class="form-group col-md-1">
                    			<label class="control-label">数量</label>
                    		</div>
                    		<div class="form-group col-md-1">
                    			<label class="control-label">金额</label>
                    		</div>
                    	</div>
                    	
                    	<!-- 重复开始 -->
                    	<div id="goodPanel">
	                        <div class="panel-body row">
	                        	<div class="form-group col-md-2 col-md-offset-2 goodsImageDiv" style="text-align:center;">
	                            	<img src='' style="width:100px; height:100px;" class="goodsImg">
	                            </div>
	                            
	                        	<div id="goodsNameDiv" class="form-group col-md-2 goodsNameDiv">
	                                <select style="font-size:14px;height:36px;width:200px;textalign:center;margin-top:30px;" class="selectGoodsName">
	                                	<option value="" selected="selected">请选择货品类型</option>
	                                </select>
	                                <input class="goodsid" type="hidden">
	                                <input class="goodsNameInput" type="hidden">
	                            </div>
                            	<div class="form-group col-md-1 onHandDiv">
	                                   <input type="text" class="form-control onhand" readonly="readonly" style="margin-top:30px;">
	                            </div>
	                            <div class="form-group col-md-1 priceDiv">
	                                    <input type="text" class="form-control price" readonly="readonly" style="margin-top:30px;">
	                            </div>
	                            <div class="form-group col-md-1 quantityDiv">
	                                    <input type="text" class="form-control quantity" style="margin-top:30px;">
	                            </div>
	                            <div class="form-group col-md-1 amountDiv">
	                                    <input type="text" class="form-control amount" readonly="readonly" style="margin-top:30px;">
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
           
           		<form id="sorder_xs" class="form-horizontalm hidden-md hidden-lg visible-xs-* visible-sm-*" role="form" style="padding-top:20px;">
                    <div class=" col-md-10 col-md-offset-1" style="margin-bottom:20px;">
                        <div class="row panel-body">
                        	<div id="clientidDiv_xs" class="form-group col-md-6">
                                <label for="clientid_xs" class="col-sm-4 control-label">客户名</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="clientid_xs" readonly="readonly" 
                                    value="${user.getName() }">
                                    <input type="hidden" id="clientId_xs" value="${user.getId() }">
                                    <input type="hidden" id="level_xs" value="${user.getLevel() }">
                                </div>
                            </div>
                            <div id="contectorDiv_xs" class="form-group col-md-6">
                                <label for="contector_xs" class="col-sm-4 control-label">联系人</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="contector_xs">
                                </div>
                            </div>
                            <div id="phoneDiv_xs" class="form-group col-md-6">
                                <label for="phone_xs" class="col-sm-4 control-label">联系方式</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="phone_xs">
                                </div>
                            </div>
                            <div id="shiptoDiv_xs" class="form-group col-md-6">
                                <label for="shipto_xs" class="col-sm-4 control-label">配送地址</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="shipto_xs">
                                </div>
                            </div>   
                        </div>
                    </div>
                    <div class="panel panel-default">
                    	<!-- 重复开始 -->
                    	<div id="goodPanel_xs">
                    	<div class="panel-body">
                    		<div class="row">
                    			<div class="col-xs-8">
                    			<div class="container" style="margin-top:10px;">
                    				<div class="row">
                    					<div class="row col-xs-4 title"><label>货品名称</label></div>
                    					<div class="col-xs-8 goodsNameDiv_xs">
                    						<select style="font-size:10px;height:20px;width:100%;textalign:center;" class="selectGoodsName_xs">
	                                			<option value="" selected="selected">请选择货品名称</option>
	                                		</select>
	                                		<input class="goodsid_xs" type="hidden">
	                                		<input class="goodsNameInput_xs" type="hidden">
                    					</div>
                    				</div>
                    				<div class="row">
                    					<div class="row col-xs-4 title"><label>货品库存</label></div>
                    					<div class="col-xs-8"><input type="text" class="onhand_xs" readonly="readonly" style="border:none;background:none;height:20px;width:60px;font-size:10px"></div>
                    				</div>
                    				
                    				<div class="row">
                    				<div class="row col-xs-4 title"><label>货品单价</label></div>
                    					<div class="col-xs-8">
			                                <input type="text" class="price_xs" readonly="readonly" style="border:none;background:none;height:20px;width:60px;font-size:10px">
			                            </div>
                    				</div>
                    			</div>
                    		</div>
                    			
                    		<div class="col-xs-4 goodsImageDiv_xs">
                    			<img src='' class="goodsImg_xs" style="width:100px; height:100px;">
                    		</div>
                    		</div>
                    		<div class="row">
			                    <div class=" col-xs-6">
			                    	<div class="row">
                    					<div class="col-xs-6"><label class="title">数量（件）：</label></div>
			                    		<div><input type="text" class="quantity_xs" style="height:20px;width:60px;font-size:10px"></div>
                    				</div>
			                    </div>
			                    <div class=" col-xs-6">
			                    	<div class="row">
                    					<div class="col-xs-6"><label class="title">金额（元）：</label></div>
			                    		<div><input type="text" class="amount_xs" readonly="readonly" style="border:none;background:none;height:20px;width:60px; font-size:10px"></div>
                    				</div>
			                    </div>
                    		</div>
                    		</div>	
                    	</div>
                    
                     	<!-- 重复结束 -->
                    
                     	<div style="text-align:center">
                     		<button id="btn_addDiv_xs" type="button" style="border:none;background:none;"><span class="glyphicon glyphicon-plus" style="color: #5b5b5b; font-size: 28px;" aria-hidden="true"></span></button>
                     	</div>
                    </div>
                    
                    
                    <c:if test="${user.level != 'Z' }">
                    <div class="form-group col-md-offset-4 col-md-4" id="submitBtn">
                           <button type="button" class="btn btn-success btn-block btn-lg" id="uploadInfoBtn_xs">确定</button>
                    </div>
                    </c:if>
                </form>
           </div>
      </div>
  </div>
</div>
                
<script type="text/javascript">
	 $(function(){
		$.ajax({
			url: 'getAllGoodsNameForAA',
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
	 
	 $(function(){
			$.ajax({
				url: 'getAllGoodsNameForAA',
				success: function(data){
					for(var i = 0; i < data.length; i++){
						$('.selectGoodsName_xs').append("<option value="+data[i]+">"+data[i] + "</option>");
					}
				},
				error: function(data, status, e){
					alert('发生未知错误');
				}
			});	
			
		});
	 
	 $('.selectGoodsName').change(function(){
		 var select = $(this);
		 var code = $(this).find('option:selected').text();
		 $.ajax({
			 url:'getDetailGoodsInfoForAA',
			 data:{'code':code},
			 dataType:'json',
			 type:'post',
			 success:function(data){
				 select.parents('.panel-body').find('.onhand').val(data.onHand);
				 select.parents('.panel-body').find('.price').val(data.price);
				 select.parents('.panel-body').find('.goodsid').val(data.goodsId);
				 select.parents('.panel-body').find('.goodsNameInput').val(data.name);
				 if(data.imagePath == null || data.imagePath == ''){
					data.imagePath = 'images/ooYBAFZcDpGIUCcMAATBPVMssQ4AACydgPfcScABMFV865.jpg';
				 }
				select.parents('.panel-body').find('.goodsImg').attr('src', data.imagePath);
			},
			error: function(data, status, e){
				alert("发生未知错误");
			}
		 });
		 
	 });
	
	 $('.selectGoodsName_xs').change(function(){
		 var select = $(this);
		 var code = $(this).find('option:selected').text();
		 $.ajax({
			 url:'getDetailGoodsInfoForAA',
			 data:{'code':code},
			 dataType:'json',
			 type:'post',
			 success:function(data){
				 select.parents('.panel-body').find('.onhand_xs').val(data.onHand);
				 select.parents('.panel-body').find('.price_xs').val(data.price);
				 select.parents('.panel-body').find('.goodsid_xs').val(data.goodsId);
				 select.parents('.panel-body').find('.goodsNameInput_xs').val(data.name);
				 if(data.imagePath == null || data.imagePath == ''){
					data.imagePath = 'images/ooYBAFZcDpGIUCcMAATBPVMssQ4AACydgPfcScABMFV865.jpg';
				 }
				select.parents('.panel-body').find('.goodsImg_xs').attr('src', data.imagePath);
			},
			error: function(data, status, e){
				alert("发生未知错误");
			}
		 });
		 
	 });
	 
	 /* $('select').change(function(){
		var select = $(this);
		var name = $(this).find( 'option:selected').text();
		$.ajax({
			url: 'getDetailGoodsInfoByName',
			data: {'name' : name},
			dataType: 'json',
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
	}); */
	
	$('.quantity').blur(function(){
		var quantity = $(this).val();
		var parent = $(this).parents('.panel-body');
		var price = parent.find('.price').val();
		parent.find('.amount').val(quantity*price);
	});
	
	$('.quantity_xs').blur(function(){
		var quantity = $(this).val();
		var parent = $(this).parents('.panel-body');
		var price = parent.find('.price_xs').val();
		parent.find('.amount_xs').val(quantity*price);
	});
	
	$('#uploadInfoBtn').click(function(){
		$('#uploadInfoBtn').attr('disabled', 'disabled');
		var clientId = $('#clientId').val();
		var shortName = $('#clientid').val();
		var contector = $('#contector').val();
		var phone = $('#phone').val();
		var shipto = $('#shipto').val();
		var dataArray = new Array();
		var panels = $('#goodPanel .panel-body');
		var i = 0;
		while(i < panels.length){
			var panel = $(panels[i]);
			var goodsName = panel.find('.goodsNameInput').val();
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
			i = i + 1;
		}
		$.ajax({
			url: 'insertOrderAndDetail',
			type: 'post',
			dataType: 'json', 
			data: {'clientId' : clientId, 'shortName':shortName, 'contector': contector, 'phone':phone, 'shipto':shipto,
				'strs': dataArray.join('$')},
			success: function(data){
				alert('操作成功');
				$('#uploadInfoBtn').removeAttr('disabled');
				window.location.reload(); 
			},
			error: function(data, status, e){
				alert('操作失败');
				$('#uploadInfoBtn').removeAttr('disabled');
			}	
		});
	});
	
	
	$('#uploadInfoBtn_xs').click(function(){
		$('#uploadInfoBtn').attr('disabled', 'disabled');
		var clientId = $('#clientId_xs').val();
		var shortName = $('#clientid_xs').val();
		var contector = $('#contector_xs').val();
		var phone = $('#phone_xs').val();
		var shipto = $('#shipto_xs').val();
		var dataArray = new Array();
		var panels = $('#goodPanel_xs .panel-body');
		var i = 0;
		while(i < panels.length){
			var panel = $(panels[i]);
			var goodsName = panel.find('.goodsNameInput_xs').val();
			var onhand = panel.find('.onhand_xs').val();
			var price = panel.find('.price_xs').val();
			var quantity = panel.find('.quantity_xs').val();
			var amount = panel.find('.amount_xs').val();
			var goodsId = panel.find('.goodsid_xs').val();
			if(quantity == null || quantity == '') quantity = 0;
			if(amount == null || quantity == '') amount = 0;
			var data = '{"goodsName":'+ goodsName + ', "onhand":'+ onhand+', "price":'+price+', "quantity":'+
				quantity+', "amount":'+amount+',"goodsId":'+goodsId+'}';
			//var data = eval('('+tmp+')');
			dataArray[i]=data;
			i = i + 1;
		}
		$.ajax({
			url: 'insertOrderAndDetail',
			type: 'post',
			dataType: 'json', 
			data: {'clientId' : clientId, 'shortName':shortName, 'contector': contector, 'phone':phone, 'shipto':shipto,
				'strs': dataArray.join('$')},
			success: function(data){
				alert('操作成功');
				$('#uploadInfoBtn_xs').removeAttr('disabled');
				window.location.reload(); 
			},
			error: function(data, status, e){
				alert('操作失败');
				$('#uploadInfoBtn_xs').removeAttr('disabled');
			}	
		});
	});
	 
	$('#btn_addDiv').click(function(){
		var goodItem = document.createElement("div");
		goodItem.setAttribute("class", "panel-body row"); 
		var str = "<div class=\"form-group col-md-2 col-md-offset-2 goodsImageDiv\" style=\"text-align:center;\">"+
        	"<img src='' style=\"width:100px; height:100px;\" class=\"goodsImg\">"+
        "</div>"+
    	"<div id=\"goodsNameDiv\" class=\"form-group col-md-2 goodsNameDiv\">"+
            "<select style=\"font-size:14px;height:36px;width:200px;textalign:center;margin-top:30px;\" class=\"selectGoodsName\">"+
            	"<option value=\"\" selected=\"selected\">请选择货品类型</option>"+
            "</select>"+
            "<input class=\"goodsid\" type=\"hidden\">"+
            "<input class=\"goodsNameInput\" type=\"hidden\">"+
        "</div>"+
        "<div class=\"form-group col-md-1 onHandDiv\">"+
               "<input type=\"text\" class=\"form-control onhand\" readonly=\"readonly\" style=\"margin-top:30px;\">"+
        "</div>"+
        "<div class=\"form-group col-md-1 priceDiv\">"+
                "<input type=\"text\" class=\"form-control price\" readonly=\"readonly\" style=\"margin-top:30px;\">"+
        "</div>"+
        "<div class=\"form-group col-md-1 quantityDiv\">"+
                "<input type=\"text\" class=\"form-control quantity\" style=\"margin-top:30px;\">"+
        "</div>"+
        "<div class=\"form-group col-md-1 amountDiv\">"+
                "<input type=\"text\" class=\"form-control amount\" readonly=\"readonly\" style=\"margin-top:30px;\">"+
        "</div>";
    	
		goodItem.innerHTML = str;
		var gPanel = document.getElementById("goodPanel");
		var hr = document.createElement("hr");
		gPanel.appendChild(hr);
		gPanel.appendChild(goodItem);
		
		var firstSelect = $('.selectGoodsName:first');
		var lastSelect = $('.selectGoodsName:last');
		lastSelect.html(firstSelect.html());
		
		$('.selectGoodsName').change(function(){
			 var select = $(this);
			 var code = $(this).find('option:selected').text();
			 $.ajax({
				 url:'getDetailGoodsInfoForAA',
				 data:{'code':code},
				 dataType:'json',
				 type:'post',
				 success:function(data){
					 select.parents('.panel-body').find('.onhand').val(data.onHand);
					 select.parents('.panel-body').find('.price').val(data.price);
					 select.parents('.panel-body').find('.goodsid').val(data.goodsId);
					 select.parents('.panel-body').find('.goodsNameInput').val(data.name);
					 if(data.imagePath == null || data.imagePath == ''){
						data.imagePath = 'images/ooYBAFZcDpGIUCcMAATBPVMssQ4AACydgPfcScABMFV865.jpg';
					 }
					select.parents('.panel-body').find('.goodsImg').attr('src', data.imagePath);
				},
				error: function(data, status, e){
					alert("发生未知错误");
				}
			 });
			 
		 });
		
		$('.quantity').blur(function(){
			var quantity = $(this).val();
			var parent = $(this).parents('.panel-body');
			var price = parent.find('.price').val();
			parent.find('.amount').val(quantity*price);
		});
		
	});
	
	$('#btn_addDiv_xs').click(function(){
		var goodItem = document.createElement("div");
		goodItem.setAttribute("class", "panel-body"); 
		var str = "<div class=\"row\">"+
            "<div class=\"col-xs-8\">"+
            "<div class=\"container\" style=\"margin-top:10px;\">"+
                 "<div class=\"row\">"+
                      "<div class=\"row col-xs-4 title\"><label>货品名称</label></div>"+
                      "<div class=\"col-xs-8 goodsNameDiv_xs\">"+
                           "<select style=\"font-size:10px;height:20px;width:100%;textalign:center;\" class=\"selectGoodsName_xs\">"+
                           "<option value=\"\" selected=\"selected\">请选择货品名称</option>"+
                      "</select>"+
                      "<input class=\"goodsid_xs\" type=\"hidden\">"+
                      "<input class=\"goodsNameInput_xs\" type=\"hidden\">"+
                      "</div>"+
                 "</div>"+
                 "<div class=\"row\">"+
                      "<div class=\"row col-xs-4 title\"><label>货品库存</label></div>"+
                      "<div class=\"col-xs-8\"><input type=\"text\" class=\"onhand_xs\" readonly=\"readonly\" style=\"border:none;background:none;height:20px;width:60px;font-size:10px\"></div>"+
                 "</div>"+
                 
                 "<div class=\"row\">"+
                 "<div class=\"row col-xs-4 title\"><label>货品单价</label></div>"+
                      "<div class=\"col-xs-8\">"+
                        "<input type=\"text\" class=\"price_xs\" readonly=\"readonly\" style=\"border:none;background:none;height:20px;width:60px;font-size:10px\">"+
                   " </div>"+
                 "</div>"+
            "</div>"+
       "</div>"+
            
       "<div class=\"col-xs-4 goodsImageDiv_xs\">"+
           " <img src='' class=\"goodsImg_xs\" style=\"width:100px; height:100px;\">"+
       "</div>"+
       "</div>"+
       "<div class=\"row\">"+
            "<div class=\" col-xs-6\">"+
                 "<div class=\"row\">"+
                      "<div class=\"col-xs-6\"><label class=\"title\">数量（件）：</label></div>"+
                      "<div><input type=\"text\" class=\"quantity_xs\" style=\"height:20px;width:60px;font-size:10px\"></div>"+
                 "</div>"+
            "</div>"+
            "<div class=\" col-xs-6\">"+
                 "<div class=\"row\">"+
                      "<div class=\"col-xs-6\"><label class=\"title\">金额（元）：</label></div>"+
                     " <div><input type=\"text\" class=\"amount_xs\" readonly=\"readonly\" style=\"border:none;background:none;height:20px;width:60px; font-size:10px\"></div>"+
                " </div>"+
            "</div>"+
      " </div>";
    	
		goodItem.innerHTML = str;
		var gPanel = document.getElementById("goodPanel_xs");
		var hr = document.createElement("hr");
		gPanel.appendChild(hr);
		gPanel.appendChild(goodItem);
		
		var firstSelect = $('.selectGoodsName_xs:first');
		var lastSelect = $('.selectGoodsName_xs:last');
		lastSelect.html(firstSelect.html());
		
		$('.selectGoodsName_xs').change(function(){
			 var select = $(this);
			 var code = $(this).find('option:selected').text();
			 $.ajax({
				 url:'getDetailGoodsInfoForAA',
				 data:{'code':code},
				 dataType:'json',
				 type:'post',
				 success:function(data){
					 select.parents('.panel-body').find('.onhand_xs').val(data.onHand);
					 select.parents('.panel-body').find('.price_xs').val(data.price);
					 select.parents('.panel-body').find('.goodsid_xs').val(data.goodsId);
					 select.parents('.panel-body').find('.goodsNameInput_xs').val(data.name);
					 if(data.imagePath == null || data.imagePath == ''){
						data.imagePath = 'images/ooYBAFZcDpGIUCcMAATBPVMssQ4AACydgPfcScABMFV865.jpg';
					 }
					select.parents('.panel-body').find('.goodsImg_xs').attr('src', data.imagePath);
				},
				error: function(data, status, e){
					alert("发生未知错误");
				}
			 });
			 
		 });
		
		$('.quantity_xs').blur(function(){
			var quantity = $(this).val();
			var parent = $(this).parents('.panel-body');
			var price = parent.find('.price_xs').val();
			parent.find('.amount_xs').val(quantity*price);
		});
		
	});


</script>
</body>
</html>