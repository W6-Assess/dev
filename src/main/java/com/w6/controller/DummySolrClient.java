/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.w6.controller;

import com.w6.data.Event;
import java.util.ArrayList;

/**
 *
 * @author kinmanz
 */
public class DummySolrClient {
    public static ArrayList<Event> getEvents() {
        ArrayList<Event> events = new ArrayList<>();
        
        events.add(
                new Event(
                         4,
                        "Thu Sep 08 03:00:00 MSK 2016",
                        "Three Congolese employees",
                        "The total number of participants was 1,587, with 894 in the open and 693 in "
                                + "the women's event.[7] The number of participating teams was 180 "
                                + "from 175 countries in the open section and 142 from 138 countries"
                                + " in the  The total number of participants was 1,587, with 894 in "
                                + "the open and 693 in the women's event.[7] The number of participating "
                                + "teams was 180 from 175 countries in the open section and 142 from 138 "
                                + "countries in the "
                        + "the women's event.[7] The number of participating teams was 180 "
                                + "from 175 countries in the open section and 142 from 138 countries"
                                + " in the  The total number of participants was 1,587, with 894 in "
                                + "the open and 693 in the women's event.[7] The number of participating "
                                + "teams was 180 from 175 countries in the open section and 142 from 138 "
                                + "countries in the ",
                        "California",
                        "USA"
                )
        );
        
        events.get(0).setSourses(new String[] {"The New York Times (USA)",
                                               "The Wall Street Journal (USA)",
                                               "The Washington Post (USA)"});
        
        events.add(
                new Event(
                         1,
                        "Fri Sep 20 03:00:00 MSK 2016",
                        "Something very starnage",
                        "The United States won the gold medal in the open event for the first time "
                                + "since 1976 and the sixth time overall, while China won their fifth gold "
                                + "medal in the women's event and the first since 1994 after winning the silver "
                                + "The United States won the gold medal in the open event for the first time since "
                                + "1976 and the sixth time overall, while China won their fifth gold medal in the women's"
                                + " event and the first since 1994 after winning the silver  The United States won the "
                                + "gold medal in the open event for the first time since 1976 and the sixth time overall, "
                                + "while China won their fifth gold medal in the women's event and the first since 1994 "
                                + "after winning the silver ",
                        "Mumabai",
                        "Africa"
                )
        );
        
        
        
        events.get(1).setSourses(new String[] {"The New York Times (USA)",
                                               "The Washington Post (USA)"});
        
        events.add(
                new Event(
                         3,
                        "Thu Sep 09 03:00:00 MSK 2016",
                        "Three Congolese employees",
                        "The total number of participants was 1,587, with 894 in the open and 693 in "
                                + "the women's event.[7] The number of participating teams was 180 "
                                + "from 175 countries in the open section and 142 from 138 countries"
                                + " in the  The total number of participants was 1,587, with 894 in "
                                + "the open and 693 in the women's event.[7] The number of participating "
                                + "teams was 180 from 175 countries in the open section and 142 from 138 "
                                + "countries in the "
                        + "the women's event.[7] The number of participating teams was 180 "
                                + "from 175 countries in the open section and 142 from 138 countries"
                                + " in the  The total number of participants was 1,587, with 894 in "
                                + "the open and 693 in the women's event.[7] The number of participating "
                                + "teams was 180 from 175 countries in the open section and 142 from 138 "
                                + "countries in the ",
                        "California",
                        "USA"
                )
        );
        
        events.get(2).setSourses(new String[] {"The New York Times (USA)",
                                               "The Wall Street Journal (USA)",
                                               "The Washington Post (USA)"});
        
         events.add(
                new Event(
                         5,
                        "Thu Sep 09 03:00:00 MSK 2016",
                        "Three Congolese employees",
                        "The total number of participants was 1,587, with 894 in the open and 693 in "
                                + "the women's event.[7] The number of participating teams was 180 "
                                + "from 175 countries in the open section and 142 from 138 countries"
                                + " in the  The total number of participants was 1,587, with 894 in "
                                + "the open and 693 in the women's event.[7] The number of participating "
                                + "teams was 180 from 175 countries in the open section and 142 from 138 "
                                + "countries in the ",
                        "California",
                        "USA"
                )
        );
        
        events.get(3).setSourses(new String[] {"The New York Times (USA)",
                                               "The Wall Street Journal (USA)",
                                               "The Washington Post (USA)"});
        
        return events;
    }
}
