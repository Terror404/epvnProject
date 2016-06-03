package model.beans.donation;

import java.util.ArrayList;
import java.util.Date;

import model.beans.profile.User;
import model.beans.project.Project;
import model.beans.project.SubProject;

public class Donation {

	private Integer idDonation;
	private String typeDonation;
	private String firstName;
	private String lastName;
	private String companyName;
	private Integer siren;
	private String mailAddress;
	private String password;
	private double value;
	private String phoneNumber;
	private Date submitDate;
	private Project project;
	private SubProject subProject;
	private String address;
	private String zipCode;
	private String city;
	private String materialDonation;
	private Integer childrenNumber;
	private Integer frequency;
	private String attachedFile;
	private String receipt;
	private User user;
	private ArrayList<SubProject> subProjectList;

	public Integer getIdDonation() {
		return idDonation;
	}

	public void setIdDonation(Integer idDonation) {
		this.idDonation = idDonation;
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

	public String getTypeDonation() {
		return typeDonation;
	}

	public void setTypeDonation(String typeDonation) {
		this.typeDonation = typeDonation;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public Integer getSiren() {
		return siren;
	}

	public void setSiren(Integer siren) {
		this.siren = siren;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getChildrenNumber() {
		return childrenNumber;
	}

	public void setChildrenNumber(Integer childrenNumber) {
		this.childrenNumber = childrenNumber;
	}

	public Integer getFrequency() {
		return frequency;
	}

	public void setFrequency(Integer frequency) {
		this.frequency = frequency;
	}

	public String getAttachedFile() {
		return attachedFile;
	}

	public void setAttachedFile(String attachedFile) {
		this.attachedFile = attachedFile;
	}

	public String getReceipt() {
		return receipt;
	}

	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}

}
