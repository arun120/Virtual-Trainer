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
public class Health_2 {
    
    String diabetes;
    String heart_dis;
    String cheast;
    String short_breath;
    String bone_brk;
    String childbirth;
    String allergies;
    String heart_murmur;
    String pneumonia;
    String epilepsy;
    String tachycardia;
    String oedema;
    String heart_att;
    String rec_surgery;
    String palpitations;
    String asthma;
    String seizure;
    String fainting;
    
   
    public String getDiabetes() {
        return diabetes;
    }

    public void setDiabetes(String diabetes) {
        this.diabetes = diabetes;
    }

    public String getHeart_dis() {
        return heart_dis;
    }

    public void setHeart_dis(String heart_dis) {
        this.heart_dis = heart_dis;
    }

    public String getCheast() {
        return cheast;
    }

    public void setCheast(String cheast) {
        this.cheast = cheast;
    }

    public String getShort_breath() {
        return short_breath;
    }

    public void setShort_breath(String short_breath) {
        this.short_breath = short_breath;
    }

    public String getBone_brk() {
        return bone_brk;
    }

    public void setBone_brk(String bone_brk) {
        this.bone_brk = bone_brk;
    }

    public String getChildbirth() {
        return childbirth;
    }

    public void setChildbirth(String childbirth) {
        this.childbirth = childbirth;
    }

    public String getAllergies() {
        return allergies;
    }

    public void setAllergies(String allergies) {
        this.allergies = allergies;
    }

    public String getHeart_murmur() {
        return heart_murmur;
    }

    public void setHeart_murmur(String heart_murmur) {
        this.heart_murmur = heart_murmur;
    }

    public String getPneumonia() {
        return pneumonia;
    }

    public void setPneumonia(String pneumonia) {
        this.pneumonia = pneumonia;
    }

    public String getEpilepsy() {
        return epilepsy;
    }

    public void setEpilepsy(String epilepsy) {
        this.epilepsy = epilepsy;
    }

    public String getTachycardia() {
        return tachycardia;
    }

    public void setTachycardia(String tachycardia) {
        this.tachycardia = tachycardia;
    }

    public String getOedema() {
        return oedema;
    }

    public void setOedema(String oedema) {
        this.oedema = oedema;
    }

    public String getHeart_att() {
        return heart_att;
    }

    public void setHeart_att(String heart_att) {
        this.heart_att = heart_att;
    }

    public String getRec_surgery() {
        return rec_surgery;
    }

    public void setRec_surgery(String rec_surgery) {
        this.rec_surgery = rec_surgery;
    }

    public String getPalpitations() {
        return palpitations;
    }

    public void setPalpitations(String palpitations) {
        this.palpitations = palpitations;
    }

    public String getAsthma() {
        return asthma;
    }

    public void setAsthma(String asthma) {
        this.asthma = asthma;
    }

    public String getSeizure() {
        return seizure;
    }

    public void setSeizure(String seizure) {
        this.seizure = seizure;
    }

    public String getFainting() {
        return fainting;
    }

    public void setFainting(String fainting) {
        this.fainting = fainting;
    }
    
    public static Health_2 getById(String id){
    
        Health_2 h = null;
         
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
            h=new Health_2();
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
