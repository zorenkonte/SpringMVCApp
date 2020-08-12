package spring.demo.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import spring.demo.mvc.model.Student;
import spring.demo.mvc.model.StudentForm;
import spring.demo.mvc.model.course.Course;

import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping("/student")
public class StudentController {

    private final Map<String, Course> courseList;
    private final StudentForm student;

    @Value("#{${list}}")
    private Map<String, String> languages;

    @Autowired
    public StudentController(Map<String, Course> courseList) {
        this.courseList = courseList;
        student = new StudentForm();
    }

    @GetMapping("/form")
    public String form(Model model, boolean isRedirect) {
        if (!isRedirect) {
            model.addAttribute("student", student);
        }
        model.addAttribute("courses", courseList);
        model.addAttribute("languageOptions", languages);
        model.addAttribute("title", "Student Form");
        return "student/form-two";
    }

    @PostMapping("/processForm")
    public String process(@Valid @ModelAttribute("student") StudentForm student,
                          BindingResult bindingResult,
                          @RequestParam("student.course.code") String code,
                          Model model) {
        if (bindingResult.hasErrors()) {
            return this.form(model, true);
        } else {
            Course course = courseList.get(code);
            student.getStudent().setCourse(course);
            model.addAttribute("languageOptions", languages);
            model.addAttribute("title", "Student Details");
            return "student/student-info";
        }

    }

}
