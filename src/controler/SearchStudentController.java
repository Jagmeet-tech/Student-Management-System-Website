package controler;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.StudentDto;
import service.Studentservice;

@WebServlet("/SearchStudentController")
public class SearchStudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Studentservice service=null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int rollno=Integer.parseInt(request.getParameter("rollno"));
	service=new Studentservice();
	StudentDto dto=service.searchStudent(rollno);
	request.setAttribute("dto", dto);
	request.getRequestDispatcher("./update-student.jsp").forward(request,response);
	}

}
