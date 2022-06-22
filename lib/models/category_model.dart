import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
      ];

  static List<Category> categories = [

    Category(
      name: 'Toys',
      imageUrl:
          'https://images.unsplash.com/photo-1582845512747-e42001c95638?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80', //https://unsplash.com/photos/m741tj4Cz7M
    ),
    Category(
      name: 'Furniture',
      imageUrl:
          'https://images.unsplash.com/photo-1516627145497-ae6968895b74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=840&q=80', //https://unsplash.com/photos/7Zlds3gm7NU
    ),
  ];
}
