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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Lenovo
 */
public class Payment_db {
     public static List<Payment> getLapsed(String date){
       
        List<Payment> list =new ArrayList<>();
        Dbdetails db=new Dbdetails("gym");
       
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql;
                sql="select pe.name,p.end_date,p.username from payment p,personal pe where p.username=pe.username and p.end_date < '"+date+"'";
                //System.err.println(sql);
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next()){
                Payment e=new Payment();
                e.setEnd(rs.getDate("end_date").toString());
                e.setName(rs.getString("name"));
                e.setUsername(rs.getString("username"));
                
                list.add(e);
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

    return list;
    }
      public Integer request(Payment pay)
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
                
                sql="insert into payment values("+null+",'"+pay.getUsername()+"','"+pay.getStart()+"','"
                        +pay.getEnd()+"','"+pay.getDiscount()+"','"+pay.getUsage()+"','"+pay.getPay()+"');";

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
