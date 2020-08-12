package spring.demo.mvc.model;

import spring.demo.mvc.model.base.Person;
import spring.demo.mvc.model.course.Course;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

public class Student extends Person {

    @NotBlank(message = "is required")
    private String studentId;
    @NotBlank(message = "is required")
    private String email;
    @NotBlank(message = "is required")
    private String password;
    @Valid
    private Course course;

    public Student() {
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }
}
