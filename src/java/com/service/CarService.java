/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.service;

import com.model.Car;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public interface CarService {
    boolean create(Car car);

    Set<Car> read();

    boolean update();

    boolean delete(int id);
}