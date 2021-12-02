package jdbc09.bean;

public class ShipperDto {
	private String shipperName;
	private String Phone;
	private Integer orderID;
	private Integer customerID;
	private Integer EmployeeID;
	private java.sql.Date orderDate;
	
	public String getShipperName() {
		return shipperName;
	}
	public void setShipperName(String shipperName) {
		this.shipperName = shipperName;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public Integer getOrderID() {
		return orderID;
	}
	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}
	public Integer getCustomerID() {
		return customerID;
	}
	public void setCustomerID(Integer customerID) {
		this.customerID = customerID;
	}
	public Integer getEmployeeID() {
		return EmployeeID;
	}
	public void setEmployeeID(Integer employeeID) {
		EmployeeID = employeeID;
	}
	public java.sql.Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(java.sql.Date orderDate) {
		this.orderDate = orderDate;
	}
	
	
	
}
