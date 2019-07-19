package com.skilldistillery.edgemarketing.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "comments")
public class Comment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id; 
	
	@Column(name="comment")
	private String comment;
	
	@JsonIgnore
	@ManyToOne
	@JoinColumn(name="user_id")
	private Client client;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

//	@JsonIgnore
	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	@Override
	public String toString() {
		return "Comment [id=" + id + ", comment=" + comment + ", client=" + client + "]";
	}

	public Comment(int id, String comment, Client client) {
		super();
		this.id = id;
		this.comment = comment;
		this.client = client;
	}
	
	public Comment() {
		
	}
	
}
