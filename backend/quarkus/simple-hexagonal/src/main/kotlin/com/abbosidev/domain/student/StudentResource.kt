package com.abbosidev.domain.student

import com.abbosidev.domain.exception.StudentNotFoundException
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
class StudentResource(private val studentService: StudentService) {

    @GET
    fun getAllStudent() = studentService.getAllStudents()

    @POST
    fun saveNewStudent(student: StudentDto) = studentService.createANewStudent(student)

    @PUT
    @Path("/{id}")
    fun updateStudent(@PathParam("id") id: Long, student: StudentDto) {
        val updated = studentService.updateStudent(id, student)
        if (updated < 1) {
            throw StudentNotFoundException()
        }
    }

    @DELETE
    @Path("/{id}")
    fun deleteStudent(@PathParam("id") id: Long) {
        val deleted = studentService.deleteStudent(id)
        if (!deleted) {
            throw StudentNotFoundException()
        }
    }

    @GET
    @Path("/{id}")
    fun getStudentById(@PathParam("id") id: Long): StudentEntity {
        val student = studentService.getStudentById(id)
                ?: throw StudentNotFoundException()
        return student
    }
}