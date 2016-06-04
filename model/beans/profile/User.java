package model.beans.profile;

import java.util.Date;

public class User {
	private Integer idUser;
	private Integer role;
	private String firstName;
	private String lastName;
	private String mailAddress;
	private String password;
	private Integer phoneNumber;
	private Date creationDate;
	private Boolean adherent;
	private Date dateAdherent;
	private Integer adminLevel;
	private String physicalAddress;
	private String zipCode;
	private String city;
	private String companyName;
	private Integer sirenNum;
	
	public Integer getIdUser() {
		return idUser;
	}
	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}
	public Integer getRole() {
		return role;
	}
	public void setRole(Integer role) {
		this.role = role;
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public Date getDateAdherent() {
		return dateAdherent;
	}
	public void setDateAdherent(Date dateAdherent) {
		this.dateAdherent = dateAdherent;
	}
	public Integer getAdminLevel() {
		return adminLevel;
	}
	public void setAdminLevel(Integer adminLevel) {
		this.adminLevel = adminLevel;
	}
	public String getPhysicalAddress() {
		return physicalAddress;
	}
	public void setPhysicalAddress(String physicalAddress) {
		this.physicalAddress = physicalAddress;
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
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public Integer getSirenNum() {
		return sirenNum;
	}
	public void setSirenNum(Integer sirenNum) {
		this.sirenNum = sirenNum;
	}
	

}
