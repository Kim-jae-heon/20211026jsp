package listener01;
//우리가 관심을 갖는 것은 ServletContextListner이기에 여기에만 체크표시해주면 된다.
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class AppListener01
 *
 */
//톰캣이 어노테이션이 붙어있는 클래스를 식별하여 적절할 때 실행시켜준다.
@WebListener 
public class AppListener01 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener01() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("간단한 로그");
    	//실행순서가 중요하다면 web.xml에 명시할 수 있다.
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	System.out.println("어플리케이션 실행됨. 리스너1 작동!!!");
    	//브라우저로 요청보내지 않았음에도 서버를 작동시킨 것 만으로 작동.
    }
	
}
