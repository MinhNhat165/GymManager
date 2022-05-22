package com.GymManager.Entity;

import java.io.Serializable;

import javax.persistence.*;

import com.GymManager.CompositePK.SchedulePK;

@Entity
@Table(name = "TKB_LOP")
public class ScheduleEntity {
	@Id
	@GeneratedValue(strategy = javax.persistence.GenerationType.IDENTITY)
	@Column(name = "Ma", unique = true, nullable = false)

	private Integer id;

	@ManyToOne
	@JoinColumn(name = "MaLop")
	private ClassEntity classEntity;
	@Column(name = "Thu")
	private Integer day;
	@Column(name = "Buoi")
	private int session;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ClassEntity getClassEntity() {
		return classEntity;
	}

	public void setClassEntity(ClassEntity classEntity) {
		this.classEntity = classEntity;
	}

	public Integer getDay() {
		return day;
	}

	public void setDay(Integer day) {
		this.day = day;
	}

	public int getSession() {
		return session;
	}

	public void setSession(int session) {
		this.session = session;
	}
	
	

	public ScheduleEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ScheduleEntity(ClassEntity classEntity, Integer day, int session) {
		super();
		this.classEntity = classEntity;
		this.day = day;
		this.session = session;
	}

}
