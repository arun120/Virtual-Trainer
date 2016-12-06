/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Lenovo
 */
public class Change_password {
    
       Integer update;
    
    public String reqchange(String username,String c_pass,String newpass)
    {

        
    Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql="update login set password='"+newpass+"' where user_id='"+username+"' and password='"+c_pass+"';";
                
                update=stmt.executeUpdate(sql);

               


                    
                stmt.close();

            }catch(SQLException se)
            {
                se.printStackTrace();
            } catch (Exception e) {
                e.printStackTrace();
            }
            finally{
                try{
                    if(conn!=null)
                    conn.close();
                }catch(SQLException se)
                {
                    se.printStackTrace();
                }
            }
            
            if(update==1)
            {
            return ("Password Changed Successfully!!");
            }
            else
                return("Password not matched");
    }
    
}
 