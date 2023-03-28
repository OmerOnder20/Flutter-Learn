class FoodGenre {
  final String name;

  FoodGenre(this.name);
}

class FoodGenre17 {
  late final List<FoodGenre> foodGenreList;
  FoodGenre17() {
    foodGenreList = [
      FoodGenre("Food"),
      FoodGenre("Grocery"),
      FoodGenre("Dessert"),
      FoodGenre("Pet Supply"),
      FoodGenre("Toys"),
    ];
  }
}

class Liste {
  final String foodName;
  final double foodRate;
  final int foodPrice;
  final String foodImagePath;

  Liste(this.foodName, this.foodRate, this.foodPrice, this.foodImagePath);
}

class Liste17 {
  late final List<Liste> foodList;
  Liste17() {
    foodList = [
      Liste("Family packaga chicken original", 4.5, 150, "assets/jpg/chicken.jpg"),
      Liste("Spaghetti with onion ring", 4.3, 35, "assets/jpg/real_spaghetti.jpg"),
      Liste("Pizza with sauce mozzarella", 4.5, 40, "assets/jpg/real_pizza.jpg"),
      Liste("Single original toast", 45, 10, "assets/jpg/real_toast.jpg"),
      Liste("Spaghetti with onion ring", 4.3, 35, "assets/jpg/real_spaghetti.jpg"),
      Liste("Single original toast", 45, 10, "assets/jpg/real_toast.jpg"),
      Liste("Family packaga chicken original", 4.5, 150, "assets/jpg/chicken.jpg"),
      Liste("Single original toast", 45, 10, "assets/jpg/real_toast.jpg"),
    ];
  }
}
