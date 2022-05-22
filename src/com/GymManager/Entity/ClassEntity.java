package com.GymManager.Entity;

import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "LOP")
public class ClassEntity {
	@Id
	@Column(name = "MaLop")
	private String classId;

	@Column(name = "NgayMoDK")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateOpen;

	@Column(name = "NgayDongDK")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateClose;

	@Column(name = "NgayBatDauLop")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dateStart;

	@Column(name = "SoLuongNguoiToiDa")
	private int maxPP;
	@ManyToOne
	@JoinColumn(name = "PT")
	private PTEntity PT;

	@ManyToOne
	@JoinColumn(name = "MaGoi")
	private TrainingPackEntity trainingPack;
	
	@OneToOne(mappedBy = "classEntity")
	private ScheduleEntity scheduleEntity;
	
	

	public ScheduleEntity getScheduleEntity() {
		return scheduleEntity;
	}

	public void setScheduleEntity(ScheduleEntity scheduleEntity) {
		this.scheduleEntity = scheduleEntity;
	}

	@OneToMany(mappedBy = "classEntity")
	@LazyCollection(LazyCollectionOption.FALSE)
	private Collection<RegisterDetailEntity> registerDetailList;

	public Collection<RegisterDetailEntity> getRegisterDetailList() {
		return registerDetailList;
	}

	public void setRegisterDetailList(Collection<RegisterDetailEntity> registerDetailList) {
		this.registerDetailList = registerDetailList;
	}

	public String getClassId() {
		return classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public Date getDateOpen() {
		return dateOpen;
	}

	public void setDateOpen(Date dateOpen) {
		this.dateOpen = dateOpen;
	}

	public Date getDateClose() {
		return dateClose;
	}

	public void setDateClose(Date dateClose) {
		this.dateClose = dateClose;
	}

	public Date getDateStart() {
		return dateStart;
	}

	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}

	public int getMaxPP() {
		return maxPP;
	}

	public void setMaxPP(int maxPP) {
		this.maxPP = maxPP;
	}

	public PTEntity getPT() {
		return PT;
	}

	public void setPT(PTEntity pT) {
		PT = pT;
	}

	public TrainingPackEntity getTrainingPack() {
		return trainingPack;
	}

	public void setTrainingPack(TrainingPackEntity trainingPack) {
		this.trainingPack = trainingPack;
	}

}
