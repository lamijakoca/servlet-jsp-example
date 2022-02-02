package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "NewServlet", urlPatterns = {"/NewServlet"})
public class NewServlet extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        
        //database 
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root", "");
            
            Statement stm = con.createStatement();
            
            ResultSet rs = stm.executeQuery("select * from student where name='" + name + "' and surname='" + surname + "'");
            
            if(rs.next()){
//               response.sendRedirect("home.jsp");
               out.write("<html>"
                       + "<div style='background: #5F9EA0; color: white; font-size: 30px; width: 50%; margin: auto; padding: 10px; text-align: center; margin-top: 20%;'>"
                       +    "Student: " + name + " " + surname
                       +    ", here you are. Enjoy now!"
                       + "</div>"
                       + "</html>");
            } else{
                out.print("Wrong credentials.. ");
            }
            con.close();
        } catch(Exception e){
            out.print(e);
        }
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
