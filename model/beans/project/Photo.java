package model.beans.project;

public class Photo {

	private Integer idPhoto;
	private Project project;
	private String pathPhoto;
	private String legendPhoto;

	public Integer getIdPhoto() {
		return idPhoto;
	}

	public void setIdPhoto(Integer idPhoto) {
		this.idPhoto = idPhoto;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}

	public String getPathPhoto() {
		return pathPhoto;
	}

	public void setPathPhoto(String pathPhoto) {
		this.pathPhoto = pathPhoto;
	}

	public String getLegendPhoto() {
		return legendPhoto;
	}

	public void setLegendPhoto(String legendPhoto) {
		this.legendPhoto = legendPhoto;
	}

}
