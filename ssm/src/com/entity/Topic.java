package com.entity;

import com.util.VeDate;

public class Topic {
	private String topicid = "T" + VeDate.getStringId();// 生成主键编号
	private String usersid;// 评价人
	private String filesid;// 知识文件
	private String num;// 评分
	private String contents;// 内容
	private String addtime;// 发布日期
	private String username;// 映射数据
	private String filesname;// 映射数据

	public String getTopicid() {
		return topicid;
	}

	public void setTopicid(String topicid) {
		this.topicid = topicid;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getFilesid() {
		return this.filesid;
	}

	public void setFilesid(String filesid) {
		this.filesid = filesid;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFilesname() {
		return this.filesname;
	}

	public void setFilesname(String filesname) {
		this.filesname = filesname;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Topic [topicid=" + this.topicid + ", usersid=" + this.usersid + ", filesid=" + this.filesid + ", num=" + this.num
				+ ", contents=" + this.contents + ", addtime=" + this.addtime + ", username=" + this.username + ", filesname=" + this.filesname
				+ "]";
	}

}
