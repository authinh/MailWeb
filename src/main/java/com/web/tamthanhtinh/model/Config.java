package com.web.tamthanhtinh.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "config")
public class Config implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int ID;
	
	private String module;
	
	private String configName;
	
	private String configValue;

	public Config() {
		super();
	}

	public Config(int iD, String module, String configName, String configValue) {
		super();
		ID = iD;
		this.module = module;
		this.configName = configName;
		this.configValue = configValue;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getModule() {
		return module;
	}

	public void setModule(String module) {
		this.module = module;
	}

	public String getConfigName() {
		return configName;
	}

	public void setConfigName(String configName) {
		this.configName = configName;
	}

	public String getConfigValue() {
		return configValue;
	}

	public void setConfigValue(String configValue) {
		this.configValue = configValue;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
