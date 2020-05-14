package com.entity;

import com.util.VeDate;

public class Files {
	private String filesid = "F" + VeDate.getStringId();// 生成主键编号
	private String usersid;// 发布人
	private String filesname;// 文件名称
	private String cateid;// 知识类型
	private String fileurl;// 文件地址
	private String addtime;// 发布日期
	private String hits;// 点击数
	private String num;// 下载次数
	private String status;// 状态
	private String contents;// 简介
	private String realname;// 映射数据
	private String catename;// 映射数据

	public String getFilesid() {
		return filesid;
	}

	public void setFilesid(String filesid) {
		this.filesid = filesid;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getFilesname() {
		return this.filesname;
	}

	public void setFilesname(String filesname) {
		this.filesname = filesname;
	}

	public String getCateid() {
		return this.cateid;
	}

	public void setCateid(String cateid) {
		this.cateid = cateid;
	}

	public String getFileurl() {
		return this.fileurl;
	}

	public void setFileurl(String fileurl) {
		this.fileurl = fileurl;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getHits() {
		return this.hits;
	}

	public void setHits(String hits) {
		this.hits = hits;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getCatename() {
		return this.catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Files [filesid=" + this.filesid + ", usersid=" + this.usersid + ", filesname=" + this.filesname + ", cateid=" + this.cateid
				+ ", fileurl=" + this.fileurl + ", addtime=" + this.addtime + ", hits=" + this.hits + ", num=" + this.num + ", status="
				+ this.status + ", contents=" + this.contents + ", realname=" + this.realname + ", catename=" + this.catename + "]";
	}

}
