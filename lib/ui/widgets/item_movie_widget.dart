import 'package:flutter/material.dart';
import 'package:flutter_codigo_movieapp/models/movie_model.dart';

class ItemMovieWidget extends StatelessWidget {

  MovieModel movieModel;

  ItemMovieWidget({
    required this.movieModel,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.65,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      decoration: BoxDecoration(
          color: Colors.white12,
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              'https://image.tmdb.org/t/p/w500${movieModel.posterPath}',
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 5),
              blurRadius: 12.0,
            )
          ]),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff23232D).withOpacity(0.92),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movieModel.originalTitle,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Container(
                    width: 100,
                    height: 3.2,
                    decoration: BoxDecoration(
                      color: Color(0xff09C677),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    movieModel.overview,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.85), fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.date_range,
                            color: Colors.white,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            movieModel.releaseDate.toString().substring(0,10),
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.thumb_up,
                            color: Colors.white,
                            size: 18.0,
                          ),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            movieModel.voteCount.toString(),
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff23232D).withOpacity(0.92),
              ),
              child: Text(
                movieModel.voteAverage.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
