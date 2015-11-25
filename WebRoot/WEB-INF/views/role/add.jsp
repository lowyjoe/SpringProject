<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SpringMVC+Hibernate +MySql+ EasyUI ---CRUD</title>
<script type="text/javascript">
	function doCancel(){
		document.location.href="${ctx }/role/index";
	}
	
	$(function(){
		$('#form1').form({
		    onSubmit: function(){
		    	var v = $(this).form('validate');
			    	if(v){
			    		$("#doSubmit").unbind('click');
			    	}
			    	return v;
		    },
		    success:function(data){
		    	data = eval('(' + data + ')');
		    	if(data.success == true){
		    		document.location.href="${ctx }/role/index";
				}else {
						$("#doSubmit").bind("click",function(){
					   $('#form1').submit();
					});
					alert(data.msg);
				}
		    }
		});
		$("#doSubmit").click(function() {
			$('#form1').submit();
			return false;
		});
	});
</script>
</head>
<body>
<div class="tables_title">Add New UserInfo</div>
<form action="${ctx }/role/add " id="form1" method="post">
	<div class="dengji_table">
    	<div class="basic_table">
            <div class="clospan">
            	<p class="basic_name">名称</p>
            	<p>
            	<input name="roleName"  id="roleName" type="text" class="easyui-validatebox"  data-options="required:true" placeholder="输入中文"/>
            	</p>
             </div>
         </div>
             <div class="clospan_func">
            	<div class="btns">
            		<a href="javascript:void(0);" id="doSubmit" class="blank_btn">保存</a>
            		<a href="javascript:void(0);" onclick="doCancel();" class="blank_btn">返回</a>
            	</div>
            </div>
        </div>
      </form>
</body>
</html>