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
 * Servlet implementation class S01RequestServlet
 */
@WebServlet("/servlet05/s01")
public class S01RequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public S01RequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//2. request 분석, request parameter 처리/가공
		String param = request.getParameter("info");
		//원래는 여기서 null의 여부를 판단해야 함. 그러나 null이 아니라고 가정.
		
		//3. business logic
		List<String> list = new ArrayList<>();
		String title = "";
		
		if(param.equals("travle")) {
			//여행관련일
			list.add("seoul");
			list.add("paris");
			
			title="좋아하는 여행지";
		} else if (param.equals("food")) {
			//음식관련일
			list.add("pizza");
			list.add("iceCream");
			
			title="좋아하는 음식";
		}

		//4. set attribute
		request.setAttribute("title", title);
		request.setAttribute("list", list);
		
		//5. forward
		String path = "/WEB-INF/view/servlet05/s01.jsp";
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
