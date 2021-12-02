package jdbc03;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Supplier;

/**
 * Servlet implementation class JDBC16Servlet
 */
@WebServlet("/jdbc03/s16")
public class JDBC16Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC16Servlet() {
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
		Supplier sup = new Supplier();
		
		//2.request 분석 가공
		
				
		//3.business logic
		String sql = "SELECT SupplierID, SupplierName, ContactName, Address, City, PostalCode, Country, Phone "
				+ "FROM Suppliers WHERE Country = 'Japan'";
		
		try(
			Connection con = ds.getConnection();
			PreparedStatement stmt = (PreparedStatement) con.createStatement();
				) {
			
		} catch (Exception e) {
			
		}
		
		//4.add attribute
		request.setAttribute("supplier", sup);
		
		//5.forward
		String path = "/WEB-INF/view/jdbc03/v10";
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
