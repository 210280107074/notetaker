package com;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity(name = "notes")
public class note {

	@Id
    public int id;
    public String title;
    public String content;
    public Date createdDate;

    public note(String title, String content) {
        this.title = title;
        this.content = content;
        this.createdDate = new Date(); // Set current date as creation date
    }

    public note() {
		super();
		// TODO Auto-generated constructor stub
	}

	// Getters and setters
    public int getId() {
        return id;
    }

    public void setId() {
    	this.id = new Random().nextInt(1000);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate() {
        this.createdDate = new Date();
    }
}