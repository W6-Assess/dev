window.onload = function () {
            var chart = new CanvasJS.Chart("chartContainer",
                    {
                        theme: "theme2",
                        title:{
                            text: "Number of Events"
                        },
                        animationEnabled: true,
                        axisX: {
                            valueFormatString: "D",
                            interval:1,
                            intervalType: "day"

                        },
                        axisY:{
                            includeZero: false

                        },
                        data: [
                            {
                                type: "line",
                                lineThickness: 3,
                                dataPoints: [
                                    { x: new Date(2012, 01, 1), y: 450 },
                                    { x: new Date(2012, 01, 3), y: 520, indexLabel: "highest",markerColor: "red", markerType: "triangle"},
                                    { x: new Date(2012, 01, 4), y: 460 },
                                    { x: new Date(2012, 01, 5), y: 450 },
                                    { x: new Date(2012, 01, 6), y: 500 },
                                    { x: new Date(2012, 01, 7), y: 480 },
                                    { x: new Date(2012, 01, 8), y: 480 },
                                    { x: new Date(2012, 01, 9), y: 410 , indexLabel: "lowest",markerColor: "DarkSlateGrey", markerType: "cross"},

                                    { x: new Date(2012, 01, 10), y: 500 },
                                    { x: new Date(2012, 01, 11), y: 480 },
                                    { x: new Date(2012, 01, 12), y: 510 },
                                    { x: new Date(2012, 01, 13), y: 450 },
                                    { x: new Date(2012, 01, 14), y: 414},
                                    { x: new Date(2012, 01, 15), y: 520},
                                    { x: new Date(2012, 01, 16), y: 460 },
                                    { x: new Date(2012, 01, 17), y: 450 },
                                    { x: new Date(2012, 01, 18), y: 500 },
                                    { x: new Date(2012, 01, 19), y: 480 },
                                    { x: new Date(2012, 01, 20), y: 480 },
                                    { x: new Date(2012, 01, 21), y: 410 },
                                    { x: new Date(2012, 01, 22), y: 500 },
                                    { x: new Date(2012, 01, 23), y: 480 },
                                    { x: new Date(2012, 01, 24), y: 510 },
                                    { x: new Date(2012, 01, 24), y: 510 },
                                    { x: new Date(2012, 01, 25), y: 410 },
                                    { x: new Date(2012, 01, 26), y: 500 },
                                    { x: new Date(2012, 01, 27), y: 480 },
                                    { x: new Date(2012, 01, 28), y: 510 },
                                    { x: new Date(2012, 01, 29), y: 510 },
                                    { x: new Date(2012, 01, 30), y: 510 },
                                    { x: new Date(2012, 01, 31), y: 510 }
                                ]
                            }


                        ]
                    });

            chart.render();
}