package spring.demo.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import spring.demo.mvc.model.Student;
import spring.demo.mvc.model.course.Course;

import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    private final Map<String, Course> courseList;

    @Value("#{${list}}")
    private Map<String, String> languages;

    @Autowired
    public StudentController(Map<String, Course> courseList) {
        this.courseList = courseList;
    }

    @GetMapping("/form")
    public String form(Model model) {
        model.addAttribute("student", new Student());
        model.addAttribute("courses", courseList);
        model.addAttribute("languageOptions", languages);
        return "student/form";
    }

    @PostMapping("/processForm")
    public String process(@ModelAttribute("student") Student student,
                          @RequestParam("course.code") String code,
                          Model model) {
        Course course = courseList.get(code);
        student.setCourse(course);
        model.addAttribute("languageOptions", languages);
        return "student/student-info";
    }

}
