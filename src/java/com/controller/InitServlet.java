package com.controller;

import com.dao.AdminDao;
import com.dao.CarDao;
import com.dao.UserDao;
import com.dao.impl.AdminDaoImpl;
import com.dao.impl.CarDaoImpl;
import com.dao.impl.UserDaoImpl;
import com.service.AdminService;
import com.service.CarService;
import com.service.UserService;
import com.service.impl.AdminServiceImpl;
import com.service.impl.CarServiceImpl;
import com.service.impl.UserServiceImpl;
import javax.sql.DataSource;
import javax.annotation.Resource;
import javax.servlet.http.HttpServlet;

public abstract class InitServlet extends HttpServlet {

    private @Resource(name = "jdbc/car")//испальзование листнера
    DataSource dataSource;
    protected UserDao userDao;
    protected CarDao carDao;
    protected UserService userService;
    protected CarService carService;
    protected AdminDao adminDao;
    protected AdminService adminService;

    @Override
    public void init() {//инициализация объектов с которыми работает сервлеты
        userDao = new UserDaoImpl(dataSource);
        userService = new UserServiceImpl(userDao);
        carDao = new CarDaoImpl(dataSource);
        carService = new CarServiceImpl(carDao);
        adminDao = new AdminDaoImpl(dataSource);
        adminService = new AdminServiceImpl(adminDao);
    }
}
