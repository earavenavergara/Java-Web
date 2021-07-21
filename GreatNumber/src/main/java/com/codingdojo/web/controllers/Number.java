package com.codingdojo.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Number
 */
@WebServlet("/Number")
public class Number extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Integer i= (int) (Math.random()*10+1);
	String nRand = i.toString();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Number() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		Integer i= (int) (Math.random()*10+1);
		nRand = i.toString();
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String numero = request.getParameter("numero");
		HttpSession session = request.getSession();
		session.setAttribute("nRand", nRand);
		if (numero.equals(session.getAttribute("nRand"))) {
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/true.jsp");
			view.forward(request, response);
		} else {
			System.out.println(nRand);  
			if (Integer.parseInt(nRand) < Integer.parseInt(numero))
				session.setAttribute("txt", "too high");
			else
				session.setAttribute("txt", "too low");
			RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/false.jsp");
			view.forward(request, response);
		}

	}

}
