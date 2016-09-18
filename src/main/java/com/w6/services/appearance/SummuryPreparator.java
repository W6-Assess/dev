/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.w6.services.appearance;

import com.w6.data.Event;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

/**
 *
 * @author kinmanz
 */
public class SummuryPreparator {
    public static List<DateGraphPoint> makeSummary(List<Event> events) {
        HashMap<Integer, Integer> countOnDay = new HashMap<>();
        
        events.stream().map((event) -> event.getCalendar().get(Calendar.DAY_OF_MONTH)).map((eventDayNumberOfMonth) -> {
            countOnDay.putIfAbsent(eventDayNumberOfMonth, 0);
            return eventDayNumberOfMonth;
        }).forEach((eventDayNumberOfMonth) -> {
            countOnDay.put(eventDayNumberOfMonth, countOnDay.get(eventDayNumberOfMonth) + 1);
        });
        
        List<DateGraphPoint> result = countOnDay.entrySet().stream()
                .map(e -> new DateGraphPoint("0", "0", e.getKey().toString(),e.getValue()))
                .sorted((a, b) -> {
                    int first = Integer.valueOf(a.getDay());
                    int second = Integer.valueOf(b.getDay());
                    return first > second ? 1 : -1;
                }).collect(Collectors.toList());
        
        int max = Collections.max(result, Comparator.comparing(DateGraphPoint::getValue)).getValue();
        
        result = result.stream().map((point) -> {
            if (point.getValue() == max) {
                point.setDayType("worstDay");
            }
            return point;
        }).collect(Collectors.toList());
        
        return result;
    }
}
