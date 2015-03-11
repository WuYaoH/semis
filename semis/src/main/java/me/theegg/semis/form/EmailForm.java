package me.theegg.semis.form;

import java.util.Date;

public class EmailForm {
	private Date sendtime;
	private String title;
	private String content;

	public Date getSendtime() {
		return sendtime;
	}

	public void setSendtime(Date sendtime) {
		this.sendtime = sendtime;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "EmailForm [sendtime=" + sendtime + ", title=" + title
				+ ", content=" + content + "]";
	}
}
