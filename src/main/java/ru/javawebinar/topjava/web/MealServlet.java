package ru.javawebinar.topjava.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ru.javawebinar.topjava.model.MealTo;
import ru.javawebinar.topjava.util.MealsUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalTime;
import java.util.List;

public class MealServlet extends HttpServlet {

    private static final Logger LOG = LoggerFactory.getLogger(MealServlet.class);


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        List<MealTo> filteredMeals = MealsUtil.getFilteredWithExcess(meals, LocalTime.of(7, 0), LocalTime.of(12, 0), 2000);
        List<MealTo> filteredMeals = MealsUtil.getFilteredWithExcess(MealsUtil.MEALS, LocalTime.MIN, LocalTime.MAX, MealsUtil.CALORIES);
        request.setAttribute("listMeal", filteredMeals);

        LOG.debug("forward to meals");
        request.getRequestDispatcher("/meals.jsp").forward(request, response);
//        LOG.debug("redirect to meals");
//        response.sendRedirect("meals.jsp");
    }
}
