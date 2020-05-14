$(function() {

$("#deptname").blur(
		function() {
			$("#deptname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#deptname").after("<span id='deptname_msg' style='color: red'>部门名称不能为空</span>");
			}
	});

$("#manager").blur(
		function() {
			$("#manager_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#manager").after("<span id='manager_msg' style='color: red'>负责人不能为空</span>");
			}
	});

$("#contact").blur(
		function() {
			$("#contact_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contact").after("<span id='contact_msg' style='color: red'>联系方式不能为空</span>");
			}
	});

$("#address").blur(
		function() {
			$("#address_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#address").after("<span id='address_msg' style='color: red'>办公地址不能为空</span>");
			}
	});







$('#sub').click(function(){
var deptname = $("#deptname").val();
var manager = $("#manager").val();
var contact = $("#contact").val();
var address = $("#address").val();
$("#deptname_msg").empty();
$("#manager_msg").empty();
$("#contact_msg").empty();
$("#address_msg").empty();
if (deptname == "" || deptname == null) {
	$("#deptname").after("<span id='deptname_msg' style='color: red'>部门名称不能为空</span>");
	return false;
}
if (manager == "" || manager == null) {
	$("#manager").after("<span id='manager_msg' style='color: red'>负责人不能为空</span>");
	return false;
}
if (contact == "" || contact == null) {
	$("#contact").after("<span id='contact_msg' style='color: red'>联系方式不能为空</span>");
	return false;
}
if (address == "" || address == null) {
	$("#address").after("<span id='address_msg' style='color: red'>办公地址不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#deptname_msg").empty();
$("#manager_msg").empty();
$("#contact_msg").empty();
$("#address_msg").empty();
});

});
