package com.service.impl;

import com.dao.CarDao;
import com.model.Car;
import com.service.CarService;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 *
 * @author Administrator
 */
public class CarServiceImpl implements CarService {

    CarDao dao;

    public CarServiceImpl(CarDao dao) {
        this.dao = dao;
    }

    @Override
    public Set<Car> read() {
        return dao.read();
    }

    @Override
    public List<Car> getListBrand(String brand) {
        return dao.read().stream()
                .filter(car -> brand.equals(car.getBrand()))
                .collect(Collectors.toList());
    }

    @Override
    public List<Car> getListExploitation(int exploitation) {
        return dao.read().stream()
                .filter(car -> (2023 - car.getYearOfIssue()) > exploitation)
                .collect(Collectors.toList());
    }

    @Override
    public List<Car> getListYearOfIssueAndPrice(int yearOfIssue, double price) {
        return dao.read().stream()
                .filter(car -> car.getYearOfIssue() == yearOfIssue && car.getPrice() > price)
                .collect(Collectors.toList());
    }
}
