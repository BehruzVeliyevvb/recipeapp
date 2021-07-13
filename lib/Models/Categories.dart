class Category {
  int id;
  String name;
  String icon;

  Category({
    required this.icon,
    required this.name,
    required this.id,
  });
}

List<Category> demoCategories = [
  Category(id: 1, name: 'Salad', icon: 'assets/icons/salad.svg'),
  Category(id: 2, name: 'Main Course', icon: 'assets/icons/food.svg'),
  Category(id: 3, name: 'Patty', icon: 'assets/icons/patty.svg'),
  Category(id: 4, name: 'Dessert', icon: 'assets/icons/sweets.svg'),
  Category(id: 5, name: 'Drinks', icon: 'assets/icons/drinks.svg'),
];
