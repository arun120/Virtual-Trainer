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
public class Cust_view_db {
    
       
  public Personal getpersonal(String username)
   {
       Personal p=new Personal();
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql="select * from personal where username='"+username+"';";
                
                ResultSet rs;
                rs=stmt.executeQuery(sql);

                if(rs.next()) {
                    
                    p.setUsername(rs.getString("username"));
                    p.setName(rs.getString("name"));
                    p.setAge(rs.getString("age"));
                    p.setFather(rs.getString("f_s_name"));
                    p.setEmail(rs.getString("email_id"));
                    p.setGender(rs.getString("gender"));
                    p.setOcc(rs.getString("oc_ds"));
                    p.setAddress(rs.getString("address"));
                    p.setContact(rs.getString("contact_no"));
                                   
                                                    
                    
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

return p;  
  
   }

    public Health_1 gethealth_1(String username)
   {
       Health_1 h=new Health_1();
       
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql="select * from health where username='"+username+"';";
                
                ResultSet rs;
                rs=stmt.executeQuery(sql);

                if(rs.next()) {
                    
                 h.setUsername(rs.getString("username"));
                 h.setSurgery(rs.getString("surgery"));
                 h.setBpain(rs.getString("b_pain"));
                 h.setLbp(rs.getString("low_bp"));
                 h.setJpain(rs.getString("j_pain"));
                 h.setBreath(rs.getString("breath"));
                 h.setExercise(rs.getString("exercise"));
                 h.setOther_med(rs.getString("other_med"));
                 h.setPre_medicine(rs.getString("per_medicine"));
                 h.setHeart(rs.getString("heart/stroke"));
                 h.setHbp(rs.getString("high_bp"));
                 
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

  return h;
   }

  
    public Health_2 gethealth_2(String username)
   {
       Health_2 h=new Health_2();
       
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql="select * from health where username='"+username+"';";
                
                ResultSet rs;
                rs=stmt.executeQuery(sql);

                if(rs.next()) {
                    
                 h.setAllergies(rs.getString("allergies"));
                 h.setAsthma(rs.getString("asthma"));
                 h.setBone_brk(rs.getString("bone_brk"));
                 h.setCheast(rs.getString("cheast_pain"));
                 h.setChildbirth(rs.getString("childbirth"));
                 h.setDiabetes(rs.getString("diabetes"));
                 h.setEpilepsy(rs.getString("epilepsy"));
                 h.setFainting(rs.getString("fainting"));
                 h.setHeart_att(rs.getString("heart_att"));
                 h.setHeart_dis(rs.getString("heart_dis"));
                 h.setHeart_murmur(rs.getString("heart_murmur"));
                 h.setOedema(rs.getString("oedema"));
                 h.setPalpitations(rs.getString("palpitations"));
                 h.setPneumonia(rs.getString("pneumonia"));
                 h.setRec_surgery(rs.getString("rec_surgery"));
                 h.setSeizure(rs.getString("seizure"));
                 h.setShort_breath(rs.getString("short_breath"));
                 h.setTachycardia(rs.getString("tachycardia"));
                 
                 

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

  return h;
   }

    
}
