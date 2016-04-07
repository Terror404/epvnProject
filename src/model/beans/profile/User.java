package model.beans.profile;

import java.util.Date;

public class User {
	private Integer idUser;
	private String firstName;
	private String lastName;
	private String mailAddress;
	private Integer phoneNumber;
	private Date creationDate;
	private Boolean adherent;
	private Integer adminLevel;
	private String physicalAddress;
	private String zipCode;
	private String city;
	private String country;
	private CompanyInfos companyInfos;
	public Integer getIdUser() {
		return idUser;
	}
	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
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
	public Integer getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(Integer phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public Date getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(Date creationDate) {
		this.creationDate = creationDate;
	}
	public Boolean getAdherent() {
		return adherent;
	}
	public void setAdherent(Boolean adherent) {
		this.adherent = adherent;
	}
	public Integer getAdminLevel() {
		return adminLevel;
	}
	public void setAdminLevel(Integer adminLevel) {
		this.adminLevel = adminLevel;
	}
	public String getPhisicalAddress() {
		return physicalAddress;
	}
	public void setPhisicalAddress(String phisicalAddress) {
		this.physicalAddress = phisicalAddress;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public CompanyInfos getCompanyInfos() {
		return companyInfos;
	}
	public void setCompanyInfos(CompanyInfos companyInfos) {
		this.companyInfos = companyInfos;
	}
	

}
