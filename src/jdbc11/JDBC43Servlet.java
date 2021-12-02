package jdbc11;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import jdbc11.bean.Bank;
import jdbc11.dao.BankDao;

/**
 * Servlet implementation class JDBC43Servlet
 */
@WebServlet("/jdbc11/s43")
public class JDBC43Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JDBC43Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 5. forward/redirect
		String path = "/WEB-INF/view/jdbc11/v42.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 0.사전작업
		ServletContext application = request.getServletContext();
		DataSource ds = (DataSource) application.getAttribute("dbpool");
		BankDao dao = new BankDao();

		// 2.request가공/분석
		int money = Integer.parseInt(request.getParameter("money"));

		// 3.business logic
		Connection con = null;

		try {
			con = ds.getConnection();
			// 3.1 auto commit disable
			con.setAutoCommit(false);
				// 3.2 2번 계좌에서 출금
				Bank bank2 = dao.getBankById(con, 2);
				bank2.setMoney(bank2.getMoney() - money);
				dao.update(con, bank2);
				// 3.3 1번 계좌로 입금
				Bank bank1 = dao.getBankById(con, 1);
				bank1.setMoney(bank1.getMoney() + money);
				dao.update(con, bank1);
				// 3.99 commit
				con.commit();
				
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			// 3.100 exception rollback
			if(con != null) {
				try {
					con.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
			}
		} finally {
			if(con != null) {
				try {
					con.close();
				} catch (SQLException e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
		}

		// 4.add attribute

		// 5.forward/redirect

	}

}
