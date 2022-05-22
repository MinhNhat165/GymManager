package com.GymManager.Entity;

import java.util.*;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "KM")
public class DiscountEntity {
	@Id
	@Column(name = "MaKM")
	private String discountId;
	
	@Column(name = "TenKM")
	private String discountName;
	
	@Column(name = "GiaTriKM")
	private float discountValue;
	
	@Column(name = "NgayBD")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/YYYY")
	private Date dateStart;
	
	@Column(name = "NgayKT")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "dd/MM/YYYY")
	private Date dateEnd;

	public String getDiscountId() {
		return discountId;
	}

	public void setDiscountId(String discountId) {
		this.discountId = discountId;
	}

	public String getDiscountName() {
		return discountName;
	}

	public void setDiscountName(String discountName) {
		this.discountName = discountName;
	}

	public float getDiscountValue() {
		return discountValue;
	}

	public void setDiscountValue(float discountValue) {
		this.discountValue = discountValue;
	}

	public Date getDateStart() {
		return dateStart;
	}

	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}

	public Date getDateEnd() {
		return dateEnd;
	}

	public void setDateEnd(Date dateEnd) {
		this.dateEnd = dateEnd;
	}

	public DiscountEntity(String discountId, String discountName, float discountValue, Date dateStart, Date dateEnd) {
		super();
		this.discountId = discountId;
		this.discountName = discountName;
		this.discountValue = discountValue;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
	}

	public DiscountEntity() {
		super();
	}


	
}
