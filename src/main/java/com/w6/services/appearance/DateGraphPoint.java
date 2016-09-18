/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.w6.services.appearance;

/**
 *
 * @author kinmanz
 */
public class DateGraphPoint {
    public String year;
    public String month;
    public String day = "usualDay";
    public Integer value;
    public String dayType;

    public void setDayType(String dayType) {
        this.dayType = dayType;
    }
    
    
    public String getDayType() {
        return dayType;
    }

    public void setValue(Integer value) {
        this.value = value;
    }
    
    public void setDay(String day) {
        this.day = day;
    }
    
    public String getYear() {
        return year;
    }

    public String getMonth() {
        return month;
    }

    public String getDay() {
        return day;
    }

    public Integer getValue() {
        return value;
    }

    public DateGraphPoint(String year, String month, String day, Integer value) {
        this.year = year;
        this.month = month;
        this.day = day;
        this.value = value;
    }
    
    
    
}
