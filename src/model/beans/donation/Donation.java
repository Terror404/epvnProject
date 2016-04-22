package model.beans.donation;

import java.util.ArrayList;
import java.util.Date;

import model.beans.profile.CompanyInfos;
import model.beans.profile.User;
import model.beans.project.Project;
import model.beans.project.SubProject;

public class Donation {
	
	private Integer idDonation;
	private TypeDonation typeDonation;
	private String firstName;
	private String lastName;
	private String mailAddress;
	private double value;
	private String moneyType;
	private String phoneNumber;
	private Date submitDate;
	private Project project;
	private SubProject subProject;
	private String address;
	private String zipCode;
	private String city;
	private CompanyInfos companyInfos;
	private String materialDonation;
	private User user;
	private ArrayList<SubProject> subProjectList;
	public Integer getIdDonation() {
		return idDonation;
	}
	public void setIdDonation(Integer idDonation) {
		this.idDonation = idDonation;
	}
	public TypeDonation getTypeDonation() {
		return typeDonation;
	}
	public void setTypeDonation(TypeDonation typeDonation) {
		this.typeDonation = typeDonation;
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
	public String getMailAddress() {
		return mailAddress;
	}
	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}
	public double getValue() {
		return value;
	}
	public void setValue(double value) {
		this.value = value;
	}
	public String getMoneyType() {
		return moneyType;
	}
	public void setMoneyType(String moneyType) {
		this.moneyType = moneyType;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public Date getSubmitDate() {
		return submitDate;
	}
	public void setSubmitDate(Date submitDate) {
		this.submitDate = submitDate;
	}
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public SubProject getSubProject() {
		return subProject;
	}
	public void setSubProject(SubProject subProject) {
		this.subProject = subProject;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public CompanyInfos getCompanyInfos() {
		return companyInfos;
	}
	public void setCompanyInfos(CompanyInfos companyInfos) {
		this.companyInfos = companyInfos;
	}
	public String getMaterialDonation() {
		return materialDonation;
	}
	public void setMaterialDonation(String materialDonation) {
		this.materialDonation = materialDonation;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public ArrayList<SubProject> getSubProjectList() {
		return subProjectList;
	}
	public void setSubProjectList(ArrayList<SubProject> subProjectList) {
		this.subProjectList = subProjectList;
	}
	
}
