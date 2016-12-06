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
public class Health_2_db_update {
    
      public Integer update(Health_2 h,String username)
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
                
               sql="update health set diabetes='"+h.getDiabetes()+"',heart_dis='"+h.getHeart_dis()+
                       "',cheast_pain='"+h.getCheast()+"',short_breath='"+h.getShort_breath()+
                       "',bone_brk='"+h.getBone_brk()+"',childbirth='"+h.getChildbirth()+
                       "',allergies='"+h.getAllergies()+"',heart_murmur='"+h.getHeart_murmur()+
                       "',pneumonia='"+h.getPneumonia()+"',epilepsy='"+h.getEpilepsy()+
                       "',tachycardia='"+h.getTachycardia()+"',oedema='"+h.getOedema()+
                       "',heart_att='"+h.getHeart_att()+"',rec_surgery='"+h.getRec_surgery()+
                       "',palpitations='"+h.getPalpitations()+"',asthma='"+h.getAsthma()+"',seizure='"+
                       h.getSeizure()+"',fainting='"+h.getFainting()+"' where username='"+
                       username+"';";
               
               
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
