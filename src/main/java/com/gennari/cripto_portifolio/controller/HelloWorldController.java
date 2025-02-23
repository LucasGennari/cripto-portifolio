package com.gennari.cripto_portifolio.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello-world")
public class HelloWorldController {
   @GetMapping("/get")
    public String helloWorld(){
        return "Hello World";
    }

}
