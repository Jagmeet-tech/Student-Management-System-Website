package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.ssi.ResponseIncludeWrapper;

import service.Studentservice;

/**
 * Servlet implementation class deleteStudentController
 */
@WebServlet("/deleteStudentController")
public class deleteStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Studentservice service=null;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     int rollno=Integer.parseInt(request.getParameter("rollno"));
   service=new Studentservice();
  boolean status= service.removeStudent(rollno);
   if(status==false)
   {
	   String msg="STUDENT DELETED SUCCESSFULLY";
      response.sendRedirect("./delete-student.jsp?message="+msg);  
   }
	}

}
