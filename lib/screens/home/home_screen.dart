import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '/widgets/widgets.dart';
import '/models/models.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCFCB8),
      appBar: CustomAppBar(title: 'Home'),
      bottomNavigationBar: CustomNavBar(),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: Category.categories
            .map((category) => HeroCarouselCard(category: category))
            .toList(),
      )),
    );
  }
}