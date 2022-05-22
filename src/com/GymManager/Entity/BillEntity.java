package com.GymManager.Entity;

import java.util.*;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "HOADON")

/*
 * MaHD chả(8) NgayTao date MaKM char MaTK varchar TongTien money MaTTDK char(8)
 */
public class BillEntity {
	@Id
	@Column(name = "MaHD")
	private String billId;

	@Column(name = "NgayTao")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyy-MM-dd")
	private Date date;
	@Column(name = "TongTien")
	private float money;

	@ManyToOne
	@JoinColumn(name = "MaNV")
	private StaffEntity staff;

	@OneToOne
	@JoinColumn(name = "MaTTDK")
	private RegisterEntity register;

	public String getBillId() {
		return billId;
	}

	public void setBillId(String billId) {
		this.billId = billId;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public float getMoney() {
		return money;
	}

	public void setMoney(float money) {
		this.money = money;
	}

	public StaffEntity getStaff() {
		return staff;
	}

	public void setStaff(StaffEntity staff) {
		this.staff = staff;
	}

	public RegisterEntity getRegister() {
		return register;
	}

	public void setRegister(RegisterEntity register) {
		this.register = register;
	}

}
