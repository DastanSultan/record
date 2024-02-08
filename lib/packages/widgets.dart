// ignore_for_file: unnecessary_string_interpolations, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

class DeviceItem extends StatefulWidget {
  const DeviceItem({super.key});

  @override
  State<DeviceItem> createState() => _DeviceItemState();
}

int first = 0;
int zweite = 0;
int raund1 = 0;
int raund2 = 0;
bool imgBgr1 = false;
bool imgBgr2 = false;

class _DeviceItemState extends State<DeviceItem> {
  bool changeName = false;
  Widget widgetContainer(
    String play,
    int ochko,
    int ochkoItem,
    IconData items,
    Decoration sds,
    double height1,
    double width1,
    Color colorsbcg,
    AlignmentGeometry aligm,
    BorderRadiusGeometry radiuss,
    AlignmentGeometry aligEditor,
    EdgeInsetsGeometry padEditor,
    void Function() ons,
    void Function() bin,
    void Function() back,
    void Function() basu,
    ImageProvider<Object> image,
    IconData iconss,
    double sizeIcons,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          ons();
        });
      },
      child: Container(
        height: height1,
        width: width1,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(
          top: 5,
        ),
        decoration: BoxDecoration(
          color: colorsbcg,
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            image: image,
            opacity: 0.2,
            fit: BoxFit.fitWidth,
          ),
          border: Border.all(color: Colors.white),
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  bin();
                });
              },
              child: Container(
                height: MediaQuery.of(context).size.height * 0.1,
                alignment: aligm,
                child: Container(
                  width: 70,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: radiuss,
                  ),
                  child: Text(
                    "$ochkoItem",
                    style: const TextStyle(
                        fontSize: 29, fontFamily: 'IBMPlexSansArabic'),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Column(
                  children: [
                    Text(
                      "$play",
                      style: const TextStyle(
                          fontSize: 25,
                          fontFamily: 'IBMPlexSansArabic',
                          color: Colors.white),
                    ),
                    Text(
                      "$ochko",
                      style: const TextStyle(
                        fontSize: 160,
                        fontFamily: 'IBMPlexSansArabic',
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            back();
                          },
                          child: Container(
                            width: 100,
                            height: 30,
                            child: const Icon(
                              Icons.undo,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                basu();
                              });
                            },
                            child: Icon(
                              iconss,
                              size: sizeIcons,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widgetContainer(
            "Player 1",
            first,
            raund1,
            Icons.restart_alt,
            const BoxDecoration(),
            MediaQuery.of(context).size.height,
            MediaQuery.of(context).size.width * 0.5,
            Colors.red,
            Alignment.bottomRight,
            const BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            Alignment.centerLeft,
            const EdgeInsets.only(
              left: 20,
            ), () {
          setState(() {
            first++;
            imgBgr2 = false;
            imgBgr1 = true;
            print(first);
          });
        }, () {
          setState(() {
            raund1++;
          });
        }, () {
          setState(() {
            if (first <= 0) {
              first = 0;
            } else {
              first--;
            }
          });
        },
            () {},
            AssetImage(
              imgBgr1 == true ? "assets/images/hands-up-6321013_1920.png" : '',
            ),
            Icons.delete_forever,
            0),
        widgetContainer(
          "Player 2",
          zweite,
          raund2,
          Icons.restart_alt,
          const BoxDecoration(),
          MediaQuery.of(context).size.height,
          MediaQuery.of(context).size.width * 0.5,
          Colors.blue,
          Alignment.bottomLeft,
          const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          Alignment.centerLeft,
          const EdgeInsets.only(
            left: 20,
          ),
          () {
            setState(() {
              zweite++;
              imgBgr2 = true;
              imgBgr1 = false;
            });
          },
          () {
            setState(() {
              raund2++;
            });
          },
          () {
            setState(() {
              if (zweite <= 0) {
                zweite = 0;
              } else {
                zweite--;
              }
            });
          },
          () {
            setState(() {
              first = 0;
              zweite = 0;
              raund1 = 0;
              raund2 = 0;
            });
          },
          AssetImage(
            imgBgr2 == true ? "assets/images/hands-up-6321013_1920.png" : '',
          ),
          Icons.delete_forever,
          30,
        )
      ],
    );
  }
}
