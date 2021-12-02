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

import sample03javabean.*;

/**
 * Servlet implementation class S05AddServlet
 */
@WebServlet("/servlet07/add")
public class S05AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S05AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = "/WEB-INF/view/servlet07/s02add.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0.사전작업
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		List<Bean06> list = (List<Bean06>) session.getAttribute("books");
			//아래 코드는 값이 없을 때를 대처하기 위함이자 getAttribute("books")의 books를 생성시키기 위함.
		if(list==null) {
			list = new ArrayList<>();
			session.setAttribute("books", list);
		}
		//2.request파라미터 분석 가공
		String title = request.getParameter("title");
		String writer = request.getParameter("write");
		String priceStr = request.getParameter("price");
		String publisher = request.getParameter("publisher");
		String stockStr = request.getParameter("stock");
		
		int price = Integer.parseInt(priceStr);
		int stock = Integer.parseInt(stockStr);
		
		Bean06 book = new Bean06(title, writer, price, publisher, stock);
		
		//3.비지니스 모델
		list.add(book);
		
		//4.set request
		
		//5.redirect
		String location = request.getContextPath() + "/servlet07/list";
		response.sendRedirect(location);
	}

}
