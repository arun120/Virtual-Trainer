/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Home
 */
public class Video_enc_db {
       public InputStream[] getDetails(String vid)
   {
       Integer update=0;
       InputStream input[]=new InputStream[2];
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=conn.createStatement();
                String sql;
                
                
                sql="select * from video_enc where video_id like '"+vid+"';";
                
                
                ResultSet rs=stmt.executeQuery(sql);
                if(rs.next())
                {
                   
                input[0]=rs.getBinaryStream("salt");
                input[1]=rs.getBinaryStream("iv");
                }
                stmt.close();
               // ve.getIv().close();
                //ve.getSalt().close();
                
                    
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

return input;
   }
    
       public Integer request(Video_enc ve)
   {
       Integer update=0;
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                PreparedStatement stmt=null;
                String sql;
                
                sql="insert into video_enc values ("+null+",?,?,?)";
                
                stmt = conn.prepareStatement(sql);
                stmt.setInt(1, ve.getVideo_id());
                stmt.setBinaryStream(2, ve.getSalt(),ve.getSaltlen());
                stmt.setBinaryStream(3,ve.getIv(),ve.getIvlen());
                
                update=stmt.executeUpdate();
                stmt.close();
               // ve.getIv().close();
                //ve.getSalt().close();
                
                    
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
