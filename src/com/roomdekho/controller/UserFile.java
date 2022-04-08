package com.roomdekho.controller;

import org.springframework.web.multipart.MultipartFile;

public class UserFile {
	
	String name ;
	String city;
	String email;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	MultipartFile multipartfile[] ;
	
		
	public MultipartFile[] getMultipartfile() {
		return multipartfile;
	}
	public void setMultipartfile(MultipartFile[] multipartfile) {
		this.multipartfile = multipartfile;
	}
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	/*
	 * 
	 * Here try this
			<form action="test" method="post" enctype="multipart/form-data">
			<input type="file" name="multipartfile">
			<input type="file" name="multipartfile">
			<input type="submit">
			</form>
	 * 
	 * 
	 * 
	 * 
	 * 
	 * */
	
	
	
}
