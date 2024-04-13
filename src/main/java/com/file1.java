package com;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity(name = "mytable")
public class file1 {
	@Id
	public int id;
	public String name;
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
	public file1(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public file1() {
		super();
		// TODO Auto-generated constructor stub
	}
}
