package spring.demo.mvc.model.course;


import javax.validation.constraints.NotBlank;

public class Course {

    protected String name;
    @NotBlank(message = "course is required")
    protected String code;

    public Course() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
