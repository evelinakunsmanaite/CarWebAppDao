/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

import java.time.LocalDate;

/**
 *
 * @author Administrator
 */
public class Car {
   private int id, yearOfIssue;
   private String brand, model, color, registrationNumber;
   private double price;

    public Car(int id, String brand, String model, String color, String registrationNumber, int yearOfIssue, double price) {
        this.id = id;
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.registrationNumber = registrationNumber;
        this.yearOfIssue = yearOfIssue;
        this.price = price;
    }

    public Car(int id) {
        this.id = id;
    }

    public Car(int yearOfIssue, String brand, String model, String color, String registrationNumber, double price) {
        this.yearOfIssue = yearOfIssue;
        this.brand = brand;
        this.model = model;
        this.color = color;
        this.registrationNumber = registrationNumber;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getRegistrationNumber() {
        return registrationNumber;
    }

    public void setRegistrationNumber(String registrationNumber) {
        this.registrationNumber = registrationNumber;
    }

    public int getYearOfIssue() {
        return yearOfIssue;
    }

    public void setYearOfIssue(int yearOfIssue) {
        this.yearOfIssue = yearOfIssue;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
        @Override
    public String toString() {
        return "Car{" + "id=" + id + ", brand=" + brand + ", model=" + model + ", color=" + color + ", registrationNumber=" + registrationNumber + ", yearOfIssue=" + yearOfIssue + ", price=" + price + '}';
    }
}
