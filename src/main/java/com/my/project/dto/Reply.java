package com.my.project.dto;

import java.util.Date;

public class Reply {
	private int rnum;
	private int bnum;
	private String username;
	private String mid;
	private String content;
	private int restep;
	private int relevel;
	private Date regidate;
	private Date modidate;
	private String moditime;
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRestep() {
		return restep;
	}
	public void setRestep(int restep) {
		this.restep = restep;
	}
	public int getRelevel() {
		return relevel;
	}
	public void setRelevel(int relevel) {
		this.relevel = relevel;
	}
	public Date getRegidate() {
		return regidate;
	}
	public void setRegidate(Date regidate) {
		this.regidate = regidate;
	}
	public Date getModidate() {
		return modidate;
	}
	public void setModidate(Date modidate) {
		this.modidate = modidate;
	}
	public String getModitime() {
		return moditime;
	}
	public void setModitime(String moditime) {
		this.moditime = moditime;
	}
	@Override
	public String toString() {
		return "Reply [rnum=" + rnum + ", bnum=" + bnum + ", username=" + username + ", mid=" + mid + ", content="
				+ content + ", restep=" + restep + ", relevel=" + relevel + ", regidate=" + regidate + ", modidate="
				+ modidate + ", moditime=" + moditime + "]";
	}
	
}