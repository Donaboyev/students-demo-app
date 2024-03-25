package com.abbosidev.domain.student

import io.quarkus.test.junit.QuarkusTest
import io.restassured.RestAssured.given
import org.jboss.resteasy.reactive.RestResponse.StatusCode.OK
import org.junit.jupiter.api.Test

@QuarkusTest
class StudentResourceTest {

    @Test
    fun shouldGetAllStudents(){
        given().`when`().get("/students").then().statusCode(OK)
    }
}