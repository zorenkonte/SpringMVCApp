package spring.demo.mvc.util.converter;

import org.springframework.core.convert.converter.Converter;
import spring.demo.mvc.model.enums.Gender;

public class StringToGenderEnumConverter implements Converter<String, Gender> {

    @Override
    public Gender convert(String source) {
        try {
            return Gender.valueOf(source.toUpperCase());
        } catch (IllegalArgumentException e) {
            return null;
        }
    }

}
