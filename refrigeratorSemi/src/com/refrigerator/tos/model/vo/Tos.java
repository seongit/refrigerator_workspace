package com.refrigerator.tos.model.vo;

import java.sql.Date;

/** @author Jaewon */

public class Tos {

	private int tosNo;
	private String tosCategory;
	private String tosPage;
	private String uploadDate; 
	private Date enrollDate;
	private Date modifyDate;
	private String tosNote;
	private String  tosTitle;
	private String  tosContent;

	public Tos() {}

	public Tos(int tosNo, String tosCategory, String tosPage, String uploadDate, Date enrollDate, Date modifyDate,
			String tosNote, String tosTitle, String tosContent) {
		super();
		this.tosNo = tosNo;
		this.tosCategory = tosCategory;
		this.tosPage = tosPage;
		this.uploadDate = uploadDate;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.tosNote = tosNote;
		this.tosTitle = tosTitle;
		this.tosContent = tosContent;
	}

	public Tos(int tosNo, String tosCategory, String tosPage, String tosNote, String tosTitle, String tosContent) {
		super();
		this.tosNo = tosNo;
		this.tosCategory = tosCategory;
		this.tosPage = tosPage;
		this.tosNote = tosNote;
		this.tosTitle = tosTitle;
		this.tosContent = tosContent;
	}

	public int getTosNo() {
		return tosNo;
	}

	public void setTosNo(int tosNo) {
		this.tosNo = tosNo;
	}

	public String getTosCategory() {
		return tosCategory;
	}

	public void setTosCategory(String tosCategory) {
		this.tosCategory = tosCategory;
	}

	public String getTosPage() {
		return tosPage;
	}

	public void setTosPage(String tosPage) {
		this.tosPage = tosPage;
	}

	public String getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getTosNote() {
		return tosNote;
	}

	public void setTosNote(String tosNote) {
		this.tosNote = tosNote;
	}

	public String getTosTitle() {
		return tosTitle;
	}

	public void setTosTitle(String tosTitle) {
		this.tosTitle = tosTitle;
	}

	public String getTosContent() {
		return tosContent;
	}

	public void setTosContent(String tosContent) {
		this.tosContent = tosContent;
	}

	@Override
	public String toString() {
		return "Tos [tosNo=" + tosNo + ", tosCategory=" + tosCategory + ", tosPage=" + tosPage + ", uploadDate="
				+ uploadDate + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", tosNote=" + tosNote
				+ ", tosTitle=" + tosTitle + ", tosContent=" + tosContent + "]";
	}
	
	
}
