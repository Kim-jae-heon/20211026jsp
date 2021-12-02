package jdbc02.servlet;

import java.io.IOException;
import java.sql.Connection;
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
 * Servlet implementation class JDBC08Servlet
 */
@WebServlet("/jdbc02/s08")
public class JDBC08Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC08Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource pool = (DataSource) application.getAttribute("dbpool");
		List<Customers> list = new ArrayList<>(); 
		
		//2. request분석/가공
		//3. business logic 처리
		String sql = "SELECT CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country FROM Customers";
		
		try (
			Connection con = pool.getConnection();
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
				) {
			while(rs.next()) {
				Customers customer = new Customers();
				
				customer.setCustomerId(rs.getString(1));
				customer.setCustomerName(rs.getString(2));
				customer.setContactName(rs.getString(3));
				customer.setAddress(rs.getString(4));
				customer.setCity(rs.getString(5));
				customer.setPostalCode(rs.getString(6));
				customer.setCountry(rs.getString(7));
				
				list.add(customer);
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		//4. add attribute
		request.setAttribute("customer", list);
		
		//5. forward/redirect
		String path = "/WEB-INF/view/jdbc02/v08.jsp";
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
