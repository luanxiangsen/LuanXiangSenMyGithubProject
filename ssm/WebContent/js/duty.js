$(function() {

$("#dutyname").blur(
		function() {
			$("#dutyname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#dutyname").after("<span id='dutyname_msg' style='color: red'>职务名称不能为空</span>");
			}
	});

$("#memo").blur(
		function() {
			$("#memo_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
			}
	});







$('#sub').click(function(){
var dutyname = $("#dutyname").val();
var memo = $("#memo").val();
$("#dutyname_msg").empty();
$("#memo_msg").empty();
if (dutyname == "" || dutyname == null) {
	$("#dutyname").after("<span id='dutyname_msg' style='color: red'>职务名称不能为空</span>");
	return false;
}
if (memo == "" || memo == null) {
	$("#memo").after("<span id='memo_msg' style='color: red'>备注不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#dutyname_msg").empty();
$("#memo_msg").empty();
});

});
