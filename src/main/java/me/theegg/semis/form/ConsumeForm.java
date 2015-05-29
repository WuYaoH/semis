package me.theegg.semis.form;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;


public class ConsumeForm {
	private String barcode;
	private Long vipid;
	private Long consumeid;
	private int commoditynum;
	@DateTimeFormat(iso = ISO.DATE)
	private Date createtime;

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public Long getVipid() {
		return vipid;
	}

	public void setVipid(Long vipid) {
		this.vipid = vipid;
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


	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	@Override
	public String toString() {
		return "ConsumeForm [barcode=" + barcode + ", vipid=" + vipid
				+ ", consumeid=" + consumeid + ", commoditynum=" + commoditynum
				+ ", createtime="
				+ createtime + "]";
	}
}
