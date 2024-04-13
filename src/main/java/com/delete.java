package com;

import java.io.IOException;
import java.io.PrintWriter;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



public class delete extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("noteid"));
        PrintWriter out = response.getWriter();
       Session s = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
       Transaction tx = s.beginTransaction();
       note note = (note)s.get(note.class, id);
       s.delete(note);
       tx.commit();
       s.close();
       response.sendRedirect("allnotes.jsp");
        out.println(id);
    	
    }
}
