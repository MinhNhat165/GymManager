package com.GymManager.Entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LOAIGOI")
public class TrainingPackTypeEntity {
	@Id
	@Column(name = "MaLoai")
	private String packID;
	
	@Column(name = "TenLoai")
	private String packName;
	
	@Column(name = "MoTa")
	private String describe;
	
	@OneToMany(mappedBy = "trainingPack")
	private Collection<TrainingPackEntity> trainingPackList;

	public String getPackID() {
		return packID;
	}

	public void setPackID(String packID) {
		this.packID = packID;
	}

	public Collection<TrainingPackEntity> getTrainingPackList() {
		return trainingPackList;
	}

	public void setTrainingPackList(Collection<TrainingPackEntity> trainingPackList) {
		this.trainingPackList = trainingPackList;
	}

	public String getPackName() {
		return packName;
	}

	public void setPackName(String packName) {
		this.packName = packName;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public TrainingPackTypeEntity(String packID, String packName, String describe) {
		super();
		this.packID = packID;
		this.packName = packName;
		this.describe = describe;
	}

	public TrainingPackTypeEntity() {
		super();
	}

	
}
