package com.example.demo.restservice;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.concurrent.atomic.AtomicLong;

@RestController
public class HealthCheckController {
    private static final Logger logger = LoggerFactory.getLogger(HealthCheckController.class);

    private static final String template = "Hello, %s!";
    private final AtomicLong counter = new AtomicLong();

    @GetMapping("/ping")
    public String healthCheck() {
        logger.info("/ping request received");

        return "PONG";
    }
}