package com.maroti.beans;

import java.io.Serializable;

public class Student implements Serializable {
	
	private int id;
	private String name;
	private String addr;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public Student()
	{
		super();
	}
	

	
}
