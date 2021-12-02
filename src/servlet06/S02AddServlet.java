package servlet06;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class S02AddServlet
 */
@WebServlet("/servlet06/add")
public class S02AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S02AddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path = "/WEB-INF/view/servlet06/s02add.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//0. 사전작업
		HttpSession session = request.getSession();
		List<String> list = (List<String>)session.getAttribute("todoList");
		if(list==null) {
			list = new ArrayList<String>();
			session.setAttribute("todoList", list);
		}
		
		//2. request 파라미터 분석 가공
		String todo = request.getParameter("todo");
		todo = todo == null ? "" : todo;
		
		//3. business logic
		if(!todo.isEmpty()) {
			
			list.add(todo);
		}
		
		//4. attribute 추가
		//필요없다면 생략해도 됨..!
		
		//5. forward/redirect
		String path = request.getContextPath() + "/servlet06/list";
		response.sendRedirect(path);
		//주소창에 add가 남아있는데, list를 보여주는 것은 명시된 것과 실질
		//적인 것이 미스매치이므로 리다이렉트를 시켜준 것.
	}

}
