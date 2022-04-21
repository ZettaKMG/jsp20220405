package chap20;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Application Lifecycle Listener implementation class ServletContextListener02
 *
 */
@WebListener
public class ServletContextListener02 implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public ServletContextListener02() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent sce)  { 
	    System.out.println("jsp 사용 종료 요청");
	    System.out.println("Listener 종료 확인!!!!!!!");
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent sce)  { 
	    System.out.println("Listener 시작 확인@@@@@@@");
	    System.out.println("jsp 사용 시작");
    }
	
}
