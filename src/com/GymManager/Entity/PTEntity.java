package com.GymManager.Entity;

import java.util.*;

import javax.persistence.*;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "PT")
public class PTEntity {
	@Id
	@Column(name = "MaPT")
	private String ptID;

	@Column(name = "HoTen")
	private String name;

	@Column(name = "Phai")
	private int gender;

	@Column(name = "CMND")
	private String identityCard;

	@Column(name = "DiaChi")
	private String address;

	@Column(name = "Email")
	private String email;

	@Column(name = "NgaySinh")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "YYYY-MM-dd")
	private Date birthday;

	@Column(name = "SDT")
	private String phoneNumber;

	@Column(name = "TrangThai")
	private int status;

	@OneToMany(mappedBy = "PT")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<ClassEntity> classList;

	public String getPtID() {
		return ptID;
	}

	public void setPtID(String ptID) {
		this.ptID = ptID;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getIdentityCard() {
		return identityCard;
	}

	public void setIdentityCard(String identityCard) {
		this.identityCard = identityCard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Collection<ClassEntity> getClassList() {
		return classList;
	}

	public void setClassList(Collection<ClassEntity> classList) {
		this.classList = classList;
	}

}
