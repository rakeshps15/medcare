class Items {
  final String img;
  final String title;
  final String subTitle;

  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Items> listOfItems = [
  Items(
    img: "assets/images/in1.jpg",
    title: "Exceptional Care\nClose to you",
    subTitle: "Say yes to good health",
  ),
  Items(
    img: "assets/images/in2.jpg",
    title: "Makes Online And Live\nConsultation Easily\nwith top Doctors",
    subTitle: "",
  ),
  Items(
    img: "assets/images/in3.jpg",
    title: "Make your friendship and create a new community",
    subTitle: "",
  ),
];
