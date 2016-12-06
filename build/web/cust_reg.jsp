
<!DOCTYPE html>
<html class=""><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><script src="js/console_runner-4c423e33d523169b92b57376873b654f.js"></script><meta charset="UTF-8"><meta name="robots" content="noindex">

        <link rel="stylesheet" href="css/form.css">


        <link rel="stylesheet" href="css/input.css">


    </head>







    <body>
        <!-- multistep form -->
        <form id="msform" action="cust_reg" method="post">
            <!-- progressbar -->
            <ul id="progressbar">
                <li class="active">Account Setup</li>
                <li>Medical detail</li>
                <li>Training option </li>
                <li>Timing and Payment</li>
            </ul>
            <!-- fieldsets -->
            <fieldset>
                <h2 class="fs-title"><b>CUSTOMER DETAILS</b></h2>
               

                <input class="intext" type="text" placeholder="User_Id" name="userid">
                <input class="intext" type="password" placeholder="Password" name="pass">
                <input  class="intext" type="text" name="name" placeholder="Name">
                <input class="intext" type="text" name="age" placeholder="Age">
                <br>

                <input class="newtry" type="radio" id="radio1" name="gender" value="Male" checked>
                <label class="newtry" for="radio1">MALE</label>
                <input class="newtry" type="radio" id="radio2" name="gender" value="Female">
                <label class="newtry" for="radio2">FEMALE</label>



                <br>

                <input class="intext" type="text" name="father" placeholder="Father's /Spouse Name">
                <input class="intext" type="text" name="occupation" placeholder="Occ/Desg">
                <br><textarea rows="5" cols="35" name="address" placeholder="Address"></textarea>
                <input class="intext" type="text" name="email" placeholder="email">
                <input class="intext" type="text" name="contact" placeholder="mobile_no">




                <input type="button" name="next" class="next action-button" value="Next">
            </fieldset>
            <fieldset>
                <h2 class="fs-title">Medical details</h2>
                
                <table>

                    <tr>
                        <th>COMMON CONDITION</th>
                    <br>
                    <br>
                    <th>Status</th>

                    </tr>
                    <tr>
                        <td>DIABETES</td>
                        <td><input id="radio-7" class="radio-custom" name="diabetes" value="y" type="checkbox">
                            <label for="radio-7" class="radio-custom-label"></label></td></td>

                    </tr>
                    <tr>
                        <td> ALLERGIES </td>
                        <td><input id="radio-8" class="radio-custom" value="y" name="allergies" type="checkbox">
                            <label for="radio-8" class="radio-custom-label"></label></td></td>

                    </tr>
                    <tr>
                        <td>ASTHMA  </td>
                        <td><input id="radio-9" class="radio-custom" value="y" name="asthma" type="checkbox">
                            <label for="radio-9" class="radio-custom-label"></label></td></td>

                    </tr>

                    <tr>
                        <td>HIGH BLOOD PRESSURE</td>
                        <td> <input id="radio-2" class="radio-custom" value="y" name="hbp" type="checkbox">
                            <label for="radio-2" class="radio-custom-label"></label></td>

                    </tr>
                    <tr>
                        <td>LOW BLOOD PRESSURE</td>
                        <td><input id="radio-3" class="radio-custom" name="lbp" value="y" type="checkbox">
                            <label for="radio-3" class="radio-custom-label"></label></td>

                    </tr>
                    <tr>
                        <td>ANY BACK PAIN PROBLEM </td>
                        <td><input id="radio-5" class="radio-custom" name="backpain"  value="y" type="checkbox">
                            <label for="radio-5" class="radio-custom-label"></label></td></td>

                    </tr>


                    <tr>
                        <td>ANY JOINT PROBLEM</td>
                        <td><input id="radio-4" class="radio-custom" name="joint"  value="y" type="checkbox">
                            <label for="radio-4" class="radio-custom-label"></label></td></td>

                    </tr>



                    <tr>
                        <td> RECENT CHILD BREATH</td>
                        <td><input id="radio-10" class="radio-custom" name="child"  value="y" type="checkbox">
                            <label for="radio-10" class="radio-custom-label"></label></td></td>

                    </tr>
                    <tr>
                        <td>ANY HEART DISEASE OR STOKE CONDITION</td>
                        <td> <input id="radio-1" class="radio-custom" name="heart"  value="y" type="checkbox">
                            <label for="radio-1" class="radio-custom-label"></label></td>

                    </tr>

                    <tr>
                        <td>  ARE YOU TAKING ANY PRESCRIBED MEDICINE
                        </td>
                        <td><input id="radio-6" class="radio-custom" name="medication" value="y" type="checkbox">
                            <label for="radio-6" class="radio-custom-label"></label></td></td>

                    </tr>
                </table>
                <br>
                <br>








                <table>
                    <tr>
                        <th>RARE CONDITION</th>
                        <th>status</th>

                    </tr>


                    <tr>
                        <td>  OEDEMA </td>
                        <td><input id="radio-11" class="radio-custom" name="oedema" value="y" type="checkbox">
                            <label for="radio-11" class="radio-custom-label"></label></td></td>

                    </tr>


                    <tr>
                        <td>  FAINTING </td>
                        <td><input id="radio-12" class="radio-custom" name="fainting" value="y" type="checkbox">
                            <label for="radio-12" class="radio-custom-label"></label></td></td>

                    </tr>

                    <tr>
                        <td> SEIZURES </td>
                        <td><input id="radio-13" class="radio-custom" name="seizures" value="y" type="checkbox">
                            <label for="radio-13" class="radio-custom-label"></label></td></td>

                    </tr>
                    <tr>
                        <td>  EPILEPSY</td>
                        <td><input id="radio-18" class="radio-custom" name="epilepsy"  value="y" type="checkbox">
                            <label for="radio-18" class="radio-custom-label"></label></td></td>

                    </tr>

                    <tr>
                        <td>PNEUMONIA </td>
                        <td><input id="radio-17" class="radio-custom" name="pneumonia"  value="y" type="checkbox">
                            <label for="radio-17" class="radio-custom-label"></label></td></td>

                    </tr>



                    <tr>
                        <td> TACHYCARDIA</td>
                        <td><input id="radio-19" class="radio-custom" name="tachycardia"  value="y" type="checkbox">
                            <label for="radio-19" class="radio-custom-label"></label></td></td>

                    </tr>
                    <tr>
                        <td>   PALPITATIONS</td>
                        <td><input id="radio-15" class="radio-custom" name="palpitations"  value="y" type="checkbox">
                            <label for="radio-15" class="radio-custom-label"></label></td>

                    </tr>
                    <tr>
                        <td>HEART MURMUR  </td>
                        <td><input id="radio-16" class="radio-custom" name="murmur"  value="y" type="checkbox">
                            <label for="radio-16" class="radio-custom-label"></label></td></td>

                    </tr>

                    <tr>
                        <td> SHORTNESS OF BREATH </td>
                        <td><input id="radio-20" class="radio-custom" name="short" value="y" type="checkbox">
                            <label for="radio-20" class="radio-custom-label"></label></td></td>

                    </tr>



                    <tr>
                        <td>ANY FRACTURE IN BODY</td>
                        <td><input id="radio-21" class="radio-custom" name="bone" value="y" type="checkbox">
                            <label for="radio-21" class="radio-custom-label"></label></td></td>

                    </tr>


                    <tr>
                        <td>DO YOU HAVE CHEST PAIN</td>
                        <td><input id="radio-22" class="radio-custom" name="chest"  value="y" type="checkbox">
                            <label for="radio-22" class="radio-custom-label"></label></td></td>

                    </tr>

                    <tr>
                        <td>HAVE BREATHING DIFFICULTIES </td>
                        <td><input id="radio-23" class="radio-custom" name="breath"  value="y" type="checkbox">
                            <label for="radio-23" class="radio-custom-label"></label></td></td>

                    </tr>
                    <tr>
                        <td>DO YOU HAVE ANY SURGERY IN LAST 6 MONTHS</td>
                        <td><input id="radio-24" class="radio-custom" name="surgery"  value="y" type="checkbox">
                            <label for="radio-24" class="radio-custom-label"></label></td></td>

                    </tr>


                    <tr>
                        <td>  DO YOY HAVE ANY MEDICAL CONDITION THAT SHOULD BE KNOWN

                        </td>
                        <td><input id="radio-25" class="radio-custom" name="condition"  value="y" type="checkbox">
                            <label for="radio-25" class="radio-custom-label"></label></td></td>

                    </tr>
                </table>

                <br>
                <br>


                <input type="button" name="previous" class="previous action-button" value="Previous">

                <input type="button" name="next" class="next action-button" value="Next">
            </fieldset>






            <fieldset>
                <h2 class="fs-title"><b>Training option</b></h2>
                <h3 class="fs-subtitle">This is step 3</h3>

                <div>        
                    <p><h5><font size="5">1.WHEN WAS YOUR LAST TIME EXERCISE</font></h5></p>
                </div>
                <br>
                <div>

                    <div class="container">
                        <div class="btn-group btn-group" data-toggle="buttons">
                            <label class="btn ">
                                <input type="radio" name="exercise" value="c"><i class="i.fa.fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>Current</span> 
                            </label>
                            <label class="btn">
                                <input type="radio" name="exercise" value="lt1"><i class="i.fa fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>Less Than 1 </span>
                            </label>
                            <label class="btn">
                                <input type="radio" name="exercise" value="1t3"><i class="i.fa .fa-square-o"></i><i class="i.fa. fa-check-square-o "></i><span>1 TO 3 Years </span>
                            </label>
                            <label class="btn">
                                <input type="radio" name="exercise" value="3p"><i class="i.fa .fa-square-o"></i><i class="i.fa. fa-check-square-o "></i><span> 3+ Years </span>
                            </label>
                        </div>
                    </div>
                </div>
                <br>
                <br>
                <div>
                    <p1><h4><font size="5">2. MEMBERSHIP OPTION</font></h4></p1>
                </div>
                <br>  

                <div>
                    <div class="container">
                        <div class="btn-group btn-group" data-toggle="buttons">
                            <label class="btn ">
                                <input type="radio" name="discount" value="20"><i class="i.fa.fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>SINGLE</span> 
                            </label>
                            <label class="btn">
                                <input type="radio" name="discount" value="40"><i class="i.fa fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>MULTIPLE </span>
                            </label>
                            <label class="btn">
                                <input type="radio" name="discount" value="60"><i class="i.fa .fa-square-o"></i><i class="i.fa. fa-check-square-o "></i><span>FRIENDS GROUP </span>
                            </label>
                        </div>
                    </div>               
                </div>
                <br>
                <div>        
                    <p><h5><font size="5">3. GYM AND EXTRA ATCTIVITY</font></h5></p>
                </div>
                <br>
                <p1><font color="#e38800"><blink>SELECT IF NECESSARY</blink></font></p1>    
                <br>
                <div class="container">
                    <div class="btn-group btn-group" data-toggle="buttons">
                        <label class="btn ">
                            <input type="radio" name="use" value="1"><i class="i.fa.fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>PERSONAL TRAINER</span> 
                        </label>
                        <label class="btn">
                            <input type="radio" name="use" value="2"><i class="i.fa fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>SONA BATH </span>
                        </label>
                        <label class="btn">
                            <input type="radio" name="use" value="3"><i class="i.fa .fa-square-o"></i><i class="i.fa. fa-check-square-o "></i><span>YOGA </span>
                        </label>
                    </div>
                </div>
                <br>
                <div>
                    <p><h6><font size="5">4.CHOICE OF TRAINING</font></h6></p>
                </div>
                <br>
                <div>
                    <div class="container">
                        <div class="btn-group btn-group" data-toggle="buttons">
                            <label class="btn ">
                                <input type="radio" name="choice1" value="1"><i class="i.fa.fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>    FITNESS</span> 
                            </label>
                            <label class="btn">
                                <input type="radio" name="choice2" value="2"><i class="i.fa fa-square-o "></i><i class="i.fa .fa-check-square-o "></i><span>BODY BULDING </span>
                            </label>
                            <label class="btn">
                                <input type="radio" name="choice3" value="3"><i class="i.fa .fa-square-o"></i><i class="i.fa. fa-check-square-o "></i><span>WEIGHT REDUCTION</span>
                            </label>
                        </div> 
                    </div>   
                </div>
                <input type="button" name="previous" class="previous action-button" value="Previous">
                <input type="button" name="next" class="next action-button" value="Next">
            </fieldset>



            <fieldset>



                <p><h3>  START DATE</h3></p>
                <br>
                <input class="intext" type="date" name="start" placeholder="START DATE">
                <br>

                <p><h4>END DATE</h4></p>
                <br>
                <input class="intext" type="date" name="end" placeholder="END DATE">
                <br>


                <div>
                    Morning :<input type="checkbox" name="time1" value="1">
                    Evening:<input type="checkbox" name="time2" value="2">
                    Day:<input type="checkbox" name="time3" value="3">
                </div>
                <br> 

                <input class="intext" type="text" name="age" placeholder="AMOUNT TO BE PAID">
                <br>
                <br>
                <div>
                    <h2>PAYMENT OPTION</h2>
                    <br>
                    <br>
                    <div class="select">
                        <select name="pay">
                            <option style=" font-style:italic; font-family:Lucida Console; font-size:15px;" value="1">BY CASH</option>
                            <option style="font-style:italic;font-family:Lucida Console;" value="2">CHEQUE</option>
                            <option style="font-style:italic;font-family:Lucida Console;"  value="3">DEBIT CARD</option>
                            <option style="font-style:italic;font-family:Lucida Console;" value="4">CREDIT CARD</option>
                            <option style="font-style:italic;font-family:Lucida Console;"  value="5">DD</option>
                        </select>
                        <div class="select__arrow"></div>
                    </div>



                </div>  
                <br><br>

                <input type="button" name="previous" class="previous action-button" value="Previous">
                <input type="submit" name="submit" class="submit action-button" value="Submit">

            </fieldset>    
        </form>






        <script src="js/stopExecutionOnTimeout.js"></script><script src="js/jquery.min.js"></script><script src="js/jquery.easing.min.js"></script>
        <script>
            var current_fs, next_fs, previous_fs;
            var left, opacity, scale;
            var animating;
            $('.next').click(function () {
                if (animating)
                    return false;
                animating = true;
                current_fs = $(this).parent();
                next_fs = $(this).parent().next();
                $('#progressbar li').eq($('fieldset').index(next_fs)).addClass('active');
                next_fs.show();
                current_fs.animate({opacity: 0}, {
                    step: function (now, mx) {
                        scale = 1 - (1 - now) * 0.2;
                        left = now * 50 + '%';
                        opacity = 1 - now;
                        current_fs.css({
                            'transform': 'scale(' + scale + ')',
                            'position': 'absolute'
                        });
                        next_fs.css({
                            'left': left,
                            'opacity': opacity
                        });
                    },
                    duration: 800,
                    complete: function () {
                        current_fs.hide();
                        animating = false;
                    },
                    easing: 'easeInOutBack'
                });
            });
            $('.previous').click(function () {
                if (animating)
                    return false;
                animating = true;
                current_fs = $(this).parent();
                previous_fs = $(this).parent().prev();
                $('#progressbar li').eq($('fieldset').index(current_fs)).removeClass('active');
                previous_fs.show();
                current_fs.animate({opacity: 0}, {
                    step: function (now, mx) {
                        scale = 0.8 + (1 - now) * 0.2;
                        left = (1 - now) * 50 + '%';
                        opacity = 1 - now;
                        current_fs.css({'left': left});
                        previous_fs.css({
                            'transform': 'scale(' + scale + ')',
                            'opacity': opacity
                        });
                    },
                    duration: 800,
                    complete: function () {
                        current_fs.hide();
                        animating = false;
                    },
                    easing: 'easeInOutBack'
                });
            });


        </script>

        <script src="js/css_live_reload_init.js"></script>
    </body></html>