package me.theegg.semis.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class ConsumeVips {

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "barcode")
	private Commodity commodity;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "vipid")
	private Vips vips;
	// 在要关联的数据库实体类中，
	// 把关联的属性名当作被关连实体类的对象来使用
	
	@Id
	private Long consumeid;

	public Vips getVipid() {
		return vips;
	}

	public Commodity getBarcode() {
		return commodity;
	}

	@Column
	private int commoditynum;

	@Column
	@Temporal(TemporalType.TIMESTAMP)
	private Date createtime;

	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public void setVips(Vips vips) {
		this.vips = vips;
	}

	public Long getConsumeid() {
		return consumeid;
	}

	public void setConsumeid(Long consumeid) {
		this.consumeid = consumeid;
	}

	public int getCommoditynum() {
		return commoditynum;
	}

	public void setCommoditynum(int commoditynum) {
		this.commoditynum = commoditynum;
	}

	public void setBarcode(Commodity barcode) {
		this.commodity = barcode;
	}

	@Override
	public String toString() {
		return "ConsumeVips [commodity=" + commodity + ", vips=" + vips
				+ ", consumeid=" + consumeid + ", commoditynum=" + commoditynum
				+ ", createtime=" + createtime + "]";
	}

}
