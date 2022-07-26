

import 'package:flutter/material.dart';

import 'package:plant_application/home/species.dart';
import 'package:plant_application/utils/assets.dart';


import '../models.dart/model.dart';
import 'articles.dart';
import 'camera.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List nav = [
    const CameraScreen(),
    const SpeciesScreen(),
    const ArticleScreen(),
  ];
  List<Button> homebutton = [
    Button(ic: const Icon(Icons.photo_camera), text: 'IDENTIFY', id: 1),
    Button(ic: const Icon(Icons.circle), text: 'SPECIES', id: 2),
    Button(ic: const Icon(Icons.menu_book), text: 'ARTICLES', id: 3),
  ];
  List<PlantTypes> planttype = [
    PlantTypes(
        plantcatagory: 'Home Plants',
        plantimage: Assets.onBoardImg11,
        plantqunty: '68 Tupes of Plants',
        id: 1),
    PlantTypes(
        plantcatagory: 'Office Plants',
        plantimage: Assets.onBoardImg12,
        plantqunty: '69 Tupes of Plants',
        id: 2),
    PlantTypes(
        plantcatagory: 'school Plants',
        plantimage: Assets.onBoardImg13,
        plantqunty: '70 Tupes of Plants',
        id: 3),
  ];
  List<PhotoGraphy> photography = [
    PhotoGraphy(photo: Assets.onBoardImg14, text: '#Mini', id: 1),
    PhotoGraphy(photo: Assets.onBoardImg15, text: '#Homelin', id: 2),
    PhotoGraphy(photo: Assets.onBoardImg14, text: '#Cute', id: 3),
    PhotoGraphy(photo: Assets.onBoardImg14, text: '#Mini', id: 4),
  ];
  // List planttype = [
  //   Assets.onBoardImg11,
  //   Assets.onBoardImg12,
  //   Assets.onBoardImg13,
  // ];
  List photographyList = [
    Assets.onBoardImg14,
    Assets.onBoardImg15,
    Assets.onBoardImg14,
    Assets.onBoardImg15,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  child: Image(image: AssetImage(Assets.onBoardImg7)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 80, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hello Taylor,",
                        style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro Text'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Let’s Learn More About Plants",
                        style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontSize: 14,
                            fontFamily: 'SF Pro Text'),
                      ),
                      const SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20,top: 22),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Search For Plants',
                              hintStyle: TextStyle(color: Color(0XFFD2D2D2)),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Color(0XFFD2D2D2),
                              ),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  for (var i = 0; i < homebutton.length; i++) button(i),
                  // button(Assets.onBoardImg10, "ARTICLES"),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 19),
              child: Text(
                "Plant Types",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0XFF36455A),
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: planttype.length,
                  itemBuilder: (BuildContext context, index) {
                    return Planttype(index);
                  },
                )
                
                ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 19),
              child: Text(
                "Photography",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0XFF36455A),
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: planttype.length,
                  itemBuilder: (BuildContext context, index) {
                    return photograph(index);
                  },
                )
                // Image(image: AssetImage("asset2/Group 13.png")),
                ),
          ],
        ),
      ),
    );
  }

  Widget button(index) {
    return Expanded(
      child: Card(
        shadowColor: const Color(0XFF8D8D8D),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: ((context) => nav[index])));
            setState(() {});
          },
          child: SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [homebutton[index].ic, Text(homebutton[index].text!)],
              )),
        ),
      ),
    );
  }

  
  Widget Planttype(index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: InkWell(
            onTap: () {
              setState(() {});
            },
            child: SizedBox(
              child: Image(image: AssetImage(planttype[index].plantimage!)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 125,
            left: 19,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                planttype[index].plantcatagory!,
                style: const TextStyle(
                    color: Color(0XFFFFFFFF),
                    fontSize: 18,
                    fontFamily: 'SF Pro Text',
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(planttype[index].plantqunty!,
                  style: const TextStyle(
                      color: Color(0XFFFFFFFF),
                      fontSize: 12,
                      fontFamily: 'SF Pro Text'))
            ],
          ),
        ),
      ]),
    );
  }

  Widget photograph(index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child:SizedBox(
            child: Image(image: AssetImage(photography[index].photo!)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 132,
            left: 10,
          ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                  color: Color.fromARGB(147, 237, 235, 235),
                ),
                height: 30,
                width: 65,
                // color: Colors.white.withOpacity(0.3),
                child: Center(
                  child: Text(
                    photography[index].text!,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
