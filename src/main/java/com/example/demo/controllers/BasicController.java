package com.example.demo.controllers;

import com.example.demo.HelloWorld;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class BasicController {

    @GetMapping("/hello")
    public HelloWorld hello() {
        return new HelloWorld("123", "Hello world!");
    }

}
