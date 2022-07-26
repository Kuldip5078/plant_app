import 'package:flutter/material.dart';
import '../utils/assets.dart';
import '../utils/heiper.dart';
import 'cactus.dart';
import 'home_main_screen.dart';

class SpeciesScreen extends StatefulWidget {
  const SpeciesScreen({Key? key}) : super(key: key);

  @override
  State<SpeciesScreen> createState() => _SpeciesScreenState();
}

class _SpeciesScreenState extends State<SpeciesScreen> {
  List spciesclass = [];

  @override
  void initState() {
    spciesclass = Utils.getMockedMainCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Stack(children: [
            Expanded(
              child: SizedBox(
                child: Image(image: AssetImage(Assets.onBoardImg17)),
              ),
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
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const HomeScreen())));
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
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: spciesclass.length,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => PlantScreen(
                                  selectedCatagory: spciesclass[index]))));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 8),
                      child: SizedBox(
                          width: double.infinity,
                          child: Text(
                            spciesclass[index].name!,
                            style: const TextStyle(
                              fontSize: 17,
                              color: Color(0XFF6A6F7D),
                            ),
                          )),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
