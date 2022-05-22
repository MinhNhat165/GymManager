package student.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sun.javafx.collections.MappingChange.Map;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import ptit.model.Student;

@Controller
@RequestMapping("/student/")
public class StudentController {
	@Autowired
	ServletContext application;
	@RequestMapping("index")
	public String index(HttpServletRequest request, HttpSession
	session) {
	     application.setAttribute("name", "Huỳnh Trung Trụ Trụ");
	     application.setAttribute("level", 2);
	     session.setAttribute("name", "Phan Quang Công");
	     session.setAttribute("level", 4);
	     request.setAttribute("name", "Nguyễn Bá Hoàng");
	     request.setAttribute("level", 3);
	     session.setAttribute("salary", 1000);
	     application.setAttribute("photo", "imgs/1.jpg");
	     session.setAttribute("photo", "imgs/2.jpg");
	     request.setAttribute("photo", "imgs/3.jpg");
	     return "student/bai1";
	}
	
	@RequestMapping("index2")
	public String index2(ModelMap model) {
	     Student sv1 = new Student("Phạm Minh Tuấn", 5.5, "Ứng dụng phần mềm");
	     Student sv2 = new Student("Nguyễn Thị Kiều Oanh", 9.5, "Thiết kế trang web");
	     Student sv3 = new Student("Lê Phạm Tuấn Kiệt", 3.5, "Thiết kế trang web");
	     ArrayList<Student> list = new ArrayList<>();
	     list.add(sv2);
	     list.add(sv3);
	    // Map map = new HashMap<>();
	     HashMap<String, Student> map =  new HashMap<String, Student>();
	     map.put("OanhNTK", sv2);
	     map.put("KietLPT", sv3);
	     model.addAttribute("bean", sv1);
	     model.addAttribute("list", list);
	     model.addAttribute("map", map);
	     return "student/index2";
	}
	
	@RequestMapping("index3")
	public String index3(ModelMap model) {
		return "student/index3";
	}
}
