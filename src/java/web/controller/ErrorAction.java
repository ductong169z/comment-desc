/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package web.controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author HAPPY
 */
public class ErrorAction extends ActionSupport {

    private Integer statusCode;
    //getter and setter

    @Override
    public String execute() {
        if (statusCode != null) {
            switch (statusCode) {
                case 404:
                    return "404";
                case 500:
                    return "500";
            }
        }
        return null;
    }
}
