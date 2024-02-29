package com.abbosidev.adapter.`in`

import com.abbosidev.application.domain.entity.Student
import com.abbosidev.application.port.`in`.GetStudentUseCase
import com.abbosidev.application.port.`in`.StudentDto
import com.abbosidev.application.port.`in`.WorkWithStudentUseCase
import com.abbosidev.infrastructure.exceptions.StudentNotFoundException
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
class StudentResource(
        private val getStudentUseCase: GetStudentUseCase,
        private val workWithStudentUseCase: WorkWithStudentUseCase
) {

    @GET
    fun getAllStudents(): List<Student> = getStudentUseCase.getAllStudents()

    @POST
    fun saveNewStudent(student: StudentDto) = workWithStudentUseCase.createANewStudent(student)

    @PUT
    @Path("/{id}")
    fun updateStudent(@PathParam("id") id: Long, student: StudentDto) {
        val updated = workWithStudentUseCase.updateStudent(id, student)
        if (updated < 1) {
            throw StudentNotFoundException()
        }
    }

    @DELETE
    @Path("/{id}")
    fun deleteStudent(@PathParam("id") id: Long) {
        val deleted = workWithStudentUseCase.deleteStudent(id)
        if (!deleted) {
            throw StudentNotFoundException()
        }
    }

    @GET
    @Path("/{id}")
    fun getStudentById(@PathParam("id") id: Long): Student? {
        val student = getStudentUseCase.getStudentById(id) ?: throw StudentNotFoundException()
        return student
    }

}