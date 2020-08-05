package spring.demo.mvc.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.format.FormatterRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import spring.demo.mvc.model.course.*;
import spring.demo.mvc.util.converter.StringToGenderEnumConverter;

import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
@EnableWebMvc
@ComponentScan("spring.demo.mvc")
@PropertySource("/WEB-INF/conf/language.properties")
public class WebApplicationContextConfig implements WebMvcConfigurer {

    @Bean
    public InternalResourceViewResolver getInternalResourceViewResolver() {
        InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
        viewResolver.setPrefix("/WEB-INF/view/");
        viewResolver.setSuffix(".jsp");
        return viewResolver;
    }

    @Bean
    public Map<String, Course> courseList() {
        var courseList = new LinkedHashMap<String, Course>();
        courseList.put("BSMT", new BSMTCourse());
        courseList.put("BSBA", new BSBACourse());
        courseList.put("BSIT", new BSITCourse());
        courseList.put("BSCS", new BSCSCourse());
        return courseList;
    }

    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/resources/**")
                .addResourceLocations("/resources/theme-one/")
                .setCachePeriod(31556926);
    }

    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(new StringToGenderEnumConverter());
    }

}
