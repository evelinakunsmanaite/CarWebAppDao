/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao.impl;

import com.dao.CarDao;
import com.model.Admin;
import com.model.Car;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashSet;
import java.util.Set;
import javax.sql.DataSource;

/**
 *
 * @author Administrator
 */
public class CarDaoImpl implements CarDao {

    private final DataSource dataSource;

    public CarDaoImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Override
    public Set<Car> read() {
        String req = "Select * from cars";
        Set<Car> cars;
        try (Connection conn = dataSource.getConnection()) {
            try (Statement statement = conn.createStatement(); ResultSet resultSet = statement.executeQuery(req)) {
                cars = new HashSet<>();
                while (resultSet.next()) {//пока есть записи 
                    int id = resultSet.getInt("id");
                    int yearOfIssue = resultSet.getInt("year_of_issue");
                    String brand = resultSet.getString("brand");
                    String model = resultSet.getString("model");
                    String color = resultSet.getString("color");
                    String registrationNumber = resultSet.getString("registration_number");
                    double price = resultSet.getDouble("price");

                    cars.add(new Car(id, brand, model, color, registrationNumber, yearOfIssue, price));
                }
            }
            return cars;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
}
