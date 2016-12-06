/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;

/**
 *
 * @author Home
 */
public class Video_db {
    public List getDetails(String sql){
    List<Video> v=new ArrayList<>();
    
    
    Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                
                
                
                               
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next())
                {
                Video temp=new Video();
                temp.setDes(rs.getString("des"));
                temp.setName(rs.getString("name"));
                temp.setPath(rs.getString("path"));
                temp.setVideo_id(rs.getInt("video_id"));
                temp.setExceptions(rs.getString("exceptions"));
                v.add(temp);
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
    
    return v;
    
    
    
    }
    public List getDetails(){
    return getDetails("select * from video");
    }
       public Integer request(Video v)
   {
       Integer update=0;
       int vid = 0;
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql;
                
                sql="insert into video values ("+null+",'"+v.getPath()+"','"+v.getName()+"','"+v.getDes()+"','"+v.getExceptions()+"');";
                update=stmt.executeUpdate(sql);
                
                sql="select video_id from video where path='"+v.getPath()+"' and name='"+v.getName()+"' and des='"+v.getDes()+"';";
                
                ResultSet rs=stmt.executeQuery(sql);
                if(rs.next())
                    vid=rs.getInt("video_id");
                
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
if(update==1)
return vid;
else
    return 0;
   }

    
}
