package com.example.TP2J2EE;

import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = {"/fs"})
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {

    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nom =req.getParameter("nom");
        req.setAttribute("nom",nom);

        RequestDispatcher rq=req.getRequestDispatcher("index.jsp");
        rq.forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException  , ServletException {
        int nbLig= Integer.parseInt(request.getParameter("nbLig"));
        int nbCol= Integer.parseInt(request.getParameter("nbCol"));

        request.setAttribute("nbLig",nbLig);
        request.setAttribute("nbCol",nbCol);

        RequestDispatcher rq=request.getRequestDispatcher("vue.jsp");
        rq.forward(request,response);
        request.getRequestDispatcher("vue.jsp").forward(request,response);
    }

    public void destroy() {
    }
}