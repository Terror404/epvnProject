package model.beans.project;

public class SubProject {

	private Integer idSubProject;
	private String title;
	private String description;
	private double goal;
	private double actualAchievedGoal;
	private Project project;
	private Integer numberSubProject;
	private String author;
	public Integer getIdSubProject() {
		return idSubProject;
	}
	public void setIdSubProject(Integer idSubProject) {
		this.idSubProject = idSubProject;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
	public Project getProject() {
		return project;
	}
	public void setProject(Project project) {
		this.project = project;
	}
	public Integer getNumberSubProject() {
		return numberSubProject;
	}
	public void setNumberSubProject(Integer numberSubProject) {
		this.numberSubProject = numberSubProject;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
}
