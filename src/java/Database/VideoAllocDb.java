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
 * @author Home
 */
public class VideoAllocDb {
    
    
       public Integer request(VideoAlloc va)
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
                sql="delete from video_alloc where cust_id='"+va.getCustId()+"';";
                stmt.executeUpdate(sql);
                
                sql="insert into video_alloc values("+null+",'"+va.getCustId()+"','"+va.getSetId()+"');";

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
