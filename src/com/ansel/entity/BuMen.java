package com.ansel.entity;

public class BuMen {
	
	public int bmId;
	public String bmName;

	public int getId() {
		return bmId;
	}

	public void setId(int id) {
		this.bmId = id;
	}

	public String getName() {
		return bmName;
	}

	public void setName(String name) {
		this.bmName = name;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "[bmId: " + bmId + ", bmName: " + bmName + "]";
	}
	
}
