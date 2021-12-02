package jdbc09;

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

import jdbc09.bean.ShipperDto;
import jdbc09.dao.ShipperDAO;

/**
 * Servlet implementation class JDBC39ServletExercise
 */
@WebServlet("/jdbc09/s39_1")
public class JDBC39ServletExercise extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JDBC39ServletExercise() {
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
		ShipperDAO dao = new ShipperDAO();
		List<ShipperDto> list = null;
		//2.request분석/가공
		
		
		//3.business model
		try(Connection con = ds.getConnection();) {
			list = dao.listUp(con);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//4.add attribute
		request.setAttribute("list", list);
		
		//5.forward/redirect
		String path = "/WEB-INF/view/jdbc09/v39_1.jsp";
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
