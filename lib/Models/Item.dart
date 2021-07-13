class Item {
  int id;
  String recipename;
  String writer;
  String image;
  double rating;
  int cookingtime;
  double price;
  int color;
  List<String> vitamins;
  Item({
    required this.id,
    required this.recipename,
    required this.writer,
    required this.image,
    required this.color,
    required this.price,
    required this.rating,
    required this.cookingtime,
    required this.vitamins,
  });
}

List<Item> demoItems = [
  Item(
      id: 1,
      recipename: 'Fruit soup',
      writer: 'Behruz Veliyev',
      image: 'assets/images/1.png',
      rating: 4.5,
      cookingtime: 20,
      price: 3.50,
      color: 0xFFFFE3E3,
      vitamins: ['vitamin A', 'vitamin B', 'vitamin C']),
  Item(
      id: 2,
      recipename: 'Salad',
      writer: 'Orkhan Huseyinli',
      image: 'assets/images/2.png',
      rating: 4.5,
      cookingtime: 15,
      price: 10.50,
      color: 0xFFFFE3E3,
      vitamins: ['vitamin A', 'vitamin B', 'vitamin C']),
  Item(
      id: 3,
      recipename: 'Burger',
      writer: 'Orkhan Huseyinli',
      image: 'assets/images/3.png',
      rating: 4.5,
      cookingtime: 55,
      price: 3.50,
      color: 0xFFFFE3E3,
      vitamins: ['vitamin A', 'vitamin B', 'vitamin C']),
  Item(
      id: 4,
      recipename: 'Salmoon',
      writer: 'Behruz Veliyev',
      image: 'assets/images/4.png',
      rating: 4.5,
      cookingtime: 105,
      price: 80,
      color: 0xFFFFE3E3,
      vitamins: ['vitamin A', 'vitamin B', 'vitamin C']),
];
