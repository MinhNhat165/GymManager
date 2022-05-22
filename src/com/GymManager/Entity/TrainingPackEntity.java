package com.GymManager.Entity;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "GOITAP")
public class TrainingPackEntity {
	@Id
	@Column(name = "MaGoi")
	private String packID;

	@Column(name = "TenGoi")
	private String packName;

	@Column(name = "ThoiHanGoi")
	private int packDuration;

	@Column(name = "TrangThai")
	private boolean status;

	@ManyToOne
	@JoinColumn(name = "LoaiGoi")
	private TrainingPackTypeEntity trainingPack;

	@Column(name = "GiaTien")
	private float money;

	@OneToMany(mappedBy = "trainingPack")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<ClassEntity> classList;

	public String getPackID() {
		return packID;
	}

	public void setPackID(String packID) {
		this.packID = packID;
	}

	public String getPackName() {
		return packName;
	}

	public void setPackName(String packName) {
		this.packName = packName;
	}

	public int getPackDuration() {
		return packDuration;
	}

	public void setPackDuration(int packDuration) {
		this.packDuration = packDuration;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public TrainingPackTypeEntity getTrainingPack() {
		return trainingPack;
	}

	public void setTrainingPack(TrainingPackTypeEntity trainingPack) {
		this.trainingPack = trainingPack;
	}

	public float getMoney() {
		return money;
	}

	public void setMoney(float money) {
		this.money = money;
	}

	public Collection<ClassEntity> getClassList() {
		return classList;
	}

	public void setClassList(Collection<ClassEntity> classList) {
		this.classList = classList;
	}
	
	

}
