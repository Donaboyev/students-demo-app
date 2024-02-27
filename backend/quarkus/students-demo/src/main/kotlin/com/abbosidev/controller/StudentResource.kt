package com.abbosidev.controller

import com.abbosidev.entity.Student
import com.abbosidev.service.StudentService
import jakarta.inject.Inject
import jakarta.ws.rs.Consumes
import jakarta.ws.rs.DELETE
import jakarta.ws.rs.GET
import jakarta.ws.rs.POST
import jakarta.ws.rs.PUT
import jakarta.ws.rs.Path
import jakarta.ws.rs.PathParam
import jakarta.ws.rs.Produces
import jakarta.ws.rs.core.MediaType.APPLICATION_JSON

@Path("/students")
@Produces(APPLICATION_JSON)
@Consumes(APPLICATION_JSON)
class StudentResource {

    @Inject
    private lateinit var studentService: StudentService

    @GET
    fun getAllStudents(): Collection<Student> {
        return studentService.getAllStudents()
    }

    @POST
    fun insertStudent(student: Student) {
        studentService.insertStudent(student)
    }

    @PUT
    fun updateStudent(student: Student) {
        studentService.updateStudent(student)
    }

    @DELETE
    @Path("/{id}")
    fun deleteStudentById(@PathParam("id") id: String) {
        studentService.deleteStudentById(id)
    }

    @GET
    @Path("/{id}")
    fun getStudentById(@PathParam("id") id: String): Student {
        val student = studentService.getStudentById(id)
            ?: throw RuntimeException("No student exists with this id!")
        return student
    }
}