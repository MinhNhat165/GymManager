package com.GymManager.Entity;

import java.util.Date;
import java.util.Collection;

import javax.persistence.*;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "TAIKHOAN")
public class AccountEntity {
	@Id
	@Column(name = "Username")
	private String username;

	@Column(name = "Password")
	private String password;

	@Column(name = "TrangThai")
	private int status;

	@Column(name = "MaQuyen")
	private String policyId;

	@Column(name = "NgayTao")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyy-MM-dd")
	private Date dateCreate;

	@OneToOne(mappedBy = "account")
	@LazyCollection(LazyCollectionOption.FALSE)
	private CustomerEntity customer;
	@OneToMany(mappedBy = "account")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<RegisterEntity> registerEntityList;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getPolicyId() {
		return policyId;
	}

	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}

	public Date getDateCreate() {
		return dateCreate;
	}

	public void setDateCreate(Date dateCreate) {
		this.dateCreate = dateCreate;
	}

	public CustomerEntity getCustomer() {
		return customer;
	}

	public void setCustomer(CustomerEntity customer) {
		this.customer = customer;
	}

	public Collection<RegisterEntity> getRegisterEntityList() {
		return registerEntityList;
	}

	public void setRegisterEntityList(Collection<RegisterEntity> registerEntityList) {
		this.registerEntityList = registerEntityList;
	}

}
