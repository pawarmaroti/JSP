package com.maroti.el.model;

public class Employee implements Person{
	private int eid;
	private String name;
	private Address addres;

	
	
	public int getEid() {
		return eid;
	}

	public void setEid(int eid) {
		this.eid = eid;
	}

	public Address getAddres() {
		return addres;
	}

	public void setAddres(Address addres) {
		this.addres = addres;
	}
	
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name=name;
	}

	public String toString()
	{
		return "ID : " + eid + " Name : " + name + " Address : "+ addres;
	}
}
