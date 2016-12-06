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
 * @author Home
 */
public class Cust_reg_db {
    
    public Integer register(Personal user,Health_1 h1,Health_2 h2,Time_slot t,Chc_training ct)
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
                String sql="insert into personal(username,name,age,f_s_name,oc_ds,address,email_id,contact_no,gender) "
                        + "values('"+user.getUsername()+"','"+user.getName()+"','"+user.getAge()+"','"+user.getFather()
                        +"','"+user.getOcc()+"','"+user.getAddress()+"','"+user.getEmail()+"','"+user.getContact()
                        +"','"+user.getGender()+"');";

                if(stmt.executeUpdate(sql)==1)
                {
                
                 sql="insert into health values("+null+",'"+user.getUsername()+"','"
                         +h1.getExercise()+"','"+h1.getHeart()+"','"+h1.getHbp()+"','"
                         +h1.getLbp()+"','"+h1.getBreath()+"','"+h1.getBpain()+"','"+h1.getJpain()+"','"
                         +h1.getSurgery()
                         +"','"+h1.getPre_medicine()+"','"+h1.getOther_med()+"','"
                         +h2.getDiabetes()+"','"+h2.getHeart_dis()+"','"+h2.getCheast()
                         +"','"+h2.getShort_breath()+"','"+h2.getBone_brk()+"','"+h2.getChildbirth()
                         +"','"+h2.getAllergies()+"','"+h2.getHeart_murmur()+"','"+h2.getPneumonia()
                         +"','"+h2.getEpilepsy()+"','"+h2.getTachycardia()+"','"+h2.getOedema()
                         +"','"+h2.getHeart_att()+"','"+h2.getRec_surgery()+"','"+h2.getPalpitations()
                         +"','"+h2.getAsthma()+"','"+h2.getSeizure()+"','"+h2.getFainting()
                         +"');";
                 
                 
                 if(stmt.executeUpdate(sql)==1)
                 {
                 
                     sql="insert into time_slot values ("+null+",'"+t.getUsername()+"','"+t.getMrng()+"','"+
                             t.getEve()+"','"+t.getDay()+"');";
                     
                     if(stmt.executeUpdate(sql)==1)
                     {
                     sql="insert into chc_traing values ("+null+",'"+ct.getUsername()+"','"+ct.getFit()+"','"
                             +ct.getWeg_red()+"','"+ct.getBdy_bld()+"');";
                     
                     update=stmt.executeUpdate(sql);
                     }
                 }
                      
                }
                
               


                    
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
