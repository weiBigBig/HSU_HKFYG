
//----人员列表
$(function(){
	
	$('.table-sort tbody').on( 'click', 'tr', function () {
		if ( $(this).hasClass('selected') ) {
			$(this).removeClass('selected');
		}
		else {
			table.$('tr.selected').removeClass('selected');
			$(this).addClass('selected');
		}
	});
});
/*用户-添加*/
function member_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*用户-查看*/
function member_show(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*用户-停用*/
function member_stop(obj,id){
	layer.confirm('确认要停用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">已停用</span>');
		$(obj).remove();
		layer.msg('已停用!',{icon: 5,time:1000});
	});
}

/*用户-启用*/
function member_start(obj,id){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">已启用</span>');
		$(obj).remove();
		layer.msg('已启用!',{icon: 6,time:1000});
	});
}
/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);	
}
/*用户-删除*/
function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}
/*活动-报名*/
function active_sign_start(obj){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-status").prepend('<span class="label label-success radius">报名</span>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">报名</span>');
		$(obj).remove();
		layer.msg('已切换!',{icon: 6,time:1000});
	});
}
/*活动-分组*/
function active_group_stop(obj,id){
	layer.confirm('确认要结束吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_start(this,id)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">满额</span>');
		$(obj).remove();
		layer.msg('满额!',{icon: 5,time:1000});
	});
}

/*活动-组毕*/
function active_group_start(obj,id){
	layer.confirm('确认要启动吗？',function(index){
		$(obj).parents("tr").find(".td-manage").prepend('<a style="text-decoration:none" onClick="member_stop(this,id)" href="javascript:;" title="停用"><i class="Hui-iconfont">&#xe631;</i></a>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">可报名</span>');
		$(obj).remove();
		layer.msg('已启动!',{icon: 6,time:1000});
	});
}
/*活动-反馈*/
function active_feedback_stop(obj){
	layer.confirm('确认要截止反馈吗？活动将到此结束，工时会自动累加，请如实核对工时情况',function(index){
/*		$(obj).parents("tr").find(".td-status").prepend('<a style="text-decoration:none" onClick="active_stop(this)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
*/		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">反馈</span>');
		$(obj).remove();
		layer.msg('反馈截止，活动到此结束!',{icon: 5,time:1000});
	});
}
/*活动-反馈结束*/
function active_feedback_start(obj){
	layer.confirm('确认要启用吗？',function(index){
		$(obj).parents("tr").find(".td-status").prepend('<span class="label label-success radius">报名</span>');
		$(obj).parents("tr").find(".td-status").html('<span class="label label-success radius">报名</span>');
		$(obj).remove();
		layer.msg('已切换!',{icon: 6,time:1000});
	});
}
/*活动-报名结束*/
function active_sign_stop(obj){
	layer.confirm('确认要结束报名吗？',function(index){
/*		$(obj).parents("tr").find(".td-status").prepend('<a style="text-decoration:none" onClick="active_stop(this)" href="javascript:;" title="启用"><i class="Hui-iconfont">&#xe6e1;</i></a>');
*/		$(obj).parents("tr").find(".td-status").html('<span class="label label-defaunt radius">满额</span>');
		$(obj).remove();
		layer.msg('报名结束!',{icon: 5,time:1000});
	});
}

/*用户-编辑*/
function member_edit(title,url,id,w,h){
	layer_show(title,url,w,h);
}
/*密码-修改*/
function change_password(title,url,id,w,h){
	layer_show(title,url,w,h);	
}
/*用户-删除*/
/*function member_del(obj,id){
	layer.confirm('确认要删除吗？',function(index){
		$(obj).parents("tr").remove();
		layer.msg('已删除!',{icon:1,time:1000});
	});
}*/
//人员列表------
//----page
$(function(){
	
	$.Huitab("#tab-system .tabBar span","#tab-system .tabCon","current","click","0");
});
//page----


/*活动-添加*/
function active_add(title,url,w,h){
	layer_show(title,url,w,h);
}
/*报名表提交前检查*/
function member_add_submit(){
	layer.confirm('我已确认所填信息无误！',function(index){
		/*$(obj).parents("tr").remove();*/
		layer.msg('报名成功!分组信息将以邮件形式发送到您的邮箱，请耐心等待，如有疑问，请咨询活动相关负责人',{icon:1,time:2000});
	});
}
