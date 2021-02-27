package service;

import java.util.List;



import Bo.StudentBo;
import Vo.StudentVo;
import dao.StudentDao;
import dto.StudentDto;

public class Studentservice {
   StudentDao studentDao=null;
   StudentBo studentBo=null;
	public int saveStudent( StudentVo studentVo) {
		//business logic
		studentBo= new StudentBo();
		studentDao=new StudentDao();
		studentBo.setRollno(studentVo.getRollno());
		studentBo.setName(studentVo.getName());
		studentBo.setGender(studentVo.getGender());
		studentBo.setCourse(studentVo.getCourse());
		int i= studentDao.addstudent(studentBo);
      return i;
	}
	public  List<StudentDto> getAllStudents(){
		studentDao=new StudentDao();
		return 	studentDao.viewAllStudents();
	}
	public boolean removeStudent(int rollno)
	{   studentDao=new StudentDao();
	 return studentDao.delete(rollno);
	}
	public StudentDto searchStudent(int rollno)
	{   studentDao=new StudentDao();
	 return studentDao.getStudentDetails(rollno);
	}
	public int modifyStudent(StudentVo studentVo){
		studentBo= new StudentBo();
		studentDao=new StudentDao();
		studentBo.setRollno(studentVo.getRollno());
		studentBo.setName(studentVo.getName());
		studentBo.setGender(studentVo.getGender());
		studentBo.setCourse(studentVo.getCourse());
		  studentDao=new StudentDao();
		  return studentDao.updateStudent(studentBo);
	}
}
