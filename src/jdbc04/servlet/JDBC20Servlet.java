package jdbc04.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Supplier;
import jdbc04.dao.SupplierDAO;

/**
 * Servlet implementation class JDBC20Servlet
 */
@WebServlet("/jdbc04/s20")
public class JDBC20Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC20Servlet() {
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
		SupplierDAO dao = new SupplierDAO();
		List<Supplier> supplierList = new ArrayList<>();
		List<String> countryList = new ArrayList<>();
		
		//2.request요청
		String country = request.getParameter("country");
		
		try(Connection con = ds.getConnection();) {
		//3.business logic
		//3.1 country 리스트 조회
		countryList = dao.listCountry(con);
		//3.2 country 리스트 조회
		supplierList = dao.getSupplierList(con, country);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//4.add attribute
		
		//5.forward/redirect
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
