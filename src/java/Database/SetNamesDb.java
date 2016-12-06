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
 * @author Home
 */
public class SetNamesDb {
        public List<SetList> request()
   {
       List<SetList> set=new ArrayList<>();
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql;
                
               
                
                sql="select * from setlist";
                
                ResultSet rs=stmt.executeQuery(sql);
                 while(rs.next())
                  
                {
                    SetList list=new SetList();
                 list.setName(rs.getString("name"));
                 list.setSetid(rs.getInt("setid"));
                 set.add(list);
                
                    
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

   return set;
   }
}
