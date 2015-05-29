package me.theegg.semis.domain;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.TemporalType;
import javax.persistence.Temporal;

@Entity
public class Vips {

	
	@Id
	private Long vipid;// 会员编号

	@OneToMany(cascade = CascadeType.ALL, mappedBy = "vips")
	private Set<ConsumeVips> consumeVips;

	public Set<ConsumeVips> getConsumeVips() {
		return consumeVips;
	}

	public void setConsumeVips(Set<ConsumeVips> consumeVips) {
		this.consumeVips = consumeVips;
	}


	@Column(nullable = false)
	private String name;// 会员姓名
	@Column
	private int age;// 会员年龄
	@Column
	private Byte sex;// 会员性别
	@Column(nullable = false)
	private String profession;
	@Column
	private String email;
	@Column
	private String telnum;
	@Column
	private String location;
	@Column
	@Temporal(TemporalType.TIMESTAMP)
	private Date jointime;
	@Column
	private int score;

	public Vips(Long id, String name, int age, Byte sex, String profession,
			String email, String telnum, String location, Date jointime,
			int score) {
		this.vipid = id;
		this.name = name;
		this.age = age;
		this.sex = sex;
		this.profession = profession;
		this.email = email;
		this.telnum = telnum;
		this.location = location;
		this.jointime = jointime;
		this.score = score;
	}

	public Vips() {

	}

	public Long getVipid() {
		return this.vipid;
	}

	public String getVipName() {
		return this.name;
	}

	public void setVipName(String name) {
		this.name = name;
	}

	public int getVipAge() {
		return this.age;
	}

	public void setVipAge(int age) {
		this.age = age;
	}

	public Byte getVipSex() {
		return this.sex;
	}

	public String getVipEmail() {
		return this.email;
	}

	public String getVipProfesssion() {
		return this.profession;
	}

	public String getVipTelnum() {
		return this.telnum;
	}

	public String getVipLocation() {
		return this.location;
	}

	public Date getVipJointime() {
		return this.jointime;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
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

	public void setVipid(Long vipid) {
		this.vipid = vipid;
	}

	@Override
	public String toString() {
		return "Vips [vipid=" + vipid + ", name=" + name + ", age=" + age
				+ ", sex=" + sex + ", profession=" + profession + ", email="
				+ email + ", telnum=" + telnum + ", location=" + location
				+ ", jointime=" + jointime + ", score=" + score + "]";
	}

}
