package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Vo.StudentVo;
import service.Studentservice;

@WebServlet("/UpdateStudentController")
public class UpdateStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       StudentVo studentVo=null;
     Studentservice studentservice=null;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int rollno=	Integer.parseInt(request.getParameter("rollno"));
		String name=request.getParameter("name")	;
		String gender=request.getParameter("gender");
		String course=request.getParameter("course");
		//System.out.println("data--"+rollno+" "+name+" "+gender+" "+course);
		studentVo=new StudentVo();
		studentVo.setRollno(rollno);
		studentVo.setName(name);
		studentVo.setGender(gender);
		studentVo.setCourse(course);
		
	   studentservice=new Studentservice();
    int i=studentservice.modifyStudent(studentVo);
    System.out.println(i);
	   if(i!=0)
	   {  String msg="Successfully updated";
	   System.out.println("hogya+");
		   response.sendRedirect("./update-student.jsp?msg="+msg);
		  }
		
			
		

	}

}
