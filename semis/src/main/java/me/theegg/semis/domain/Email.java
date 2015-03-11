package me.theegg.semis.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Email {
	@Id
	@GeneratedValue
	private Long emailid;

	@Column
	private String sendtime;
	@Column
	private String title;
	@Column
	private String content;

	public Email(String sendtime, String title, String content) {
		this.sendtime = sendtime;
		this.content = content;
		this.title = title;
	}

	public Long getEmailid() {
		return emailid;
	}

	public void setEmailid(Long emailid) {
		this.emailid = emailid;
	}

	public Email() {
	}

	public String getSendtime() {
		return sendtime;
	}

	public void setSendtime(String sendtime) {
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
		return "Email [emailid=" + emailid + ", sendtime=" + sendtime
				+ ", title=" + title + ", content=" + content + "]";
	}

}
