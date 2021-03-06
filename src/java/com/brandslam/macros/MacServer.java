/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.brandslam.macros;

/**
 *
 * @author Siddharth
 */
public class MacServer 
{
    
    // JSON Keys for request and response
    // Mandatory keys
    public static final String  KEY_GET_PARAMS                  = "get_paramas"; 						// Header Key in Get Request
    public static final String 	KEY_REQUEST_TYPE     		= "request_type";						// Request Type

    // General Keys
    public static final String  KEY_LATITUDE                    = "latitude";
    public static final String  KEY_LONGITUDE                   = "longitude";

    // User / Team info related keys
    public static final String 	KEY_APP_ID           		= "app_id";
    public static final String 	KEY_USER_NAME      		= "user_name";
    public static final String 	KEY_PHONE_NUMBER      		= "phone_number";
     public static final String KEY_EMAIL_ID     		= "email_id";
     public static final String KEY_APP_GATE_PASS           	= "app_gate_pass";
    
    //Feedback Related Keys
    public static final String 	KEY_FEEDBACK_NAME      		        = "name";
    public static final String 	KEY_FEEDBACK_SUGGESTION      		= "suggestion";
    public static final String 	KEY_FEEDBACK_STATUS      		        = "feedback_status";
    
    
    //Testimonial
    
     public static final String 	KEY_TESTIMONIAL_NAME      		            = "name";
    public static final String 	KEY_TESTIMONIAL_SUGGESTION     		        = "suggestion";
    public static final String 	KEY_TESTIMONIAL_STATUS      		        = "testimonial_status";
    
    
    //testimonials fetch
    public static final String 	KEY_TESTIMONIAL_FETCH_NAME    		        = "name";
    public static final String 	KEY_TESTIMONIAL_FETCH_SUGGESTION   		    = "suggestion";
    public static final String 	KEY_TESTIMONIAL_FETCH_DATE     		        = "testimonial_date";
    public static final String 	KEY_TESTIMONIAL_FETCH_ARRAY     		        = "testimonial_array";
    
    
    
     //Guest LIST Fetch
    public static final String 	KEY_GUEST_NAME    		        = "guest_name";
    public static final String 	KEY_GUEST_DESIGNATION 		    = "guest_designation";
    public static final String 	KEY_GUEST_COMPANY     		        = "guest_company";
     public static final String KEY_GUEST_CATEGORY 		        = "guest_category";
    public static final String 	KEY_GUEST_ARRAY    		        = "guest_array";
     public static final String KEY_GUEST_CAT_TYPE    		        = "guest_catType";

    
    
    // Request Types

    // User Info related requests (0X / 1X)
    public static final int         REQUEST_TYPE_REGISTER       = 1;
     public static final int         REQUEST_TYPE_FEEDBACK      = 2;
      public static final int         REQUEST_TYPE_TESTIMONIAL_ADD       = 3;
    public static final int         REQUEST_TYPE_TESTIMONIAL_FETCH     = 4;
   

  
}
