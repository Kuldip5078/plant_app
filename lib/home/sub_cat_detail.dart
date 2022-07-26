import 'package:flutter/material.dart';
import 'package:plant_application/models.dart/sub_cat.dart';
import 'package:plant_application/models.dart/subcatdetail.dart';
import 'package:plant_application/utils/heiper.dart';

// import 'package:nnnnnnn/models.dart/sub_cat.dart';
// import 'package:nnnnnnn/models.dart/subcatdetail.dart';
// import 'package:nnnnnnn/utils/heiper.dart';

class DetileSubCat extends StatefulWidget {
  const DetileSubCat({Key? key, required this.detail}) : super(key: key);
  final Subcatagory detail;

  @override
  State<DetileSubCat> createState() => _DetileSubCatState();
}

class _DetileSubCatState extends State<DetileSubCat> {
  List<SubcatDetail> di = [];

  @override
  void initState() {
    di = Utils.subcategorydetailList();
    di =
        di.where((element) => element.subcatid == widget.detail.subid).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: di.length,
            itemBuilder: (BuildContext context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        child: Image(image: AssetImage(di[index].image!)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
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
                        padding: const EdgeInsets.only(top: 240, left: 280),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor:const  Color(0XFFFF6262),
                          child: const Icon(
                            Icons.favorite,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 23,
                          width: 78,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 232, 240, 247)),
                            child:const  Text(
                              "DANGER",
                              style: TextStyle(
                                  color: Color(0XFF2F91EB),
                                  fontSize: 8,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                       const  SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 23,
                          width: 78,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                backgroundColor:
                                   const Color.fromARGB(255, 232, 240, 247)),
                            child: const Text(
                              "DECORATION",
                              style: TextStyle(
                                  color: Color(0XFF2F91EB),
                                  fontSize: 8,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Text(
                      di[index].text!,
                      style: const TextStyle(
                          fontSize: 27,
                          color: Color(0XFF36455A),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                    child: Row(
                      children: [
                        for (var i = 0; i < 5; i++)
                          i != 4
                              ? const Icon(
                                  Icons.star_rounded,
                                  size: 20,
                                  color: Color(0XFFFFCD00),
                                )
                              : const Icon(
                                  Icons.star_rounded,
                                  size: 20,
                                  color: Color.fromARGB(255, 218, 216, 216),
                                ),
                        const Text(
                          "4.1",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color(0XFF495566),
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "KINGDOM",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF495566),
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              di[index].kingdom!,
                              style:const  TextStyle(
                                  fontSize: 14, color: Color(0XFF6A6F7D)),
                            )
                          ],
                        ),
                       const  SizedBox(
                          width: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           const  Text(
                              "FAMILY",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0XFF495566),
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              di[index].family!,
                              style:const  TextStyle(
                                  fontSize: 14, color: Color(0XFF6A6F7D)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                 const  SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "DESCRIPTION",
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0XFF495566),
                          fontFamily: 'SF Pro Text',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Flexible(
                        child: Text(
                      di[index].description!,
                      style:const  TextStyle(fontSize: 14, color: Color(0XFF6A6F7D)),
                    )),
                  )
                ],
              );
            }));
  }
}
