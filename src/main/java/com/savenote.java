package com;
import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.annotation.WebServlet;


@WebServlet(name = "savenote", urlPatterns = {"/savenote"})
public class savenote extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String title = request.getParameter("title");
	    String content = request.getParameter("content");
	    PrintWriter out = response.getWriter();
	    note n = new note(title, content);
	    n.setId();
	    n.setCreatedDate();
	    SessionFactory sf = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	    Session s = sf.openSession();
	    Transaction tx = null;
	    try {
	        tx = s.beginTransaction();
	        s.save(n);
	        tx.commit();
	        response.sendRedirect("popup.jsp");
	    } catch (Exception e) {
	        if (tx != null) {
	            tx.rollback();
	        }
	        e.printStackTrace();
	        out.println("Error occurred while saving the note.");
	    } finally {
	        s.close();
	    }
	}

   
}