part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    required this.id,
    required this.picturePath,
    required this.name,
    required this.description,
    required this.ingredients,
    required this.price,
    required this.rate,
  });
}

List<Food> mockFoods = [
  Food(
    id: 1,
    picturePath:
        "https://i.pinimg.com/736x/06/7b/28/067b2879e5c9c42ec669bf639c3fbffc.jpg",
    name: "Sate Sayur Sultan",
    description:
        "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 150000,
    rate: 4.2,
  ),
  Food(
    id: 2,
    picturePath:
        "https://www.warisankuliner.com/gfx/recipes/temp_thumb-1658299943.jpg",
    name: "Sate Sayur Sultan",
    description:
        "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 230000,
    rate: 2.2,
  ),
  Food(
    id: 3,
    picturePath:
        "https://asset.kompas.com/crops/I9YfYuGPYoqtkGOgVDurgj-2MiY=/0x0:1000x667/750x500/data/photo/2020/06/02/5ed5f39c7d8fe.jpg",
    name: "Sate Sayur Sultan",
    description:
        "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 230000,
    rate: 2.2,
  ),
  Food(
    id: 4,
    picturePath:
        "https://www.masakapahariini.com/wp-content/uploads/2020/11/batagor-bandung-disajikan-500x300.jpg",
    name: "Sate Sayur Sultan",
    description:
        "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 230000,
    rate: 2.2,
  ),
  Food(
    id: 5,
    picturePath:
        "https://cdn0-production-images-kly.akamaized.net/qSxIa6DhH4tSfPQdtDo-0vS-6R8=/0x2180:3999x4434/1200x675/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3981507/original/061819300_1648783740-shutterstock_1969134643.jpg",
    name: "Sate Sayur Sultan",
    description:
        "Sate Sayur Sultan adalah menu sate vegan paling terkenal di Bandung. Sate ini dibuat dari berbagai macam bahan.",
    ingredients: "Bawang Merah, Paprika, Bawang Bombay, Timun",
    price: 230000,
    rate: 2.2,
  ),
];
