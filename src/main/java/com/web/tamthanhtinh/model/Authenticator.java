package com.web.tamthanhtinh.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Authenticator extends PersonInfo {
	
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
    private String userName;
    private String password;

    public String getUserName() {
        return userName;
    }

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

	@Override
	public String toString() {
		return "Authenticator [id=" + id + ", userName=" + userName + ", password=" + password + ", isSex()=" + isSex()
				+ ", Confess()=" + getConfess() + ", FirstName()=" + getFirstName() + ", LastName()="
				+ getLastName() + ", Age()=" + getAge() + ", Tel()=" + getTel() + ", MailAdress()="
				+ getMailAdress() + ", ExtraParameter()=" + getExtraParameter() + "]";
	}
    
    
}
