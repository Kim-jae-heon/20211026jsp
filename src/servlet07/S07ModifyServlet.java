package servlet07;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sample03javabean.Bean06;

/**
 * Servlet implementation class S07Modify
 */
@WebServlet("/servlet07/modify")
public class S07ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S07ModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전작업
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
		
		//2. request파라미터 분석 가공
		String idStr = request.getParameter("id");
		int index = Integer.parseInt(idStr);
		
		
		String path = "/WEB-INF/view/servlet07/s04modify.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		
		
		String location = request.getContextPath() + "/servlet07/list";
		response.sendRedirect(location);
	}

}
