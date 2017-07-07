package edu.seu.cs.model;

import org.springframework.stereotype.Component;

@Component
public class User {
	private int clientId;
	private int clientKind;
	private boolean isDouble;
	private String code;
	private String shortName;
	public int getClientId() {
		return clientId;
	}
	public void setClientId(int clientId) {
		this.clientId = clientId;
	}
	public int getClientKind() {
		return clientKind;
	}
	public void setClientKind(int clientKind) {
		this.clientKind = clientKind;
	}
	public boolean isDouble() {
		return isDouble;
	}
	public void setDouble(boolean isDouble) {
		this.isDouble = isDouble;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getShortName() {
		return shortName;
	}
	public void setShortName(String shortName) {
		this.shortName = shortName;
	}
	
	
	
}
