$(function() {

$("#filesname").blur(
		function() {
			$("#filesname_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#filesname").after("<span id='filesname_msg' style='color: red'>文件名称不能为空</span>");
			}
	});

$("#cateid").blur(
		function() {
			$("#cateid_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#cateid").after("<span id='cateid_msg' style='color: red'>知识类型不能为空</span>");
			}
	});

$("#fileurl").blur(
		function() {
			$("#fileurl_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#fileurl").after("<span id='fileurl_msg' style='color: red'>文件地址不能为空</span>");
			}
	});

$("#contents").blur(
		function() {
			$("#contents_msg").empty();
			var name = $(this).val();
			if (name == "" || name == null) {
				$("#contents").after("<span id='contents_msg' style='color: red'>简介不能为空</span>");
			}
	});







$('#sub').click(function(){
var filesname = $("#filesname").val();
var cateid = $("#cateid").val();
var fileurl = $("#fileurl").val();
var contents = $("#contents").val();
$("#filesname_msg").empty();
$("#cateid_msg").empty();
$("#fileurl_msg").empty();
$("#contents_msg").empty();
if (filesname == "" || filesname == null) {
	$("#filesname").after("<span id='filesname_msg' style='color: red'>文件名称不能为空</span>");
	return false;
}
if (cateid == "" || cateid == null) {
	$("#cateid").after("<span id='cateid_msg' style='color: red'>知识类型不能为空</span>");
	return false;
}
if (fileurl == "" || fileurl == null) {
	$("#fileurl").after("<span id='fileurl_msg' style='color: red'>文件地址不能为空</span>");
	return false;
}
if (contents == "" || contents == null) {
	$("#contents").after("<span id='contents_msg' style='color: red'>简介不能为空</span>");
	return false;
}
});
$('#res').click(function() {
$("#filesname_msg").empty();
$("#cateid_msg").empty();
$("#fileurl_msg").empty();
$("#contents_msg").empty();
});

});
