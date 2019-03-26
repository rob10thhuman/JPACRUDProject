package com.skilldistillery.edgemarketing.data;

public class ClosedAndConcessionsAvg {
	private Double closedAvg; 
	private Double concessionsAvg;
	private Double avgDom; 
	
	
	public ClosedAndConcessionsAvg(Double closedAvg, Double concessionsAvg, Double avgDom) {
		super();
		this.closedAvg = closedAvg;
		this.concessionsAvg = concessionsAvg;
		this.avgDom = avgDom;
	}
	public Double getAvgDom() {
		return avgDom;
	}
	public void setAvgDom(Double avgDom) {
		this.avgDom = avgDom;
	}
	public Double getClosedAvg() {
		return closedAvg;
	}
	public void setClosedAvg(Double closedAvg) {
		this.closedAvg = closedAvg;
	}
	public Double getConcessionsAvg() {
		return concessionsAvg;
	}
	public void setConcessionsAvg(Double concessionsAvg) {
		this.concessionsAvg = concessionsAvg;
	} 
	
	
	public ClosedAndConcessionsAvg() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
