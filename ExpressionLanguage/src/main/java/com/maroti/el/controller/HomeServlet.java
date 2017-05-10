package com.maroti.el.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.maroti.el.model.Address;
import com.maroti.el.model.Employee;
import com.maroti.el.model.Person;

@WebServlet(value="/show")
public class HomeServlet extends HttpServlet {
		
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
			Person person = new Employee();
			person.setName("Maroti");
			Employee emp = new Employee();
			emp.setEid(101);
			Address add = new Address();
			add.setAddress("Pune");
			emp.setAddres(add);
			
			req.setAttribute("person", person);
			
			HttpSession session = req.getSession();
			session.setAttribute("employee", emp);
			
			resp.addCookie(new Cookie("user", "Tomcat-User1"));
			getServletContext().setAttribute("user", "Tomcat-user2");
			
			RequestDispatcher rd=req.getRequestDispatcher("/view/home.jsp");
			rd.forward(req, resp);
			
	}

}
