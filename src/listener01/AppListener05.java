package listener01;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class AppListener05
 *
 */
@WebListener
public class AppListener05 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public AppListener05() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
         // TODO Auto-generated method stub
    	ServletContext application = sce.getServletContext(); //sce = Servlet Context Event
    	application.setAttribute("appAttr1","appVal1");
    	application.setAttribute("appAttr2","appVal2");
    	
    	//context path를 application attribute에 추가
    	String contextPath = application.getContextPath();
    	application.setAttribute("appRoot", contextPath);
    }
	
}
