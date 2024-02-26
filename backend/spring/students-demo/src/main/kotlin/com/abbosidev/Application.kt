package com.abbosidev

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class StudentsDemoApplication

fun main(args: Array<String>) {
	runApplication<StudentsDemoApplication>(*args)
}
