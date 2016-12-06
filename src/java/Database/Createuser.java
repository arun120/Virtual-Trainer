/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Home
 */
public class Createuser {
    
    public Integer create(String username,String pass) 
    {
    
        Integer update=0; 
        Dbdetails db=new Dbdetails("gym");
        
        try {
            Class.forName(db.getDriver());
            
            Connection conn=null;
            conn=DriverManager.getConnection(db.getUrl(),db.getUserName(),db.getPass());
            
            Statement stmt=null;
            stmt=conn.createStatement();
            String sql="insert into cust_login(user_id,pass) values('"+username+"','"+pass+"')";
            
            if(stmt.executeUpdate(sql)==1)
                update=1;
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Createuser.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Createuser.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        if(update==0)
            return 0;
        else

            return 1;
    
    }
    
}
