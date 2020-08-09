package spring.demo.mvc.model.course;


import javax.validation.constraints.NotBlank;

public class Course {

    protected String name;
    @NotBlank(message = "course is required")
    protected String code;

    public Course() {
    }

    public String getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

}
