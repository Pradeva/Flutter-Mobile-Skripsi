import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_data.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserData userData = Provider.of<UserData>(context);

    String username = userData.username;
    String password = userData.password;

    print('Username di dashboard : $username');
    print('password di dashboard : $password');


    return Scaffold(
      backgroundColor: Color(0xFF1A1A1A),
      body: Center(
        child: DashboardContent(),
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
            "What are you gonna test today?",
            style: TextStyle(
              color: Color(0xFF27DEBF),
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Recent tested features!",
          style: TextStyle(
            color: Color(0xFF27DEBF),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        DashboardCarousel(),
      ],
    );
  }
}

class DashboardCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 150),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200,
          enlargeCenterPage: true,
          autoPlay: false,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: [
          _buildCarouselItem(1, 'Jumlah Apel lebih dari 30'),
          _buildCarouselItem(1, 'Jumlah Apel lebih dari 30'),
          _buildCarouselItem(1, 'Jumlah Apel lebih dari 30'),
          _buildCarouselItem(1, 'Jumlah Apel lebih dari 30'),
          _buildCarouselItem(1, 'Jumlah Apel lebih dari 30'),
          _buildCarouselItem(1, 'Jumlah Apel lebih dari 30'),
          _buildCarouselItem(1, 'Jumlah Apel lebih dari 30'),
        ],
      ),
    );
  }
}

Widget _buildCarouselItem(int id, String text) {
  return DashboardCard(id: id, text: text);
}

class DashboardCard extends StatelessWidget {
  final int id;
  final String text;

  DashboardCard({required this.id, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFD4F8F2),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: ListTile(
        title: Text(
          'ID: $id',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF1A1A1A),
          ),
        ),
        subtitle: Text(
          'Text: \n $text',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Color(0xFF1A1A1A)),
        ),
      ),
    );
  }
}
