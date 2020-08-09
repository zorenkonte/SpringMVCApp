package spring.demo.mvc.model.course;

import javax.validation.constraints.NotBlank;

public class Address {

    @NotBlank(message = "street is required")
    private String street;
    @NotBlank(message = "city is required")
    private String city;

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}
