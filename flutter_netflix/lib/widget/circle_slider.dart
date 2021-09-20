import 'package:flutter/material.dart';
import 'package:flutter_netflix/model/model_movie.dart';
import 'package:flutter_netflix/screen/detail_screen.dart';

class CircleSlider extends StatelessWidget {
  final List<Movie> movies;

  const CircleSlider({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('미리보기'),
          SizedBox(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal, //좌우 스크롤 가능
              children: makeCircleImages(context, movies),
            ),
          )
        ],
      )
    );
  }
}

List<Widget> makeCircleImages(BuildContext context, List<Movie> movies) {
  List<Widget> results = [];

  for (var i = 0; i < movies.length; i++) {
    results.add(
      InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) {
                return DetailScreen(movie: movies[i],);
              }
          ));
        },
        child: Container(
          padding: const EdgeInsets.only(right:10),
          child: Align(alignment: Alignment.centerLeft,
          child: CircleAvatar(
            backgroundImage: AssetImage('images/' + movies[i].poster),
            radius: 48,
          ),),
        )
      )
    );
  }
  return results;
}