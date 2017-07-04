/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;
import java.sql.Date;
//import java.util.Date;
/**
 *
 * @author Lenovo
 */
public class Payment {
    String username;
    String name;
    Date start;

   
    Date end;
    String discount;
    String usage;
    String pay;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getUsername() {
        
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStart() {
          
        
        return start.toString();
    }

    public void setStart(String start) {
        try
        {
            
        this.start = Date.valueOf(start);
        }catch (IllegalArgumentException e){
        e.printStackTrace();
        }
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(String end) {
        try
        {
            
        this.end = Date.valueOf(end);
        }catch (IllegalArgumentException e){
        e.printStackTrace();
        }   
    }

    public String getDiscount() {
        return discount;
    }

    public void setDiscount(String discount) {
        this.discount = discount;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public String getPay() {
        return pay;
    }

    public void setPay(String pay) {
        this.pay = pay;
    }
    
    
    
    
}
