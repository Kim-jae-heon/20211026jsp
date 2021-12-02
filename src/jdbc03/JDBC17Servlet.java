package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customers;

/**
 * Servlet implementation class JDBC17Servlet
 */
@WebServlet("/jdbc03/s17")
public class JDBC17Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC17Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		Customers cus = new Customers();
		List<String> customerId = new ArrayList<>();
		
		//2.request 분석/가공
		String id = request.getParameter("customerID");
		
		//3. business logic
		
		//3.1 - 고객 번호 조회
		String sql2 = "SELECT DISTINCT CustomerID FROM Customer ORDER BY CustomerID";
		
		try(
			Connection con = ds.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql2)	
				) {
			
		} catch (Exception e) {
			
		}
		//3.2 - 고객들 조회
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country "
				+ "FROM Customers WHERE CustomerID = ?";
		
		try (
			Connection con = ds.getConnection();
			PreparedStatement stmt = (PreparedStatement) con.createStatement();
			
			) {
			stmt.setInt(1, Integer.parseInt(id)); //파라미터1: ? 위치, 파라미터2: 값
			
			try(ResultSet rs = stmt.executeQuery()) {
			if(rs.next()) {
				cus.setCustomerId(rs.getString(1));
				cus.setCustomerName(rs.getString(2));
				cus.setContactName(rs.getString(3));
				cus.setAddress(rs.getString(4));
				cus.setCity(rs.getString(5));
				cus.setPostalCode(rs.getString(6));
				cus.setCountry(rs.getString(7));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//4.add attribute
		request.setAttribute("customerID", id);
		request.setAttribute("customer", cus);
		
		//5.forward
		String path = "/WEB-INF/view/jdbc03/v17.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
