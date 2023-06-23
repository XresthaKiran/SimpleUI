class CatalogModel {
  static final items = [
    Item(
        id: "hello",
        name: 'Iphone12',
        desc: 'App product 12th gen',
        price: 999,
        color: 'purple',
        image:
            'https://th.bing.com/th/id/R.ef180e3d3ebee904551bef10fafe1d7c?rik=HKADpRYnslhBpA&pid=ImgRaw&r=0')
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  get length => null;
}
