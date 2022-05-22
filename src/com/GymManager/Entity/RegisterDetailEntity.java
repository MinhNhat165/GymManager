package com.GymManager.Entity;

import java.io.Serializable;
import java.util.*;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import com.GymManager.CompositePK.RegisterDetailPK;

@Entity
@Table(name = "CT_TTDK")
public class RegisterDetailEntity implements Serializable {
	@EmbeddedId
	private RegisterDetailPK registerDetailId;
	@ManyToOne
	@MapsId("registerId")
	@JoinColumn(name = "MaTTDK")
	private RegisterEntity registerEntity;
	@ManyToOne
	@MapsId("classId")
	@JoinColumn(name = "MaLop")
	private ClassEntity classEntity;

	public RegisterDetailPK getRegisterDetailId() {
		return registerDetailId;
	}

	public void setRegisterDetailId(RegisterDetailPK registerDetailId) {
		this.registerDetailId = registerDetailId;
	}

	public RegisterEntity getRegisterEntity() {
		return registerEntity;
	}

	public void setRegisterEntity(RegisterEntity registerEntity) {
		this.registerEntity = registerEntity;
	}

	public ClassEntity getClassEntity() {
		return classEntity;
	}

	public void setClassEntity(ClassEntity classEntity) {
		this.classEntity = classEntity;
	}

	public RegisterDetailEntity() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RegisterDetailEntity(RegisterEntity registerEntity, ClassEntity classEntity) {
		super();
		this.registerDetailId = new RegisterDetailPK(registerEntity.getRegisterId(), classEntity.getClassId());
		this.registerEntity = registerEntity;
		this.classEntity = classEntity;
	}

}
