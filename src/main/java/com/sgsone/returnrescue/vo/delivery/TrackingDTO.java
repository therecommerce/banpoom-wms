package com.sgsone.returnrescue.vo.delivery;


import java.util.List;

public class TrackingDTO {
    private String item;
    private String from;
    private String to;
    private List<ProgressDTO> progress;
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public List<ProgressDTO> getProgress() {
		return progress;
	}
	public void setProgress(List<ProgressDTO> progress) {
		this.progress = progress;
	}
}
