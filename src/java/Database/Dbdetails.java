package Database;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Home
 */

public class Dbdetails {


    
    final private String Driver="com.mysql.jdbc.Driver";
    final private String UserName="root";
    final private String Pass="1234";
     private String Url="jdbc:mysql://localhost:3306/";
    
     Dbdetails()
    {
     }
    Dbdetails(String s)
    {
        Url=Url+s;
    }

    

    public String getDriver() {
        return Driver;
    }

    public String getUserName() {
        return UserName;
    }

    public String getPass() {
        return Pass;
    }

    public String getUrl() {
        return Url;
    }
}
