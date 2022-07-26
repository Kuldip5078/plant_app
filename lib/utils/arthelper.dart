import 'package:plant_application/models.dart/article_detail.dart';

import '../models.dart/articlemodel.dart';

class Articleitem {
  static List<Articles> articleList() {
    return [
      Articles(
          id: 1,
          image: "asset2/Rectangle 2.2.png",
          name: "David Austin, Who Breathed Life Into the Rose, Is Dead at 92",
          text: "Shivani Vora",
          cirimage: "asset2/shylla2.png",
          date: "2019 . 01 . 01"),
      Articles(
          id: 2,
          image: "asset2/n1.png",
          name: "Even on Urban Excursions, Finding Mother Nature's Charms",
          text: "Shylla Monic",
          cirimage: "asset2/shylla2.png",
          date: "2019 . 01 . 01"),
      Articles(
          id: 3,
          image: "asset2/Rectangle 2.2.png",
          name: "David Austin, Who Breathed Life Into the Rose, Is Dead at 92",
          text: "Shivani Vora",
          cirimage: "asset2/shylla2.png",
          date: "2019 . 01 . 01"),
      Articles(
          id: 4,
          image: "asset2/n1.png",
          name: "Even on Urban Excursions, Finding Mother Nature's Charms",
          text: "Shylla Monic",
          cirimage: "asset2/shylla2.png",
          date: "2019 . 01 . 01"),
    ];
  }

  static List<ArtDetail> articledetaileList() => [
        ArtDetail(
            image: "asset2/n2.png",
            name:
                "David Austin, Who Breathed Life Into the Rose, Is Dead at 92",
            pername: "Shivani Vora",
            description:
                'Public parks aside, getting a dose of nature can be a tricky task during an urban escape. But nature should and can fit into that city getaway, according to Kally Ellis, the founder of the London florist compan McQeens and the in-house florist for the Maybourne Hotel Group. "Connecting with the natural world wherever you are is a great antidote to jet lag and travel tiredness," she said. Plants and flowers can refresh us, boost our energy and help us recalibrate.',
            date: "2019 . 01 . 01",
            subid: 1,
            cirimage: "asset2/shylla2.png"),
        ArtDetail(
            image: "asset2/Rectangle.png",
            name: "Even on Urban Excursions, Finding Mother Nature's Charms",
            pername: "Shylla Monic",
            description:
                'Public parks aside, getting a dose of nature can be a tricky task during an urban escape. But nature should and can fit into that city getaway, according to Kally Ellis, the founder of the London florist compan McQeens and the in-house florist for the Maybourne Hotel Group. "Connecting with the natural world wherever you are is a great antidote to jet lag and travel tiredness," she said. Plants and flowers can refresh us, boost our energy and help us recalibrate.',
            date: "2019 . 01 . 01",
            subid: 2,
            cirimage: "asset2/shylla2.png"),
        ArtDetail(
            image: "asset2/n2.png",
            name: "",
            pername: "Shivani Vora",
            description:
                'Public parks aside, getting a dose of nature can be a tricky task during an urban escape. But nature should and can fit into that city getaway, according to Kally Ellis, the founder of the London florist compan McQeens and the in-house florist for the Maybourne Hotel Group. "Connecting with the natural world wherever you are is a great antidote to jet lag and travel tiredness," she said. Plants and flowers can refresh us, boost our energy and help us recalibrate.',
            date: "2019 . 01 . 01",
            subid: 3,
            cirimage: "asset2/shylla2.png"),
        ArtDetail(
            image: "asset2/Rectangle.png",
            name:
                "David Austin, Who Breathed Life Into the Rose, Is Dead at 92",
            pername: "Shylla Monic",
            description:
                'Public parks aside, getting a dose of nature can be a tricky task during an urban escape. But nature should and can fit into that city getaway, according to Kally Ellis, the founder of the London florist compan McQeens and the in-house florist for the Maybourne Hotel Group. "Connecting with the natural world wherever you are is a great antidote to jet lag and travel tiredness," she said. Plants and flowers can refresh us, boost our energy and help us recalibrate.',
            date: "2019 . 01 . 01",
            subid: 4,
            cirimage: "asset2/shylla2.png"),
      ];
}
