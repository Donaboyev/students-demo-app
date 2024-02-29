package com.abbosidev.application.domain.entity

import com.abbosidev.application.port.`in`.StudentDto
import io.quarkus.hibernate.orm.panache.kotlin.PanacheCompanion
import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import jakarta.persistence.Entity

@Entity
class Student : PanacheEntity() {

    companion object : PanacheCompanion<Student> {
        fun getAll(): List<Student> = findAll().list()

        fun save(student: StudentDto) = persist(
                Student().apply {
                    name = student.name
                    course = student.course
                }
        )

        fun updateRow(id: Long, student: StudentDto) = update(
                "name = '${student.name}', course = '${student.course}' WHERE id = $id"
        )
    }

    lateinit var name: String
    lateinit var course: String
}
