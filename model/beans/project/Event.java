package model.beans.project;

public class Event {

	private Integer idEvent;
	private String titleEvent;
	private String descriptionEvent;
	private String partnersEvent;
	private String contactEvent;
	private Project project;

	public Integer getIdEvent() {
		return idEvent;
	}

	public void setIdEvent(Integer idEvent) {
		this.idEvent = idEvent;
	}

	public String getTitleEvent() {
		return titleEvent;
	}

	public void setTitleEvent(String titleEvent) {
		this.titleEvent = titleEvent;
	}

	public String getDescriptionEvent() {
		return descriptionEvent;
	}

	public void setDescriptionEvent(String descriptionEvent) {
		this.descriptionEvent = descriptionEvent;
	}

	public String getPartnersEvent() {
		return partnersEvent;
	}

	public void setPartnersEvent(String partnersEvent) {
		this.partnersEvent = partnersEvent;
	}

	public String getContactEvent() {
		return contactEvent;
	}

	public void setContactEvent(String contactEvent) {
		this.contactEvent = contactEvent;
	}

	public Project getProject() {
		return project;
	}

	public void setProject(Project project) {
		this.project = project;
	}
}