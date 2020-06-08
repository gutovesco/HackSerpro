class LojasListData {
  LojasListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;

  static List<LojasListData> lojasList = <LojasListData>[
    LojasListData(
      imagePath: 'assets/images/old_floricultura.png',
      titleTxt: 'Floricultura da Neiva',
      subTxt: 'Águas de Lindóia, São Paulo',
      dist: 4.0,
      reviews: 74,
      rating: 4.5,
    ),
    LojasListData(
      imagePath: 'assets/images/varejao.jpg',
      titleTxt: 'Varejão das Fábricas',
      subTxt: 'Águas de Lindóia, São Paulo',
      dist: 4.0,
      reviews: 32,
      rating: 5.0,
    ),
    LojasListData(
      imagePath: 'assets/images/adega.jpg',
      titleTxt: 'Adega do Tião',
      subTxt: 'Águas de Lindóia, São Paulo',
      dist: 4.0,
      reviews: 231,
      rating: 3.5,
    ),
  ];
}
