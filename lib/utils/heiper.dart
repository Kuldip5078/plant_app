// import 'package:nnnnnnn/models.dart/catagpry_model.dart';
// import 'package:nnnnnnn/models.dart/sub_cat.dart';
// import 'package:nnnnnnn/models.dart/subcatdetail.dart';

import '../models.dart/catagpry_model.dart';
import '../models.dart/sub_cat.dart';
import '../models.dart/subcatdetail.dart';

class Utils {
  static List<Category> getMockedMainCategories() {
    return [
      Category(name: 'CACTUS', id: 1),
      Category(name: 'CISTUS', id: 2),
      Category(name: 'CAESALPINIA', id: 3),
      Category(name: 'CINNAMOMUM', id: 4),
      Category(name: 'CIRSIUM', id: 5),
      Category(name: 'CISSUS', id: 6),
      Category(name: 'DIERAMA', id: 7),
      Category(name: 'DIGITALIS', id: 8),
      Category(name: 'DAHLIA', id: 9),
      Category(name: 'DAPHNE', id: 10),
      Category(name: 'ECHINACEA', id: 11),
      Category(name: 'ECHINOPS', id: 12),
    ];
  }

  static List<Subcatagory> subcategoryList() => [
        Subcatagory(
            subid: 1,
            speciesID: 1,
            image: "asset2/c1.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Red Cactus",
            description:
                "Cactus spines are produced from specialized structures..."),
        Subcatagory(
            subid: 2,
            speciesID: 1,
            image: "asset2/c4.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Fat Cactus",
            description:
                "Cactus spines are produced from specialized structures..."),
        Subcatagory(
            subid: 3,
            speciesID: 1,
            image: "asset2/c5.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Circle Cactus",
            description:
                "Cactus spines are produced from specialized structures..."),
        Subcatagory(
            subid: 4,
            speciesID: 2,
            image: "asset2/c1.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Red Cactus",
            description:
                "Cactus spines are produced from specialized structures..."),
        Subcatagory(
            subid: 5,
            speciesID: 2,
            image: "asset2/c4.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Fat Cactus",
            description:
                "Cactus spines are produced from specialized structures..."),
        Subcatagory(
            subid: 6,
            speciesID: 2,
            image: "asset2/c5.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Circle Cactus",
            description:
                "Cactus spines are produced from specialized structures..."),
        Subcatagory(
            subid: 7,
            speciesID: 3,
            image: "asset2/c1.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Red Cactus",
            description:
                "Cactus spines are produced from specialized structures..."),
      ];

  static List<SubcatDetail> subcategorydetailList() => [
        SubcatDetail(
            subcatid: 1,
            image: "asset2/d1.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Red Cactus",
            description:
                "The word 'cactus' derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name orig inally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought."),
        SubcatDetail(
            subcatid: 2,
            image: "asset2/d3.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Fat Cactus",
            description:
                "The word 'cactus' derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name orig inally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought."),
        SubcatDetail(
            subcatid: 3,
            image: "asset2/d2.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Circle Cactus",
            description:
                "The word 'cactus' derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name orig inally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought."),
        SubcatDetail(
            subcatid: 4,
            image: "asset2/d1.png",
            kingdom: "Plantae",
            family: "Cactaceae",
            text: "Red Cactus",
            description:
                "The word 'cactus' derives, through Latin, from the Ancient Greek κάκτος, kaktos, a name orig inally used by Theophrastus for a spiny plant whose identity is not certain. Cacti occur in a wide range of shapes and sizes. Most cacti live in habitats subject to at least some drought."),
      ];
}
