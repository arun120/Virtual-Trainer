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
public class Health_1_db_update {
    
    
      public Integer update(Health_1 h)
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
                
               sql="update health set exercise='"+h.getExercise()+"',heart/stroke='"+h.getHeart()+
                       "',high_bp='"+h.getHbp()+"',low_bp='"+h.getLbp()+"',breath='"+h.getBreath()+
                       "',b_pain='"+h.getBpain()+"',j_pain='"+h.getJpain()+
                       "',per_medicine='"+h.getPre_medicine()+"',other_med='"+h.getOther_med()+
                       "',surgery='"+h.getSurgery()+"' where username='"+h.getUsername()+"';";
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
