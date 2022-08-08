import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';

import 'package:plant_planet/custom_widgets/custom_card.dart';
import 'package:plant_planet/model/plants.dart';
import 'package:plant_planet/pages/plant.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Plants> plants = [
    const Plants(
        id: 1,
        assets: "assets/images/cassy.png",
        type: "Cassy",
        plant: "Strelitzia Nicolai",
        warn: "Warning",
        info:
            "Strelitzia nicolai, commonly known as the wild banana or giant white bird of paradise, is a species of banana-like plants with erect woody stems reaching a height of 7–8 m, and the clumps formed can spread as far as 3.5 m."),
    const Plants(
        id: 2,
        assets: "assets/images/diego.png",
        type: "Diego",
        plant: "Euphrbia Eritrea",
        warn: "Healthy",
        info:
            "Euphorbia eritrea is a succulent 'cactus' house plant which is also known as Candelabrum. This handsome plant is not strictly a cactus but is similarly easy to keep provided you provide a bright, light spot and don't allow the roots to sit in soggy compost. Slow growing, easy plant to look after, happy growing indoors."),
    const Plants(
        id: 3,
        assets: "assets/images/luna.png",
        type: "Luna",
        plant: "Aloe Vera",
        warn: "Healthy",
        info:
            "Aloe vera is a succulent plant species of the genus Aloe. It is widely distributed, and is considered an invasive species in many world regions. An evergreen perennial, it originates from the Arabian Peninsula, but grows wild in tropical, semi-tropical, and arid climates around the world. "),
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: const Color(0xff0c3832),
                      borderRadius: BorderRadius.circular(50)),
                  child: Lottie.asset("assets/lottie/plant.json")),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 15),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text(
                  "Plant Planet",
                  style: TextStyle(
                      color: Color(0xff0c3832),
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                height: height * 0.74,
                child: SingleChildScrollView(
                  child: Column(
                      children: plants.map((plant) {
                    return Column(
                      children: [
                        Stack(children: [
                          CustomCard(
                              assets: plant.assets,
                              type: plant.type,
                              plant: plant.plant,
                              id: plant.id,
                              warn: plant.warn),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Plant(
                                          assets: plant.assets,
                                          type: plant.type,
                                          plant: plant.plant,
                                          warn: plant.warn,
                                          info: plant.info,
                                          id: plant.id,
                                        )),
                              );
                            },
                            child: Container(
                              alignment: Alignment.bottomRight,
                              margin: plant.id % 2 == 0
                                  ? const EdgeInsets.only(top: 160, right: 330)
                                  : const EdgeInsets.only(top: 160, right: 10),
                              child: const FaIcon(
                                FontAwesomeIcons.arrowRightLong,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ]),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    );
                  }).toList()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
