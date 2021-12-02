package jdbc09.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc09.bean.ShipperDto;

public class ShipperDAO {

	public List<ShipperDto> listUp(Connection con) {
		
		List<ShipperDto> list = new ArrayList<>();
		String sql = "SELECT " + 
				"    ShipperName, Phone, OrderID, CustomerID "
				+ " Employee, OrderDate " + 
				"FROM " + 
				"    Shippers s " + 
				"        JOIN " + 
				"    Orders o ON s.ShipperID = o.ShipperID";
		try(Statement stmt = con.createStatement(); 
			ResultSet rs = stmt.executeQuery(sql);) {
			
			while(rs.next()) {
				ShipperDto dto = new ShipperDto();
				
				dto.setCustomerID(rs.getInt(1));
				dto.setOrderDate(rs.getDate(2));
				dto.setOrderID(rs.getInt(3));
				dto.setPhone(rs.getString(4));
				dto.setShipperName(rs.getString(5));
				dto.setEmployeeID(rs.getInt(6));
				
				list.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
