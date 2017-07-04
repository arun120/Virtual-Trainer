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
public class ExerciseSetDb {
    
    public static List<ExerciseSet> getExercises(String setid){
       
        List<ExerciseSet> list =new ArrayList<>();
        Dbdetails db=new Dbdetails("gym");
       
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql;
                sql="select v.name as exname,s.* from exercise_set s,video v where v.video_id=s.video_id and set_id='"+setid+"'";
                ResultSet rs=stmt.executeQuery(sql);
                while(rs.next()){
                ExerciseSet e=new ExerciseSet();
                e.setPrio(rs.getString("priority"));
                e.setSetId(setid);
                e.setName(rs.getString("exname"));
                e.setVideoId("video_id");
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
    
        public Integer request(List<ExerciseSet> es)
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
                for(ExerciseSet set:es)
                {
                sql="insert into exercise_set values("+null+",'"+set.getSetId()+"','"+set.getVideoId()+"','"+
                        set.getPrio()+"');";
                update+=stmt.executeUpdate(sql);
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
