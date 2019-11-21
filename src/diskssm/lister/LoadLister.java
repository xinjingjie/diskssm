package diskssm.lister;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class LoadLister implements ServletContextListener{

	public void contextInitialized(ServletContextEvent sce) {
		
		String contextPath = sce.getServletContext().getContextPath();
		
		sce.getServletContext().setAttribute("contextPath", contextPath);
	}

	public void contextDestroyed(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
	}
}
