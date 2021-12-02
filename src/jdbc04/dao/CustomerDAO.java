package jdbc04.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc02.bean.Customers;

public class CustomerDAO {
	
	public List<String> getCountryList(Connection con) {
		List<String> list = new ArrayList<String>();

		String sql = "SELECT DISTINCT country FROM Customers ORDER BY country";

		try (Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {

			while (rs.next()) {
				list.add(rs.getString(1));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	public List<Customers> getCustomerList(Connection con, String country) {
		List<Customers> list = new ArrayList<>();
		
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country "
				+ "FROM Customers WHERE Country = ?";
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, country);
			
			try(ResultSet rs = pstmt.executeQuery()) {
				while(rs.next()) {
					Customers cus = new Customers();
					
					int i = 1;
					cus.setCustomerId(rs.getInt(i++));
					cus.setCustomerName(rs.getString(i++));
					cus.setContactName(rs.getString(i++));
					cus.setAddress(rs.getString(i++));
					cus.setCity(rs.getString(i++));
					cus.setPostalCode(rs.getString(i++));
					cus.setCountry(rs.getString(i++));
					
					list.add(cus);
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public boolean insert(Connection con, Customers customer) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)"
				+ " VALUES (?, ?, ?, ?, ?, ?)";
		
		int rowCount = 0;
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			// ? 채우기
			pstmt.setString(1, customer.getCustomerName());
			pstmt.setString(2, customer.getContactName());
			pstmt.setString(3, customer.getAddress());
			pstmt.setString(4, customer.getCity());
			pstmt.setString(5, customer.getPostalCode());
			pstmt.setString(6, customer.getCountry());
			
			rowCount = pstmt.executeUpdate();
			
			return rowCount == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return rowCount == 1;
	}

	public boolean update(Connection con, Customers customer) {
		String sql = "UPDATE Customers " + 
				"SET " + 
				"	CustomerName = ?, " + 
				"    ContactName = ?, " + 
				"    Address = ?, " + 
				"    City = ?, " + 
				"    PostalCode = ?, " + 
				"    Country = ? " + 
				"WHERE " + 
				"	CustomerID = ? ";
		int rowCount = 0;
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			int i = 1;
			pstmt.setString(i++, customer.getCustomerName());
			pstmt.setString(i++, customer.getContactName());
			pstmt.setString(i++, customer.getAddress());
			pstmt.setString(i++, customer.getCity());
			pstmt.setString(i++, customer.getPostalCode());
			pstmt.setString(i++, customer.getCountry());
			pstmt.setInt(i++, customer.getCustomerId());
			
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return rowCount == 1;
	}

	public Customers selectById(Connection con, int customerID) {
		String sql = "SELECT CustomerName, ContactName, Address, City, "
				+ "          PostalCode, Country "
				+ "FROM Customers "
				+ "WHERE CustomerID = ?";
		
		Customers customer = new Customers();
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, customerID);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				if (rs.next()) {
					String customerName = rs.getString("CustomerName");
					String contactName = rs.getString("ContactName");
					String address = rs.getString("address");
					String city = rs.getString("City");
					String postalCode = rs.getString("PostalCode");
					String country = rs.getString("Country");
					
					customer.setCustomerId(customerID);
					customer.setCustomerName(customerName);
					customer.setContactName(contactName);
					customer.setAddress(address);
					customer.setCity(city);
					customer.setPostalCode(postalCode);
					customer.setCountry(country);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return customer;
	}

	public boolean deleteById(Connection con, int customerID) {
		String sql = "DELETE FROM Customers "
				+ "WHERE CustomerID = ?";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setInt(1, customerID);
			
			int count = pstmt.executeUpdate();
			
			return count == 1;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return false;
	}
}
