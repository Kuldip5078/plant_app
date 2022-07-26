import 'package:flutter/material.dart';

import 'package:plant_application/models.dart/article_detail.dart';
import 'package:plant_application/models.dart/articlemodel.dart';

import 'package:plant_application/utils/arthelper.dart';

class Article extends StatefulWidget {
  const Article({Key? key, required this.artdetail}) : super(key: key);
  final Articles artdetail;

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  List<ArtDetail> items = [];

  @override
  void initState() {
    items = Articleitem.articledetaileList();
    items =
        items.where((element) => element.subid == widget.artdetail.id).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: items.length,
              itemBuilder: (BuildContext context, index) {
                return Column(children: [
                  Stack(
                    children: [
                      SizedBox(
                          child: Image(image: AssetImage(items[index].image!))),
                      Padding(
                        padding: const EdgeInsets.only(top: 240, left: 280),
                        child: FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: const Color(0XFFFF6262),
                          child: const Icon(
                            Icons.favorite,
                            color: Color(0XFFFFFFFF),
                          ),
                        ),
                      ),
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
                            child: const Text(
                              "VEGETABLES",
                              style: TextStyle(
                                  color: Color(0XFF2F91EB),
                                  fontSize: 8,
                                  fontFamily: 'SF Pro Text',
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
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
                              "GARDEN",
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
                  Padding(
                    padding: const EdgeInsets.only(right: 15, left: 15),
                    child: Text(
                      items[index].name!,
                      style: const TextStyle(
                          fontSize: 20,
                          color: Color(0XFF36455A),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      children: [
                        SizedBox(
                          child:
                              Image(image: AssetImage(items[index].cirimage!)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 5, left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                items[index].pername!,
                                style: const TextStyle(
                                    fontSize: 14,
                                    color: Color(0XFF505050),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 3),
                              Text(
                                items[index].date!,
                                style: const TextStyle(
                                    fontSize: 14, color: Color(0XFFA1A8B9)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Row(
                              children: const [
                                Icon(Icons.add, color: Color(0XFFFFFFFF)),
                                Text(
                                  "Follow",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0XFFFFFFFF)),
                                )
                              ],
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0XFF2DDA93)))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      children: [
                        Text(
                          items[index].description!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Color(0XFF36455A),
                          ),
                        ),
                      ],
                    ),
                  )
                ]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
