import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Plant extends StatefulWidget {
  const Plant(
      {Key? key,
      required this.assets,
      required this.type,
      required this.plant,
      required this.warn,
      required this.info,
      required this.id})
      : super(key: key);
  final String assets;
  final String type;
  final String plant;
  final String warn;
  final String info;
  final int id;

  @override
  State<Plant> createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: height,
              decoration: BoxDecoration(
                color: widget.warn == "Warning"
                    ? const Color.fromARGB(255, 163, 118, 33)
                    : const Color(0xff0c3832),
              ),
            ),
            Container(
              height: height * 0.35,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(height * 0.2))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: height * 0.06,
                    ),
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          widget.type,
                          style: TextStyle(
                              color: widget.warn == "Warning"
                                  ? const Color.fromARGB(255, 163, 118, 33)
                                  : const Color(0xff0c3832),
                              fontSize: width * 0.07,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          widget.plant,
                          style: TextStyle(
                              color: widget.warn == "Warning"
                                  ? Color.fromARGB(255, 163, 118, 33)
                                  : const Color(0xff0c3832),
                              fontSize: 17),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: widget.warn == "Warning"
                                  ? const Color.fromARGB(255, 163, 118, 33)
                                  : const Color(0xff0c3832)),
                          child: Text(
                            widget.warn,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      widget.assets,
                      height: height * 0.35,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.43, left: 20, right: 20),
              height: height * 0.65,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: width*0.2,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color:widget.warn == "Warning"
                          ? Colors.amber[200]
                          : Color.fromARGB(255, 110, 152, 148),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Icon(
                                Icons.water_drop_outlined,
                                color: widget.warn == "Warning"
                              ? Color.fromARGB(255, 159, 121, 9)
                              : Colors.white,
                                size: 36,
                              ),
                              ),
                              SizedBox(height: 10,),
                              Text("Every 3 weeks",style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: width*0.2,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color: widget.warn == "Warning"
                          ? Colors.amber[200]
                          : Color.fromARGB(255, 110, 152, 148),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Icon(
                                Icons.wb_sunny_outlined,
                                color: widget.warn == "Warning"
                              ? Color.fromARGB(255, 159, 121, 9)
                              : Colors.white,
                                size: 36,
                              ),),
                              SizedBox(height: 10,),
                              Text("Natural Light", style: TextStyle(color: Colors.white,),)
                            ],
                          ),
                          ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: width*0.2,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color: widget.warn == "Warning"
                          ? Colors.amber[200]
                          : Color.fromARGB(255, 110, 152, 148),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Icon(
                                Icons.device_thermostat_outlined,
                                color: widget.warn == "Warning"
                              ? Color.fromARGB(255, 159, 121, 9)
                              : Colors.white,
                                size: 36,
                              ),),
                              SizedBox(height: 10,),
                              Text("Minimum 7°C", style: TextStyle(color: Colors.white),)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: width*0.2,
                                width: width*0.2,
                                decoration: BoxDecoration(
                                  color: widget.warn == "Warning"
                          ? Colors.amber[200]
                          : Color.fromARGB(255, 110, 152, 148),
                                  borderRadius: BorderRadius.circular(50)
                                ),
                                child: Icon(
                                Icons.water_drop_rounded,
                                color:  widget.warn == "Warning"
                              ? Color.fromARGB(255, 159, 121, 9)
                              : Colors.white,
                                size:36,
                              ),),
                              SizedBox(height: 10,),
                              Text("Humidity 84%", style: TextStyle(color: Colors.white),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.water_drop_outlined,
                  //           color: Colors.white,
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text("Every 3 weeks",
                  //             style: TextStyle(color: Colors.white))
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 20,
                  //     ),
                  //     Row(
                  //       crossAxisAlignment: CrossAxisAlignment.center,
                  //       children: const [
                  //         Icon(
                  //           Icons.wb_sunny_outlined,
                  //           color: Colors.white,
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text("Natural Light",
                  //             style: TextStyle(color: Colors.white))
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 20,
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.device_thermostat_outlined,
                  //           color: Colors.white,
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text(
                  //           "Minimum of 7°C",
                  //           style: TextStyle(color: Colors.white),
                  //         )
                  //       ],
                  //     ),
                  //     const SizedBox(
                  //       height: 20,
                  //     ),
                  //     Row(
                  //       children: const [
                  //         Icon(
                  //           Icons.water_drop_rounded,
                  //           color: Colors.white,
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         Text(
                  //           "Humidity 84%",
                  //           style: TextStyle(color: Colors.white),
                  //         )
                  //       ],
                  //     ),
                  //   ],
                  // ),

                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Information",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.info,
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
           
                Container(
                  height: 40,
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.centerLeft,
                  width: width*0.5,
                  margin: EdgeInsets.only(top: height*0.32, left: width*0.28),
                  decoration: BoxDecoration(
                    color: widget.warn == "Warning"
                      ? Colors.amber[200]
                      : Color.fromARGB(255, 110, 152, 148),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Text(
                    "Next Watering",
                    style: TextStyle(
                      color: widget.warn == "Warning"
                          ? Color.fromARGB(255, 159, 121, 9)
                          : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0
                    ),
                  ),
                ),
            Container(
              margin:
                  EdgeInsets.only(top: height * 0.27, left: width * 0.6, right: 20),
              padding: const EdgeInsets.all(20),
              width: width * 0.35,
              height: width * 0.35,
              decoration: BoxDecoration(
                  color: widget.warn == "Warning"
                      ? Colors.amber[200]
                      : Color.fromARGB(255, 110, 152, 148),
                  borderRadius: BorderRadius.circular(100)),
              child: CircularPercentIndicator(
                radius: width * 0.1,
                animation: true,
                animationDuration: 1200,
                lineWidth: 5.0,
                percent: 0.8,
                center: Text(
                  "8 hours",
                  style: TextStyle(
                      color: widget.warn == "Warning"
                          ? Color.fromARGB(255, 159, 121, 9)
                          : Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0),
                ),
                circularStrokeCap: CircularStrokeCap.butt,
                backgroundColor: widget.warn == "Warning"
                    ? Color.fromARGB(255, 210, 187, 118)
                    : Color.fromARGB(255, 65, 123, 116),
                progressColor: widget.warn == "Warning"
                    ? Color.fromARGB(255, 159, 121, 9)
                    : Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: FaIcon(
                  FontAwesomeIcons.arrowLeftLong,
                  color: widget.warn == "Warning"
                      ? const Color.fromARGB(255, 163, 118, 33)
                      : const Color(0xff0c3832),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
