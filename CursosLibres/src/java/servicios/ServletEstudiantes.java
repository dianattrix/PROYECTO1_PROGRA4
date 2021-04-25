/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicios;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author diana
 */

@WebServlet(name = "ServletEstudiantes", urlPatterns = {"/ServletEstudiantes"})
public class ServletEstudiantes extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        System.out.println();
        Enumeration<String> e = request.getParameterNames();
        int n = 0;
        while (e.hasMoreElements()) {
            n++;
            String p = e.nextElement();
            System.out.print(String.format("\"%s\": [", p));

            String[] v = request.getParameterValues(p);
            for (int i = 0; i < v.length; i++) {
                if (i > 0) {
                    System.out.print(", ");
                }
                System.out.print(String.format("\"%s\"", v[i]));
            }

            System.out.println("]");
        }
        System.out.println();

        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println();
        System.out.println("Solicitud via GET..");
        processRequest(request, response);
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println();
        System.out.println("Solicitud via POST..");
        processRequest(request, response);
        response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servicio de ejemplo (información del formulario)";
    }

}
