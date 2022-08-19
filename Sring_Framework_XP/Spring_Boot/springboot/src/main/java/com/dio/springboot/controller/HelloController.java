package com.dio.springboot.Controller;

import org.springframework.web.bind.annotation.GetMapping;

public class HelloController {

    @GetMapping("/")
    public String helloMessage(){
        return  "Hello world";
    }
}
