package me.theegg.semis.domain;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/*
 * 商品
 */
@Entity
public class Commodity {


	@Id
	private String barcode;
	
	
	@OneToMany(cascade=CascadeType.ALL, mappedBy = "commodity")
	private Set<ConsumeVips> consumeVips;
	


	@Column(nullable = false)
	private String name;
	@Column(nullable = false, scale = 2)
	private BigDecimal price;
	@Column(nullable = true, scale = 2)
	private float agio;
	@Column
	@Temporal(TemporalType.TIMESTAMP)
	private Date purchasetime;

	public Commodity() {
	}

	public Commodity(String barcode, String name, BigDecimal price, float agio,
			Date purchasetime) {
		this.barcode = barcode;
		this.name = name;
		this.price = price;
		this.agio = agio;
		this.purchasetime = purchasetime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public float getAgio() {
		return agio;
	}

	public void setAgio(float agio) {
		this.agio = agio;
	}

	public Date getPurchasetime() {
		return purchasetime;
	}

	public void setPurchasetime(Date purchasetime) {
		this.purchasetime = purchasetime;
	}


	public String getBarcode() {
		return barcode;
	}

	public Set<ConsumeVips> getConsumeVips() {
		return consumeVips;
	}

	public void setConsumeVips(Set<ConsumeVips> consumeVips) {
		this.consumeVips = consumeVips;
	}

	@Override
	public String toString() {
		return "Commodity [barcode=" + barcode + ", name=" + name + ", price="
				+ price + ", agio=" + agio + ", purchasetime=" + purchasetime
				+ "]";
	}
}
