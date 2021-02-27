package controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Vo.StudentVo;
import service.Studentservice;

/**
 * Servlet implementation class AddStudentController
 */
@WebServlet("/AddStudentController")
public class AddStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   StudentVo  studentVo=null;
   Studentservice studentservice=null;
    public AddStudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 //get data from ui(view)
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
	int i=studentservice.saveStudent(studentVo);
	if(i!=0)
	{ request.setAttribute("msg", "Successfully added");
	request.getRequestDispatcher("./add-student.jsp").forward(request, response);
	
		
	}
	}

}
