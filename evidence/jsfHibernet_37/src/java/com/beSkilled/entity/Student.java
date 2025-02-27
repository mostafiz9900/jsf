/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.beSkilled.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



/**
 *
 * @author User
 */
@Entity
@Table(name = "stu")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    private String name;
    private String round;
    @Column(name = "c_course")
    private String comletedCourse;
    private String gender;
    private String msg;
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRound() {
        return round;
    }

    public void setRound(String round) {
        this.round = round;
    }

    public String getComletedCourse() {
        return comletedCourse;
    }

    public void setComletedCourse(String comletedCourse) {
        this.comletedCourse = comletedCourse;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "Student{" + "id=" + id + ", name=" + name + ", round=" + round + ", comletedCourse=" + comletedCourse + ", gender=" + gender + ", msg=" + msg + '}';
    }
    
    
}
    
    
    
    

