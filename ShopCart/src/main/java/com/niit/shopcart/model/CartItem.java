package com.niit.shopcart.model;

import javax.validation.constraints.Size;

public class CartItem {
	
	private String PartNumber;
	@Size(min=5, max=30, message="Enter Name between 5 to 30 characters")
    private String ModelDescription;
	
    private double UnitCost;
    private int Quantity;
    private double TotalCost;
	public String getPartNumber() {
		return PartNumber;
	}
	public void setPartNumber(String partNumber) {
		PartNumber = partNumber;
	}
	public String getModelDescription() {
		return ModelDescription;
	}
	public void setModelDescription(String modelDescription) {
		ModelDescription = modelDescription;
	}
	public double getUnitCost() {
		return UnitCost;
	}
	public void setUnitCost(double unitCost) {
		UnitCost = unitCost;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public double getTotalCost() {
		return TotalCost;
	}
	public void setTotalCost(double totalCost) {
		TotalCost = totalCost;
	}
    
}
