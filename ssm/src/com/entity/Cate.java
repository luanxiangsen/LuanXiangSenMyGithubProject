package com.entity;

import com.util.VeDate;

public class Cate {
	private String cateid = "C" + VeDate.getStringId();// 生成主键编号
	private String catename;// 类别名称
	private String memo;// 备注

	public String getCateid() {
		return cateid;
	}

	public void setCateid(String cateid) {
		this.cateid = cateid;
	}

	public String getCatename() {
		return this.catename;
	}

	public void setCatename(String catename) {
		this.catename = catename;
	}

	public String getMemo() {
		return this.memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	// 重载方法 生成JSON类型字符串
	@Override
	public String toString() {
		return "Cate [cateid=" + this.cateid + ", catename=" + this.catename + ", memo=" + this.memo + "]";
	}

}
