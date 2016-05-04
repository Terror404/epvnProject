package model.beans.project;

import java.util.Date;

public class Project {
	
	private Integer idProject;
	private String titleProject;
	private String objectifDescription;
	private String concernedPublic;
	private String descriptionProject;
	private String partnersProject;
	private double goal;
	private double actualAchievedGoal;
	private String author;
	private CategoryProject categoryProject;
	private Date beginDate;
	private Date endDate;
	public Integer getIdProject() {
		return idProject;
	}
	public void setIdProject(Integer idProject) {
		this.idProject = idProject;
	}
	public String getTitleProject() {
		return titleProject;
	}
	public void setTitleProject(String titleProject) {
		this.titleProject = titleProject;
	}
	public String getDescriptionProject() {
		return descriptionProject;
	}
	public void setDescriptionProject(String descriptionProject) {
		this.descriptionProject = descriptionProject;
	}
	public double getGoal() {
		return goal;
	}
	public void setGoal(double goal) {
		this.goal = goal;
	}
	public double getActualAchievedGoal() {
		return actualAchievedGoal;
	}
	public void setActualAchievedGoal(double actualAchievedGoal) {
		this.actualAchievedGoal = actualAchievedGoal;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public CategoryProject getCategoryProject() {
		return categoryProject;
	}
	public void setCategoryProject(CategoryProject categoryProject) {
		this.categoryProject = categoryProject;
	}
	public Date getBeginDate() {
		return beginDate;
	}
	public void setBeginDate(Date beginDate) {
		this.beginDate = beginDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public String getObjectifDescription() {
		return objectifDescription;
	}
	public void setObjectifDescription(String objectifDescription) {
		this.objectifDescription = objectifDescription;
	}
	public String getConcernedPublic() {
		return concernedPublic;
	}
	public void setConcernedPublic(String concernedPublic) {
		this.concernedPublic = concernedPublic;
	}
	public String getPartnersProject() {
		return partnersProject;
	}
	public void setPartnersProject(String partnersProject) {
		this.partnersProject = partnersProject;
	}
	
	

}
