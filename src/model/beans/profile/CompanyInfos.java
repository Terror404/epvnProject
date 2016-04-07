package model.beans.profile;

public class CompanyInfos {
	private Integer idCompanyInfos;
	private String companyName;
	private Integer sirenNum;
	private String physicalAddress;
	private String zipCode;
	private String city;
	private String country;
	
	public Integer getIdCompanyInfos() {
		return idCompanyInfos;
	}
	public void setIdCompanyInfos(Integer idCompanyInfos) {
		this.idCompanyInfos = idCompanyInfos;
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
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}

}
