package com.web.tamthanhtinh.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="person_info")
public class PersonInfo {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
    private String firstName;
    private String lastName;
    private int age;
    private int tel;
    private boolean sex;
    private String confess;
    private String mailAdress;
    private String extraParameter;

    public PersonInfo() {
    }
    
    public boolean isSex() {
		return sex;
	}


	public void setSex(boolean sex) {
		this.sex = sex;
	}




	public String getConfess() {
		return confess;
	}




	public void setConfess(String confess) {
		this.confess = confess;
	}




	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public String getMailAdress() {
        return mailAdress;
    }

    public void setMailAdress(String mailAdress) {
        this.mailAdress = mailAdress;
    }

    public String getExtraParameter() {
        return extraParameter;
    }

    public void setExtraParameter(String extraParameter) {
        this.extraParameter = extraParameter;
    }

    @Override
    public String toString() {
        return "PersonInfo{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", age=" + age +
                ", tel=" + tel +
                ", mailAdress='" + mailAdress + '\'' +
                ", extraParameter='" + extraParameter + '\'' +
                '}';
    }
}
