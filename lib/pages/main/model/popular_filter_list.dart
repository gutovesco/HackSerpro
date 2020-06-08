class PopularFilterListData {
  PopularFilterListData({
    this.titleTxt = '',
    this.isSelected = false,
  });

  String titleTxt;
  bool isSelected;

  static List<PopularFilterListData> popularFList = <PopularFilterListData>[
    PopularFilterListData(
      titleTxt: 'Lanchonete',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Eletrônicos',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Floricultura',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Roupas',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Padaria',
      isSelected: false,
    ),
  ];

  static List<PopularFilterListData> lojaList = [
    PopularFilterListData(
      titleTxt: 'Todas',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Entrega',
      isSelected: false,
    ),
    PopularFilterListData(
      titleTxt: 'Retirar na loja',
      isSelected: true,
    ),
    PopularFilterListData(
      titleTxt: 'Promoção',
      isSelected: false,
    ),
  ];
}
