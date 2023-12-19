/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.model.Car;
import java.io.IOException;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "AllCarsServlet", urlPatterns = {"/allCarsServlet"})
public class AllCarsServlet extends InitServlet implements Jumpable {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        Set<Car> car = carService.read();

        if (!car.isEmpty()) {
            //Получение результата по парметрам запроса

            request.setAttribute("result", car);

            jump("/WEB-INF/jsp/result.jsp", request, response);
        } else {

            jump("/WEB-INF/jsp/errors.jsp", request, response);

        }
    }
}
