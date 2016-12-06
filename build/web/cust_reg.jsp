<%-- 
    Document   : cust_reg
    Created on : Feb 1, 2016, 11:36:54 AM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form action="cust_reg" method="post">
            Username:<input type="text" name="userid" value="User_Id">
            <br>Password:<input type="password" name="pass" value="Password">
            <br>Name:<input type="text" name="name" value="Name">
            <br>Age:<input type="text" name="age" value="Age">
            <br>Gender:
            Male:<input type="radio" name="gender" value="Male" checked="true">
            Female:<input type="radio" name="gender" value="Female">
            
            <br>Father/Spouse Name:<input type="text" name="father" value="Name">
            <br>Occupation/Designation:<input type="text" name="occupation" value="Occ/Desg">
            <br>Address:<br><textarea rows="5" cols="35" name="address" value="Address"></textarea>
            <br>Email_id:<input type="text" name="email" value="email">
            <br>Contact_no:<input type="text" name="contact" value="mobile_no">
            
            
            
            <!--Medical Details-->
            
            <br><br><br>
            
            When was the last time you exercised?
            <br>
            <br>Currently:<input type="radio" name="exercise" value="c">
            <br>Less than 1:<input type="radio" name="exercise" value="lt1">
            <br>1 to 3:<input type="radio" name="exercise" value="1t3">
            <br>3+years:<input type="radio" name="exercise" value="3p">
            
            <br>
            Any Heart or Stroke condition?
            <br>
            yes:<input type="radio" name="heart" value="y">
            no:<input type="radio" name="heart" value="n">
            <br>
            
            High Blood Pressure?
            
            <br>
            yes:<input type="radio" name="hbp" value="y">
            no:<input type="radio" name="hbp" value="n">
            <br>
            
            low blood pressure?
            <br>
            yes:<input type="radio" name="lbp" value="y">
            no:<input type="radio" name="lbp" value="n">
            <br>
            
            any breathing difficulties?
            
            <br>
            yes:<input type="radio" name="breath" value="y">
            no:<input type="radio" name="breath" value="n">
            <br>
            
            
            Any back pain problem?
            
            <br>
            yes:<input type="radio" name="backpain" value="y">
            no:<input type="radio" name="backpain" value="n">
            <br>
            
            Joint problems?
            
            <br>
            yes:<input type="radio" name="joint" value="y">
            no:<input type="radio" name="joint" value="n">
            <br>
            
            Do you have any surgery in last 6 months?
            
            <br>
            yes:<input type="radio" name="surgery" value="y">
            no:<input type="radio" name="surgery" value="n">
            <br>
            
            
            are you taking any prescribed medication?
            
            <br>
            yes:<input type="radio" name="medication" value="y">
            no:<input type="radio" name="medication" value="n">
            <br>
            
            Do you have any other medical condition that should be made known?
            
            <br>
            yes:<input type="radio" name="condition" value="y">
            no:<input type="radio" name="condition" value="n">
            <br>
            
            Please indicate any pre-existing medical condition?
            <br>
            Diabetes:<input type="checkbox" name="diabetes" value="y">
            Heart Disease:<input type="checkbox" name="heart_dis" value="y">
            chest pain:<input type="checkbox" name="chest" value="y">
            shortness of breath:<input type="checkbox" name="short" value="y">
            broken bone:<input type="checkbox" name="bone" value="y">
            allergies:<input type="checkbox" name="allergies" value="y">
            recent child berth:<input type="checkbox" name="child" value="y">
            
            <br>
            
            Heart Murmur: <input type="checkbox" name="murmur" value="y">
            Pneumonia: <input type="checkbox" name="pneumonia" value="y">
            Epilepsy: <input type="checkbox" name="epilepsy" value="y">
            Tachycardia:<input type="checkbox" name="tachycardia" value="y">
            
            Oedema : <input type="checkbox" name="oedema" value="y">
            Heart Attack: <input type="checkbox" name="attack" value="y">
            Recent Surgery:<input type="checkbox" name="rec_surgery" value="y">
            Palpitations :<input type="checkbox" name="palpitations" value="y">
            High Blood Pressure:<input type="checkbox" name="high_bp" value="y">
            Low Blood Pressure: <input type="checkbox" name="low_bp" value="y">
            Asthma:   <input type="checkbox" name="asthma" value="y">
            Seizures: <input type="checkbox" name="seizures" value="y">
            Fainting: <input type="checkbox" name="fainting" value="y">
            
            
            
            <!-- payment details-->
            
            <br>
            Start Date:<input type="date" name="start">
            <br>
            End Date:<input type="date" name="end">
            <br>
            Membership wise:
            Single membership:<input type="radio" name="discount" value="20">
            Couple membership:<input type="radio" name="discount" value="40">
            Friends Group:<input type="radio" name="discount" value="60">
            
            <br>
            Gym+Personal Trainer:<input type="radio" name="use" value="1">
            Gym+Sona Bath: <input type="radio" name="use" value="2">
            Gym+yoga: <input type="radio" name="use" value="3">
            
            <br>
            
            Cash in full:<input type="radio" name="pay" value="1">
            Direct Debit:<input type="radio" name="pay" value="2">
            Credit card:<input type="radio" name="pay" value="3">
            Cheque :<input type="radio" name="pay" value="4">
            DD initial Fee:<input type="radio" name="pay" value="5">
            
            
            <!-- choice of training -->
            <br>
            
            Fitness :<input type="checkbox" name="choice1" value="1">
            Body Building:<input type="checkbox" name="choice2" value="2">
            Weight Reduction:<input type="checkbox" name="choice3" value="3">
            
            <!-- time slot -->
            <br>
            
            Morning :<input type="checkbox" name="time1" value="1">
            Evening:<input type="checkbox" name="time2" value="2">
            Day:<input type="checkbox" name="time3" value="3">
            
            
            
            <input type="submit" value="Submit">
            
            
        </form>
        
        
    </body>
</html>
