package net.gslab.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import net.gslab.entity.User.ClassType;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.springframework.format.annotation.DateTimeFormat;

@Entity               //指明这是数据库实体
@Table(name = "t_user")  //对应数据库的表t_user
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)            //设置cache缓存
public class User {
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

	public enum Gender {
		Male(0), Female(1);
		private int value;

		private Gender(int value) {
			this.value = value;
		}

	}

	public enum ClassType {
		Jap(0), Eng(1), Net(2);
		private int value;

		private ClassType(int value) {
			this.value = value;
		}
	}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int userId;
	private String studentId;
	private String userName;
	private String QQ;
	@Enumerated(EnumType.STRING)
	private Gender gender;
	@Enumerated(EnumType.STRING)
	private Category category;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	@Enumerated(EnumType.STRING)
	private ClassType classType;
	private String grade;
	private int classNo;
	private String major;
	private String mobilePhone;
	private String email;
	private String ranking;
	private String lowCourse;
	private String highCourse;
	private String changeGroup;
	private String subtitle1;
	private String subtitle2;
	private String subtitle3;
	private String subtitle4;
	private String subtitle5;
	private String subtitle6;
	private Date setUpTime;
	private boolean checkUp;
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getQQ() {
		return QQ;
	}
	public void setQQ(String qQ) {
		QQ = qQ;
	}
	public Gender getGender() {
		return gender;
	}
	public void setGender(Gender gender) {
		this.gender = gender;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public ClassType getClassType() {
		return classType;
	}
	public void setClassType(ClassType classType) {
		this.classType = classType;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getMobilePhone() {
		return mobilePhone;
	}
	public void setMobilePhone(String mobilePhone) {
		this.mobilePhone = mobilePhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRanking() {
		return ranking;
	}
	public void setRanking(String ranking) {
		this.ranking = ranking;
	}
	public String getLowCourse() {
		return lowCourse;
	}
	public void setLowCourse(String lowCourse) {
		this.lowCourse = lowCourse;
	}
	public String getHighCourse() {
		return highCourse;
	}
	public void setHighCourse(String highCourse) {
		this.highCourse = highCourse;
	}
	public String getChangeGroup() {
		return changeGroup;
	}
	public void setChangeGroup(String changeGroup) {
		this.changeGroup = changeGroup;
	}
	public String getSubtitle1() {
		return subtitle1;
	}
	public void setSubtitle1(String subtitle1) {
		this.subtitle1 = subtitle1;
	}
	public String getSubtitle2() {
		return subtitle2;
	}
	public void setSubtitle2(String subtitle2) {
		this.subtitle2 = subtitle2;
	}
	public String getSubtitle3() {
		return subtitle3;
	}
	public void setSubtitle3(String subtitle3) {
		this.subtitle3 = subtitle3;
	}
	public String getSubtitle4() {
		return subtitle4;
	}
	public void setSubtitle4(String subtitle4) {
		this.subtitle4 = subtitle4;
	}
	public String getSubtitle5() {
		return subtitle5;
	}
	public void setSubtitle5(String subtitle5) {
		this.subtitle5 = subtitle5;
	}
	public String getSubtitle6() {
		return subtitle6;
	}
	public void setSubtitle6(String subtitle6) {
		this.subtitle6 = subtitle6;
	}
	public Date getSetUpTime() {
		return setUpTime;
	}
	public void setSetUpTime(Date setUpTime) {
		this.setUpTime = setUpTime;
	}
	public boolean isCheckUp() {
		return checkUp;
	}
	public void setCheckUp(boolean checkUp) {
		this.checkUp = checkUp;
	}
	
	
	


}
