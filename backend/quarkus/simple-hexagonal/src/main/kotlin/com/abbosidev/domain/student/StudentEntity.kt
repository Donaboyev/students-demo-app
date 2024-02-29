package com.abbosidev.domain.student

import io.quarkus.hibernate.orm.panache.kotlin.PanacheCompanion
import io.quarkus.hibernate.orm.panache.kotlin.PanacheEntity
import jakarta.persistence.Entity

@Entity(name = "student")
class StudentEntity : PanacheEntity() {

    companion object : PanacheCompanion<StudentEntity> {
        fun getAll(): List<StudentEntity> = findAll().list()

        fun save(student: StudentDto) = persist(
                StudentEntity().apply {
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