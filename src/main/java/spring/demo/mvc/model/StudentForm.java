package spring.demo.mvc.model;

import javax.validation.Valid;
import javax.validation.constraints.NotEmpty;

public class StudentForm {

    @Valid
    private Student student;
    @NotEmpty(message = "not match")
    private String confirmPassword;

    public StudentForm() {
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
