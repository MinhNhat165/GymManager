package com.GymManager.CompositePK;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class RegisterDetailPK implements Serializable {
	@Column(name = "MaLop")
	private String classId;
	@Column(name = "MaTTDK")
	private String  registerId;
	
	public RegisterDetailPK() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RegisterDetailPK(String classId, String registerId) {
		super();
		this.classId = classId;
		this.registerId = registerId;
	}
	
}
