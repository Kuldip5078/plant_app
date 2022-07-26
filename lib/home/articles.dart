import 'package:flutter/material.dart';
import 'package:plant_application/home/articledetailscreen.dart';
import 'package:plant_application/home/home_main_screen.dart';
import 'package:plant_application/utils/assets.dart';
import 'package:plant_application/utils/heiper.dart';

import '../models.dart/articlemodel.dart';
import '../utils/arthelper.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  List articleclass = [];

  @override
  void initState() {
    articleclass = Articleitem.articleList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Expanded(
                child: SizedBox(
                  child: Image(image: AssetImage(Assets.onBoardImg19)),
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
                                    builder: ((context) =>
                                        const HomeScreen())));
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
                padding: const EdgeInsets.only(left: 20, right: 20, top: 145),
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
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: articleclass.length,
                itemBuilder: (BuildContext context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Article(
                                    artdetail: articleclass[index],
                                  ))));
                    },
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, right: 10, top: 8),
                      child: SizedBox(
                          width: double.infinity,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0, right: 0),
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image(
                                        image: AssetImage(
                                            articleclass[index].image!)),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Text(
                                        articleclass[index].name!,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Color(0XFF36455A)),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    SizedBox(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10),
                                        child: Row(
                                          children: [
                                            Image(
                                                image: AssetImage(
                                                    articleclass[index]
                                                        .cirimage!)),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  articleclass[index].text!,
                                                  style: const TextStyle(
                                                      color: Color(0XFF36455A),
                                                      fontSize: 11),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  articleclass[index].date!,
                                                  style: TextStyle(fontSize: 9),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 120,
                                            ),
                                            const Icon(
                                              Icons.turned_in_not_sharp,
                                              size: 30,
                                              color: Color(0XFFB9B9B9),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            const Icon(
                                              Icons.favorite_border,
                                              size: 30,
                                              color: Color(0XFFB9B9B9),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
