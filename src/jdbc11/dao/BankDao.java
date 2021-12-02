package jdbc11.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jdbc11.bean.Bank;

public class BankDao {

	public Bank getBankById(Connection con, int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT id, money FROM mytable29Bank WHERE id = ? ";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, id);
			
			try (ResultSet rs = pstmt.executeQuery()) {
				if(rs.next()) {
					Bank bank = new Bank();
					
					bank.setId(id);
					bank.setMoney(rs.getInt("money"));
					
					return bank;
				}
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}

	public void update(Connection con, Bank bank) {
		// TODO Auto-generated method stub
		String sql = "UPDATE mytable29Bank SET money = ? WHERE id = ? ";
		
		try(PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, bank.getMoney());
			pstmt.setInt(2, bank.getId());
			
			pstmt.executeUpdate(); //autocommit을 따로 막지는 않았다. 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
