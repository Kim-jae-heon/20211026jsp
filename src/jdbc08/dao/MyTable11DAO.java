package jdbc08.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc08.bean.Bean11;

public class MyTable11DAO {

	public List<Bean11> getList(Connection con) {
		List<Bean11> list = new ArrayList<>();
		String sql = "SELECT name, age, birth FROM mytable11";
		
		try(Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			while(rs.next()) {
				Bean11 bean = new Bean11();
				
				bean.setName(rs.getString("name"));
				bean.setAge(rs.getInt("age"));
				bean.setBirth(rs.getDate("birth").toLocalDate());
				
				list.add(bean);
			}
		} catch (Exception e) {
			// TODO: handle exception
			
		}
		return list;
		
	}
	
			
}
