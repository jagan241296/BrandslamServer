/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.brandslam.servlets;

import com.brandslam.helper.DBHelper;
import com.brandslam.macros.MacServer;
import java.io.BufferedReader;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author Sai_Kameswari
 */
public class guestFetch extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, JSONObject requestJson, int responseStatus)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        JSONObject responseJson = new JSONObject();
        try {

            int requestType = -1;

            if (responseJson == null) {
                responseStatus = HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
            }
            System.out.println("Reached process request");
            //check request Type
            requestType = requestJson.getInt(MacServer.KEY_REQUEST_TYPE);
            System.out.println("Request type: " + requestType);
            switch (requestType) {
                
                case 5:
                {
                     System.out.println("came inside case 5");
                     responseJson.put(MacServer.KEY_REQUEST_TYPE, requestType);
                     int catType=requestJson.getInt(MacServer.KEY_GUEST_CAT_TYPE);
                     String cattype;
                     
                     //take based on type of cat
                     switch(catType)
                     {
                         case 0: cattype="HR Professionals"; break;
                         
                         case 1: cattype="Guest of Honors"; break;
                         
                         case 2: cattype="Keynote Speakers"; break;
                         
                         case 3: cattype="BIG Data Experts"; break;
                         
                         case 4: cattype="CIO's"; break;
                         
                         case 5: cattype="CFO's"; break;
                         
                         case 6: cattype="Marketing Professionals/ Brands"; break;
                         
                         case 7: cattype="Logistics companies"; break;
                         
                         default: cattype="";
                        
                     }
                     //fetch all records from DB
                     String query = "select * from guest_list where category=?";
                     System.out.println("CatType: "+cattype);
                    PreparedStatement preparedStatement = DBHelper.preparedstmtInstance(query);
                    preparedStatement.setString(1, cattype);
                    ResultSet rs = preparedStatement.executeQuery();
                    JSONArray ja = new JSONArray();
                    while(rs.next())
                    {
                        JSONObject recordJson = new JSONObject();
                         recordJson.put(MacServer.KEY_GUEST_CATEGORY, rs.getString(2));
                        recordJson.put(MacServer.KEY_GUEST_NAME, rs.getString(3));
                        recordJson.put(MacServer.KEY_GUEST_DESIGNATION, rs.getString(4));
                        recordJson.put(MacServer.KEY_GUEST_COMPANY, rs.getString(5));
                        
                        //put object in JSON Array
                        ja.put(recordJson);                        
                    }
                    rs.close();
                    DBHelper.close(preparedStatement);
                    responseJson.put(MacServer.KEY_GUEST_ARRAY, ja);   
                    break;
                    
                    
                }
                
                
                case 6:
                {
                   System.out.println("came inside case 6");
                     responseJson.put(MacServer.KEY_REQUEST_TYPE, requestType);
                     //fetch all records from DB
                     String query = "select distinct(category) from guest_list";
                    PreparedStatement preparedStatement = DBHelper.preparedstmtInstance(query);
                    ResultSet rs = preparedStatement.executeQuery();
                    JSONArray ja = new JSONArray();
                    while(rs.next())
                    {
                        JSONObject recordJson = new JSONObject();
                         recordJson.put(MacServer.KEY_GUEST_CATEGORY, rs.getString(1));                       
                        
                        //put object in JSON Array
                        ja.put(recordJson);                        
                    }
                    rs.close();
                    DBHelper.close(preparedStatement);
                    responseJson.put(MacServer.KEY_GUEST_ARRAY, ja);   
                    break;
                }
                
            }
        } catch (JSONException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        System.out.println("Response data " + responseJson.toString());
        //put response in stream
        if (responseStatus == HttpServletResponse.SC_OK) {
            // Send Response
            response.getOutputStream().print(responseJson.toString());
        }

        //send the response back & set status           
        response.setStatus(responseStatus);
        System.out.println("sent status");
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int responseStatus = HttpServletResponse.SC_OK;

        // Get Request JSON
        JSONObject requestJson = ParseGetParams(request);

        System.out.println("Reached get method" + requestJson.toString());

        if (requestJson.isNull(MacServer.KEY_REQUEST_TYPE)) {
            response.getWriter().println("Illegal request");
            responseStatus = HttpServletResponse.SC_BAD_REQUEST;
        }

        processRequest(request, response, requestJson, responseStatus);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int responseStatus = HttpServletResponse.SC_OK;

        // Get Request JSON
        JSONObject requestJson = ParsePostParams(request);

        System.out.println("Reached post method " + requestJson);

        if (requestJson.isNull(MacServer.KEY_REQUEST_TYPE)) {

            response.getWriter().println("Illegal request");
            responseStatus = HttpServletResponse.SC_BAD_REQUEST;
        }
        //send request JSON to the method
        processRequest(request, response, requestJson, responseStatus);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    protected JSONObject ParseGetParams(HttpServletRequest request) {
        JSONObject args = new JSONObject();

        String params = request.getHeader(MacServer.KEY_GET_PARAMS);

        if (params == null) {
            return args;
        }

        try {
            args = new JSONObject(params);
        } catch (JSONException e) {
            //error caught 
        }

        return args;
    }

    protected JSONObject ParsePostParams(HttpServletRequest request) {
        JSONObject args = new JSONObject();

        try {
            StringBuilder sb;
            try (BufferedReader reader = request.getReader()) {
                String line = "";
                sb = new StringBuilder();
                while ((line = reader.readLine()) != null) {
                    sb.append(line);
                }
            }

            args = new JSONObject(sb.toString());
        } catch (JSONException | IOException e) {
            //Dbg.error(TAG, "JSON exception while argument parsing");
            e.printStackTrace();
        }
        //Dbg.error(TAG, "IO exception while argument parsing");

        return args;
    }

}
