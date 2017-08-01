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
public class Health_1 {
    
    
    String username;
    String exercise;
    String heart;
    String hbp;
    String lbp;
    String bpain;
    String jpain;
    String breath;
    String surgery;
    String pre_medicine;
    String other_med;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getExercise() {
        return exercise;
    }

    public void setExercise(String exercise) {
        this.exercise = exercise;
    }

    public String getHeart() {
        return heart;
    }

    public void setHeart(String heart) {
        this.heart = heart;
    }

    public String getHbp() {
        return hbp;
    }

    public void setHbp(String hbp) {
        this.hbp = hbp;
    }

    public String getLbp() {
        return lbp;
    }

    public void setLbp(String lbp) {
        this.lbp = lbp;
    }

    public String getBpain() {
        return bpain;
    }

    public void setBpain(String bpain) {
        this.bpain = bpain;
    }

    public String getJpain() {
        return jpain;
    }

    public void setJpain(String jpain) {
        this.jpain = jpain;
    }

    public String getBreath() {
        return breath;
    }

    public void setBreath(String breath) {
        this.breath = breath;
    }

    public String getSurgery() {
        return surgery;
    }

    public void setSurgery(String surgery) {
        this.surgery = surgery;
    }

    public String getPre_medicine() {
        return pre_medicine;
    }

    public void setPre_medicine(String pre_medicine) {
        this.pre_medicine = pre_medicine;
    }

    public String getOther_med() {
        return other_med;
    }

    public void setOther_med(String other_med) {
        this.other_med = other_med;
    }
    
    public static Health_1 getById(String id){
    
        Health_1 h = null;
         
        Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql;
                
               sql="select * from health where username='"+id+"'";
                       
                       
                      
                       
            ResultSet rs=stmt.executeQuery(sql);
            if(rs.next()){
            h=new Health_1();
            h.setBpain(rs.getString("b_pain"));
            h.setBreath(rs.getString("breath"));
            h.setExercise(rs.getString("exercise"));
            h.setHbp(rs.getString("high_bp"));
            h.setLbp(rs.getString("low_bp"));
            h.setOther_med(rs.getString("other_med"));
            h.setPre_medicine(rs.getString("per_medicine"));
            h.setSurgery(rs.getString("surgery"));
            h.setUsername(id);
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
