import 'package:flutter/material.dart';
import 'AnimeTitle.dart';
import 'AnimeCard.dart';

class MainScreen extends StatelessWidget {
  final String username;
  MainScreen({required this.username});
  
  get AnimeTitle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('YourAnimeList'),
        backgroundColor: Color(0xFF2E51A2),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Text(
                  username,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 10.0),
                CircleAvatar(
                  // Здесь можете добавить код для отображения аватарки пользователя
                ),
              ],
            ),
          ),
        ],
      ),
      // Это блоки сезонов со скролом
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Блок "Летний аниме сезон"
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Летний аниме сезон',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 200.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AnimeTitle.SummerAnimeList.length, // Здесь нужно получить из AnimeTitle
                itemBuilder: (context, index) {
                  // Здесь создаем блок аниме с постером и названием
                  return AnimeCard(
                    anime: AnimeTitle.SummerAnimeList.length[index], // Здесь нужно получать данные об аниме из списка
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}