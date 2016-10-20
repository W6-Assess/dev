/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.w6.data;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Event {
    public long id;
    
    public Calendar calendar;
    
    public String title; 
    public String description; 
    public String region;
    public String country;
    public String[] sourses;

    public long getId() {
        return id;
    }

    public Date getDate() {
        return calendar.getTime();
    }

    public String getTitle() {
        return title;
    }

    public String getDescription() {
        return description;
    }

    public String getRegion() {
        return region;
    }

    public String getCountry() {
        return country;
    }

    public void setSourses(String[] sourses) {
        this.sourses = sourses;
    }

    public String[] getSourses() {
        return sourses;
    }
    
    public Calendar getCalendar() {
        return calendar;
    }

    public Event(long id, String date, String title, String description, String region, String country) {
        this.id = id;
        this.title = title;
        this.calendar = Calendar.getInstance();
        try {
            calendar.setTime(new SimpleDateFormat("EEE MMM dd hh:mm:ss z yyyy", Locale.ENGLISH).parse(date));
        } catch (ParseException ex) {
            Logger.getLogger(Event.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.description = description;
        this.region = region;
        this.country = country;
    }
}
