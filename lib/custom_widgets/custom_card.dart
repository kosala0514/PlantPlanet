import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.assets,
      required this.type,
      required this.plant,
      required this.warn,
      required this.id})
      : super(key: key);

  final String assets;
  final String type;
  final String plant;
  final String warn;
  final int id;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return id % 2 == 0
        ? Container(
          margin: EdgeInsets.only(right: width * 0.05),
            padding: EdgeInsets.only(left: width * 0.05),
            height: height * 0.25,
            decoration: const BoxDecoration(
                color: Color(0xff0c3832),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                )),
            child: Row(children: [
              
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    type,
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    plant,
                    style:
                        const TextStyle(color: Color(0xffffffff), fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: warn == "Warning"
                            ? const Color.fromARGB(255, 157, 142, 70)
                            : const Color.fromARGB(255, 65, 123, 116)),
                    child: Text(
                      warn,
                      style: TextStyle(
                          color: warn == "Warning"
                              ? const Color.fromARGB(255, 237, 199, 9)
                              : const Color(0xffffffff),
                          fontSize: 15),
                    ),
                  )
                ],
              ),
              SizedBox(
                  width: 200,
                  child: Image.asset(
                    assets,
                  )),
            ]),
          )
        : Container(
            margin: EdgeInsets.only(left: width * 0.05),
            height: height * 0.25,
            decoration: const BoxDecoration(
                color: Color(0xff0c3832),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                )),
            child: Row(children: [
              SizedBox(
                  width: 200,
                  child: Image.asset(
                    assets,
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    type,
                    style: const TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    plant,
                    style:
                        const TextStyle(color: Color(0xffffffff), fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: warn == "Warning"
                            ? const Color.fromARGB(255, 157, 142, 70)
                            : const Color.fromARGB(255, 65, 123, 116)),
                    child: Text(
                      warn,
                      style: TextStyle(
                          color: warn == "Warning"
                              ? const Color.fromARGB(255, 237, 199, 9)
                              : const Color(0xffffffff),
                          fontSize: 15),
                    ),
                  )
                ],
              ),
            ]),
          );
  }
}
