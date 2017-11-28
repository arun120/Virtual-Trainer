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
 * @author Fluffy
 */
public class HistoryDb {
    
    
    public static  List<History> getHistory(String custid,String set_id){
       
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
       List<History> list=new ArrayList<>();
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql;
                
               
                
                sql="select h.* from history h where  h.cust_id like '"+custid+"' and h.set_id like '"+set_id+"'";
                System.out.println(sql);
                ResultSet rs=stmt.executeQuery(sql);
                 while(rs.next())
                {
                    History h=new History();
                    h.setCust_id(custid);
                    h.setSet_id(set_id);
                    h.setVideo_id(rs.getString("video_id"));
                    h.setStatus(rs.getString("status"));
                    list.add(h);
                    
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
    
}
