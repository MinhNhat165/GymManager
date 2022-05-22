package com.GymManager.CompositePK;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import com.GymManager.Entity.ClassEntity;

public class SchedulePK implements Serializable {

	private ClassEntity classEntity;
	private Integer day;

	public SchedulePK() {
		super();
		// TODO Auto-generated constructor stub
	}

}
