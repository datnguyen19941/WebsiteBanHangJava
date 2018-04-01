/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Admin1
 */

public class DBConnect {
    private static final String hostname = "localhost";
    private static final String databasename = "shop";
    private static final String databaseusername = "root";
    private static final String databasepassword = "";
    public static Connection getConnecttion() 
    {         
        Connection cons = null; 
        
        try 
        {             
            Class.forName("com.mysql.jdbc.Driver");             
            cons = (Connection) DriverManager.getConnection( "jdbc:mysql://"+ hostname +":3306/"+ databasename +"?useUnicode=true&characterEncoding=UTF-8",databaseusername,databasepassword);
                System.out.println("connected mysql");        
        } 
        catch (Exception e) 
        {             
            e.printStackTrace();         
        }         
        return cons;     
    }      
    public static void main(String[] args) 
    {         
        System.out.println(getConnecttion());     
    }   
    
    
}
