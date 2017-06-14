package com.oilgas;

import com.oilgas.conf.StorageProperties;
import com.oilgas.service.storage.StorageService;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @author liuzh
 * @since 2015-12-12 18:22
 */
@Controller
@EnableWebMvc
@SpringBootApplication
@MapperScan(basePackages = "com.oilgas.mapper")
@EnableConfigurationProperties(StorageProperties.class)
public class Application extends WebMvcConfigurerAdapter {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "redirect:users/login";
    }

    @Bean
    CommandLineRunner init(StorageService storageService) {
        return (args) -> {
//            storageService.deleteAll();
//            storageService.init();
        };
    }
}
