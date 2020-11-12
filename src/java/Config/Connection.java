/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author tristan
 */
public class Connection {
    public DriverManagerDataSource ConnectionToDatabase(){
        DriverManagerDataSource ctd = new DriverManagerDataSource();
        ctd.setDriverClassName("com.mysql.jdbc.Driver");
        ctd.setUrl("jdbc:mysql://localhost:3306/testing?useTimeZone=true&serverTimezone=UTC&autoReconnect=true&useSSL=false");
        ctd.setUsername("root");
        ctd.setPassword("Password123#@!");
        return ctd;
    }
}
