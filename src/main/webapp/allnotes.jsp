<%@ page import="org.hibernate.Session" %>
<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="org.hibernate.cfg.Configuration" %>
<%@ page import="com.*" %>
<%@ page import="java.util.List" %>
<%@ page import="org.hibernate.Query" %>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="plugins.jsp" %>
    <title>Add notes</title>
    <style>
        .purple {
            background: rgb(2, 0, 36);
            background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(68, 9, 121, 1) 50%, rgba(0, 212, 255, 1) 100%);
        }

        /* Add padding to the form container */
    </style>
</head>
<body>
<div class="container-fluid p-0 m-0">
    <%@ include file="navigation.jsp" %>
</div>

<%
    SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
    Session s = sessionFactory.openSession();
    Query query = s.createQuery("from notes"); // Assuming "Note" is the name of your entity class
    List<note> noteList = query.list();
    for (note note : noteList) {
 %>
<div class="card">
  <div class="card-header">
  </div>
  <div class="card-body">
    <h5 class="card-title"><%=note.getTitle() %></h5>
    <p class="card-text"><%= note.getContent() %>></p>
    <a href="delete?noteid=<%= note.getId() %>" class="btn btn-danger">Delete</a>
     <a href="#" class="btn btn-primary">update</a>
  </div>
</div> 


<% } %>

</body>
</html>
