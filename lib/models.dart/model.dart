class PlantTypes {
  final String? plantcatagory;
  final String? plantqunty;
  final String? plantimage;
  final int? id;
  PlantTypes({this.plantcatagory, this.plantqunty, this.plantimage, this.id});
}

class PhotoGraphy {
  final String? photo;
  final String? text;
  final int? id;
  PhotoGraphy({this.photo, this.text, this.id});
}

class Button {
  final  ic;
  final String? text;
  final int? id;
  Button({this.ic, this.text, this.id});
}
class Species{
  final String? name;
  final int? id;
  Species({this.name,this.id});
}
class Cactus{
  final String? name;
  final String?image;
  final String?discription;
  final String?nc;
  final double? id;
  Cactus({this.name,this.image,this.discription,this.id,this.nc});
}
