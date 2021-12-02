package servlet05;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class S02RequestServlet
 */
@WebServlet("/servlet05/s02")
public class S02RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//2.parameter, 요청 분석/가공
		String param = request.getParameter("country");
		param = param==null ? "": param;
		
		//3.model, business logic 실행
		List<String> city = new ArrayList<>();
		if(param.equals("미국")) {
			
			city.add("LA");
			city.add("Boston");
		} else if(param.equals("한국")) {
			
			city.add("Seoul");
			city.add("Busan");
		}
		
		//4.request or session에 담기
		request.setAttribute("cities", city);
		request.setAttribute("country", param);
		
		//5.forward
		String path = "/WEB-INF/view/servlet05/s02.jsp";
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
