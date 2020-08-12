package spring.demo.mvc.model;

import javax.validation.constraints.NotBlank;

public class Address {

    @NotBlank(message = "is required")
    private String street;
    @NotBlank(message = "is required")
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
