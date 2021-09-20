import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/model_movie.dart';
import 'package:flutter_netflix/widget/box_slider.dart';
import 'package:flutter_netflix/widget/carousel_slider.dart';
import 'package:flutter_netflix/widget/circle_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  List<Movie> movies = [
    Movie.fromMap({
      'title': '사랑의 불시착',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착2',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착3',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    }),
    Movie.fromMap({
      'title': '사랑의 불시착4',
      'keyword': '사랑/로맨스/판타지',
      'poster': 'test_movie_1.png',
      'like': false,
    })
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Stack( // 위젯을 겹쳐서 화면에 뿌림
          children: <Widget>[
            CarouselImage(movies: movies,),
            const TopBar(),
          ],
        ),
        CircleSlider(movies: movies),
        BoxSlider(movies: movies),
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 7, 20, 7),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset("images/bbongflix_logo.png", fit: BoxFit.contain, height: 25,),
          Container(
            padding: const EdgeInsets.only(right: 1),
            child: const Text(
              'TV 프로그램',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 1),
            child: const Text(
              '영화',
              style: TextStyle(fontSize: 14),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 1),
            child: const Text(
              '내가 찜한 콘텐츠',
              style: TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }

}