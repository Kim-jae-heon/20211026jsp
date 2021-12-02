package jdbc06;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc02.bean.Customers;
import jdbc04.dao.CustomerDAO;

/**
 * Servlet implementation class JDBC27Servlet
 */
@WebServlet("/jdbc06/s27")
public class JDBC27Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC27Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		Customers customer = null;
		List<String> countryList = null;
		
		//2. request parameter 분석/가공
		String idStr = request.getParameter("id");
		int customerID = Integer.parseInt(idStr);
		
		//3. business logic
		try(Connection con = ds.getConnection()) {
			customer = dao.selectById(con, customerID);
			countryList = dao.getCountryList(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//4. add attribute
		request.setAttribute("customer", customer);
		request.setAttribute("countryList", countryList);
		
		//5.forward
		String path = "/WEB-INF/view/jdbc06/v27.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전 작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		CustomerDAO dao = new CustomerDAO();
		boolean ok = false;
		
		//2.request 분석.가공
		String customerName = request.getParameter("customerName");
		String contactName = request.getParameter("contactName");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String address = request.getParameter("address");
		String postalCode = request.getParameter("postalCode");
		int customerId = Integer.parseInt(request.getParameter("customerId"));
		
		Customers customer = new Customers();
		customer.setCustomerName("KIM");
		customer.setContactName("gildong");
		customer.setCity("Seoul");
		customer.setCountry("Korea");
		customer.setAddress("gangnam");
		customer.setPostalCode("11111");
		customer.setCustomerId(97);
		
		//3. business logic
		try(Connection con = ds.getConnection()) {
			ok = dao.update(con, customer); //하고싶은 말은 이거. 근데 앞뒤로 포장이 쌓인다.
		} catch (Exception e) {
			e.printStackTrace();
		}
		//4. add attribute
		
		//5. forward/redirect
	}

}
