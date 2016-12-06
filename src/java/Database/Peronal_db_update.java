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

/**
 *
 * @author Lenovo
 */
public class Peronal_db_update {
    
    public Integer update(Personal p)
    {
     Integer update=0;
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql;
                
               sql="update personal set name='"+p.getName()+"',age='"+p.getAge()+"',f_s_name='"+p.getFather()+
                       "',oc_ds='"+p.getOcc()+"',address='"+p.getAddress()+"',email_id='"+p.getAddress()+
                       "',contact_no='"+p.getContact()+"',gender='"+p.getGender()+"' where username='"
                       +p.getUsername()+"';";
                
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

return update;
    }
    
}
