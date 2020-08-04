package spring.demo.mvc.model;

import spring.demo.mvc.model.base.Person;
import spring.demo.mvc.model.course.Course;

public class Student extends Person {

    private String studentId;
    private Course course;

    public Student() {
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

}
