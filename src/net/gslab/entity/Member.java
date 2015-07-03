package net.gslab.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.springframework.format.annotation.DateTimeFormat;


@Entity           //指明这是数据库实体
@Table(name="t_member")  //对应数据库的表t_member
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)            //设置cache缓存
public class Member extends BaseDomain {
	public enum Category {
		FEP(0), XNN(1), VLAB(2), OME(3), ACA(4);
		private int value = 0;

		private Category(int value) { // 必须是private的，否则编译错误
			this.value = value;
		}

		public static Category valueOf(int value) { // 手写的从int到enum的转换函数
			switch (value) {
			case 0:
				return FEP;
			case 1:
				return XNN;
			case 2:
				return VLAB;
			case 3:
				return OME;
			case 4:
				return ACA;
			default:
				return null;
			}
		}

		public int value() {
			return this.value;
		}
		
	}
	
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    private int memberId;
	
	private String grade;
	private String memberName;
	private Date birthDate;
	private String nowAddress;
	private String address;
	private String expProject;
	private String skill;
	private String award;
	private String selfEvaluation;
	private Category category;
	private String imgUrl;
	private String loadname;
	private String password;
	private String email;
	private String mobilePhone;
	private String QQ;
	private String gender;
	private String major;
	private String classNo;
	public String getMobilePhone() {
		return mobilePhone;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getClassNo() {
		return classNo;
	}
	public void setClassNo(String classNo) {
		this.classNo = classNo;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLoadname() {
		return loadname;
	}
	public void setLoadname(String loadname) {
		this.loadname = loadname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public String getNowAddress() {
		return nowAddress;
	}
	public void setNowAddress(String nowAddress) {
		this.nowAddress = nowAddress;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getExpProject() {
		return expProject;
	}
	public void setExpProject(String expProject) {
		this.expProject = expProject;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getAward() {
		return award;
	}
	public void setAward(String award) {
		this.award = award;
	}
	public String getSelfEvaluation() {
		return selfEvaluation;
	}
	public void setSelfEvaluation(String selfEvaluation) {
		this.selfEvaluation = selfEvaluation;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	

}
