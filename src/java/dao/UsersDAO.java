
package dao;

import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Users;

public class UsersDAO {
    
    public boolean checkEmail(String email) 
    {
     Connection connection = DBConnect.getConnecttion();         
         String sql = "SELECT * FROM users WHERE email = '" + email + "'";
         PreparedStatement ps;
         try
         {
             ps=connection.prepareCall(sql);
             ResultSet rs = ps.executeQuery();
             while(rs.next())
             {
                 connection.close();
                 return true;
             }
         } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
         return false;
    }
       public  boolean insertUser(Users u) {  
                       Connection connection  = DBConnect.getConnecttion();
                       String sql  =  "INSERT INTO users VALUES(?,?,?,?,?)";  
                       try {  
                           PreparedStatement ps = connection.prepareCall(sql);  
                           ps.setLong(1, u.getID());
                           ps.setString(2, u.getName());
                           ps.setString(3, u.getEmail());
                           ps.setString(4, u.getPass());
                           ps.setBoolean(5,u.isRole());
                           ps.executeUpdate();
                           return true;
                       } catch (SQLException ex) {  
                           Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);  
                       }  
                       return false;   
                   }  
    
        public Users login(String email, String password) {   
        Connection con = DBConnect.getConnecttion();  
        String sql = "select * from users where email='" + email + "' and  pass='" + password + "'";  
        PreparedStatement ps;  
        try {  
            ps = (PreparedStatement) con.prepareStatement(sql);   
            ResultSet rs = ps.executeQuery();  
            if (rs.next()) {  
                 Users u = new Users();  
                u.setEmail(rs.getString("email"));  
                con.close();  
                return u;  
            }  
        } catch (SQLException e) {   
            e.printStackTrace();  
        }  
        return null;  
    }  
      public Users getUser(long ID) {
        try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "SELECT * FROM users WHERE user_id = ?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, ID);
            ResultSet rs = ps.executeQuery();
            Users u = new Users();
            while (rs.next()) {
                u.setEmail(rs.getString("email"));
            }
            return u;
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
      
      public  boolean insertAdmin(Users u) {  
                       Connection connection  = DBConnect.getConnecttion();
                       String sql  =  "INSERT INTO users VALUES(?,?,?,?,?)";  
                       try {  
                           PreparedStatement ps = connection.prepareCall(sql);  
                           ps.setLong(1, u.getID());
                           ps.setString(2, u.getName());
                           ps.setString(3, u.getEmail());
                           ps.setString(4, u.getPass());
                           ps.setBoolean(5,u.isRole());
                           ps.executeUpdate();
                           return true;
                       } catch (SQLException ex) {  
                           Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);  
                       }  
                       return false;   
                   }  
    
      
      public Users loginAD(String email, String password) {   
        Connection con = DBConnect.getConnecttion();  
        String sql = "select * from users where email='" + email + "' and  pass='" + password + "' and role ='1'";  
        PreparedStatement ps;  
        try {  
            ps = (PreparedStatement) con.prepareStatement(sql);   
            ResultSet rs = ps.executeQuery();  
            if (rs.next()) {  
                 Users u = new Users();  
                u.setEmail(rs.getString("email"));  
                con.close();  
                return u;  
            }  
        } catch (SQLException e) {   
            e.printStackTrace();  
        }  
        return null;  
    }  
}
