package spring.demo.mvc.config;

import spring.demo.mvc.model.course.*;

import java.util.LinkedHashMap;

public class TestClass {

    public static void main(String[] args) {
        var courseList = new LinkedHashMap<String, Course>();
        courseList.put("BSMT", new BSMTCourse());
        courseList.put("BSBA", new BSBACourse());
        courseList.put("BSIT", new BSITCourse());
        courseList.put("BSCS", new BSCSCourse());
        Course course = courseList.get("BSMT");
        System.out.println(course.getCode());
    }
}
