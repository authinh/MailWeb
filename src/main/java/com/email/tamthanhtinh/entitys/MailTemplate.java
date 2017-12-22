package com.email.tamthanhtinh.entitys;

import java.util.ArrayList;
import java.util.List;

import com.web.tamthanhtinh.model.PersonInfo;

public class MailTemplate {
    private String subject;
    private String addressList;
    private String content;
    private String singture;

    
    
    public MailTemplate() {
    }

    
    
    public String getAddressList() {
		return addressList;
	}



	public void setAddressList(String addressList) {
		this.addressList = addressList;
	}



	public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }


    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSingture() {
        return singture;
    }

    public void setSingture(String singture) {
        this.singture = singture;
    }
    
    
}
