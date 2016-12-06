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
public class Login_db {
    
   private int verified;
   
   public Login_db()
   {verified=0;}
    
  public Integer authenticate(String username,String password)
   {
   
       Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql="select * from login where user_id='"+username+"' and password='"+password+"';";
                ResultSet rs;

                rs=stmt.executeQuery(sql);


                if(rs.next()) {

                    
                 verified =1;              
                    
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


            if(verified == 1)
                return 1;

            else
                 return 0;
   
   }

  public List<String> getCustid()
  {
  List<String> names=new ArrayList<>();
  
  Dbdetails db=new Dbdetails("gym");
       Connection conn=null;
            try
            {
                Class.forName(db.getDriver());


                conn= DriverManager.getConnection(db.getUrl(), db.getUserName(), db.getPass());
                Statement stmt=null;
                stmt = conn.createStatement();
                String sql="select user_id from cust_login ;";
                ResultSet rs;

                rs=stmt.executeQuery(sql);

                    
                while(rs.next()) {
                        
                        names.add(rs.getString("user_id"));
                        
                    
                            
                    
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
  return names;
  }
}
