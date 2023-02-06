import 'package:flutter/material.dart';

class MoviePosterContainer extends StatelessWidget {
  final String movieposterpath;
  final text1;
  final text2;
  final movieposterrating;
//  final icons1;
  const MoviePosterContainer({
    Key? key,
    required this.movieposterpath,
    required this.text1,
    required this.text2,
    this.movieposterrating,
    // required this.icons1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 155,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 175,
              width: 155,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: NetworkImage(movieposterpath), fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text1,
              style:
                  const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: const TextStyle(color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
                Icon(
                  movieposterrating,
                  color: Colors.blue,
                ),
                // icons1[icons1]
              ],
            )
          ],
        ),
      ),
    );
  }
}
