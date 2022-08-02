class PostModel {
  final String name;
  final String hour; // It will be DateTime type
  final String imgSrc;
  final String postDes;
  final String postImg;

  PostModel({
    required this.name,
    required this.hour,
    required this.imgSrc,
    required this.postDes,
    required this.postImg,
  });
}
