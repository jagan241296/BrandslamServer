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
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author Sai_Kameswari
 */
public class userServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @param requestJson
     * @param responseStatus
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response, JSONObject requestJson, int responseStatus)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try {

            int requestType;
            JSONObject responseJson = new JSONObject();
            if (responseJson == null) {
                responseStatus = HttpServletResponse.SC_INTERNAL_SERVER_ERROR;
            }
            System.out.println("Reached process request");
            //check request Type
            requestType = requestJson.getInt(MacServer.KEY_REQUEST_TYPE);
            System.out.println("Request type: " + requestType);
            switch (requestType) {
                case 1: //register the user in DB
                {

                    System.out.println("came inside case 1");
                    
                    
                    //generate gate pass id randomly
                    Random random=new Random();
                    int gate_id=(100000 + random.nextInt(900000));
                    System.out.println("gate_id: "+gate_id);
                    //insert record in DB                     
                    String query = "insert into user_registration(username, mobile, email, gate_id) values(?,?,?,?)";
                    PreparedStatement preparedStatement = DBHelper.preparedstmtInstance(query);
                    preparedStatement.setString(1, requestJson.getString(MacServer.KEY_USER_NAME));
                    preparedStatement.setString(2, requestJson.getString(MacServer.KEY_PHONE_NUMBER));
                    preparedStatement.setString(3, requestJson.getString(MacServer.KEY_EMAIL_ID));
                    preparedStatement.setInt(4, gate_id);
                    int insertStatus = preparedStatement.executeUpdate();

                    //check if entry is added
                    if (insertStatus != 0) {

                        //fetch the appid
                        query = "select app_id from user_registration where username=? and mobile=?";
                         preparedStatement = DBHelper.preparedstmtInstance(query);
                        preparedStatement.setString(1, requestJson.getString(MacServer.KEY_USER_NAME));
                        preparedStatement.setString(2, requestJson.getString(MacServer.KEY_PHONE_NUMBER));
                       
                        int app_id;
                        try (ResultSet rs = preparedStatement.executeQuery()) {
                            rs.next();
                            app_id = rs.getInt(1);
                            System.out.println("ID Assigned: " + app_id);
                        }
                        
                        DBHelper.close(preparedStatement);
                        //insert into response json object
                        responseJson.put(MacServer.KEY_REQUEST_TYPE, requestType);
                        responseJson.put(MacServer.KEY_APP_ID, app_id);
                        responseJson.put(MacServer.KEY_APP_GATE_PASS, gate_id);
                    } else {
                        responseStatus = HttpServletResponse.SC_BAD_REQUEST;
                    }
                    
                    break;
                }
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
        } catch (JSONException ex) {
            ex.printStackTrace();
        } catch (SQLException ex) {
            Logger.getLogger(userServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
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
