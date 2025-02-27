package com.beskilled.onlinemarketin.entity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  Long id;
    @Column(name = "user_name", unique = true, nullable = false)
    private  String userName;
    @Column(name = "email", unique = true, nullable = false)
    private  String email;
    @Column(name = "user_name", unique = true, nullable = false)
    private  String mobile;
    @Column(name = "first_name", unique = true, nullable = false)
    private  String firstName;
    @Column(name = "last_name", unique = true, nullable = false)
    private  String lastName;
    @Column(name = "regi_date", unique = true, nullable = false)
    private Date registrationDate;
    @ManyToOne
    @JoinColumn(name = "role_id" , nullable = false)
    private Role role;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Date getRegistrationDate() {
        return registrationDate;
    }

    public void setRegistrationDate(Date registrationDate) {
        this.registrationDate = registrationDate;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }
}
