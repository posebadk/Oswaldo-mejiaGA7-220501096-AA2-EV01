/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controlador;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import modelo.TecnicoDAO;
import jakarta.servlet.RequestDispatcher;
import javax.swing.table.DefaultTableModel;
import modelo.Tecnico;

/**
 *
 * @author Conejo
 */
public class TecnicoController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        TecnicoDAO tecnicoDAO = new TecnicoDAO();
        String accion;
        RequestDispatcher dispatcher = null;
        accion = request.getParameter("accion");
        if (accion == null || accion.isEmpty()) {
            dispatcher = request.getRequestDispatcher("index.jsp");
            DefaultTableModel listartecnico = tecnicoDAO.getDatos();
            request.setAttribute("lista", listartecnico);
        }else if ("nuevo".equals(accion)){
            dispatcher = request.getRequestDispatcher("nuevo.jsp");
            
        }else if ("insertar".equals(accion)){
            String CC=request.getParameter("CC");
            String Nombre=request.getParameter("Nombre");
            String Telefono=request.getParameter("Telefono");
            String Fecha=request.getParameter("Fecha");
            dispatcher = request.getRequestDispatcher("nuevo.jsp");
            Tecnico tecnico=new Tecnico(0,CC, Nombre, Telefono, Fecha);
            tecnicoDAO.insertar(tecnico);
            dispatcher = request.getRequestDispatcher("index.jsp");
            DefaultTableModel listartecnico = tecnicoDAO.getDatos();
            request.setAttribute("lista", listartecnico);
        }
        
        
        
        dispatcher.forward(request, response);
        

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
