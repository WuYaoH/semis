package me.theegg.semis.form;

import java.util.Date;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public class VipsForm {
	private Long vipid;// 会员编号
	private String name;// 会员姓名
	private int age;// 会员年龄
	private Byte sex;// 会员性别
	private String profession;
	@Email
	private String email;
	private String telnum;
	private String location;
	@DateTimeFormat(iso = ISO.DATE)
	private Date jointime;
	private int score;

	public Long getVipid() {
		return vipid;
	}

	public void setVipid(Long vipid) {
		this.vipid = vipid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Byte getSex() {
		return sex;
	}

	public void setSex(Byte sex) {
		this.sex = sex;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelnum() {
		return telnum;
	}

	public void setTelnum(String telnum) {
		this.telnum = telnum;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public Date getJointime() {
		return jointime;
	}

	public void setJointime(Date jointime) {
		this.jointime = jointime;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "VipsForm [vipid=" + vipid + ", name=" + name + ", age=" + age
				+ ", sex=" + sex + ", profession=" + profession + ", email="
				+ email + ", telnum=" + telnum + ", location=" + location
				+ ", jointime=" + jointime + ", score=" + score + "]";
	}
	
	
}
