package com.service;

import com.model.Car;
import java.util.List;
import java.util.Set;

/**
 *
 * @author Administrator
 */
public interface CarService {

    Set<Car> read();

    List<Car> getListBrand(String brand);

    List<Car> getListExploitation(int exploitation);

    List<Car> getListYearOfIssueAndPrice(int yearOfIssue, double price);

}
