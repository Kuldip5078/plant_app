import 'package:flutter/material.dart';

import 'package:plant_application/home/sub_cat_detail.dart';

import '../models.dart/catagpry_model.dart';
import '../models.dart/sub_cat.dart';
import '../utils/assets.dart';
import '../utils/heiper.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key, required this.selectedCatagory})
      : super(key: key);
  final Category selectedCatagory;

  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  List<Subcatagory> items = [];
  
  @override
  void initState() {
    
    items = Utils.subcategoryList();
    items = items
        .where((element) => element.speciesID == widget.selectedCatagory.id)
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(children: [
              SizedBox(
                child: Image(image: AssetImage(Assets.onBoardImg18)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_ios)),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert_rounded)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 35),
                child: Text(
                  widget.selectedCatagory.name!,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Color(0XFFFFFFFF),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF Pro Text',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 95,
                ),
                child: Text(
                  widget.selectedCatagory.name!.toLowerCase(),
                  style: const TextStyle(
                    fontSize: 70,
                    color: Color.fromARGB(255, 241, 237, 237),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'SF Pro Text',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 168),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search For Species',
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
            ]),
            ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (BuildContext context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) =>
                                DetileSubCat(detail: items[index]))));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              child: SizedBox(
                                  height: 120,
                                  width: 120,
                                  child: Image(
                                    image: AssetImage(items[index].image!),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  items[index].text!,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFF36455A)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "KINGDOM",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'SF Pro Text',
                                              color: Color(0XFFA1A8B9),
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          items[index].kingdom!,
                                          style: const TextStyle(
                                              color: Color(0XFF495566)),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "FAMILY",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'SF Pro Text',
                                              color: Color(0XFFA1A8B9),
                                              fontSize: 12),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          items[index].family!,
                                          style:const TextStyle(
                                              color: Color(0XFF495566)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  "DESCRIPTION",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      fontFamily: 'SF Pro Text',
                                      color: Color(0XFFA1A8B9)),
                                ),
                               const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  items[index].description!,
                                  style: const TextStyle(color: Color(0XFF495566)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
