package spring.demo.mvc.model.base;

import org.springframework.format.annotation.DateTimeFormat;
import spring.demo.mvc.model.Address;
import spring.demo.mvc.model.enums.Gender;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

public class Person extends BaseEntity {

    @NotBlank(message = "is required")
    private String firstName;
    @NotBlank(message = "is required")
    private String lastName;
    @NotNull(message = "is required")
    private Gender gender;
    @NotBlank(message = "is required")
    private String contact;
    @Size(min = 1, message = "at least 1 is required")
    private String[] languages;
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    @NotNull(message = "is required")
    private Date birthDate;
    @Valid
    private Address address;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String[] getLanguages() {
        return languages;
    }

    public void setLanguages(String[] languages) {
        this.languages = languages;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }
}
