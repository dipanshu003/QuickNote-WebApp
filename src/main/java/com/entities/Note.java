package com.entities;

import java.util.Date;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
public class Note {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "note_id")
	private int id;
	@Column(name = "note_title")
	private String title;
	@Column(name = "note_content",length = 10000)
	private String content;

	@Column(name = "added_date")
	@Temporal(TemporalType.DATE)
	private Date addedDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public Note(int id, String title, String content, Date addedDate) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.addedDate = addedDate;
	}

	public Note() {
		super();
	}

	@Override
	public String toString() {
		return "Note [id=" + id + ", title=" + title + ", content=" + content + ", addedDate=" + addedDate + "]";
	}

}
