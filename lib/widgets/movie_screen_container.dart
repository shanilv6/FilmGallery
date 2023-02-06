import 'package:flutter/material.dart';
import 'cast_container.dart';

class MovieScreenContainer extends StatelessWidget {
  final  String movieScreenImagePath;
  final String watchMovieName;
  final IconData movieScreenRating;
  final String plot;
  final  String directorName;
  final String movieWriter;
  const MovieScreenContainer(
      {super.key,  required this.movieScreenImagePath,
       required this.watchMovieName,
       required this.plot,
       required this.directorName,
       required this.movieWriter, required this.movieScreenRating});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 420,
            width: double.infinity,
            decoration: BoxDecoration(
             // color: Colors.grey[200],
                image: DecorationImage(
                    image: NetworkImage(
                      movieScreenImagePath,
                    ),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                    color: Colors.white,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 230,right: 10),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(height: 20,
                          width: 20,
                          color: Colors.transparent,
                        ),
                        Column(
                          children: [
                            const Text(
                              "Available now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(watchMovieName,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  movieScreenRating,
                                  color: Colors.white,
                                ),
                                // icons1[icons1]
                              ],
                            )
                          ],
                        ),


                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "The Plot",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  plot,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Text(
                      "Director : ",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(directorName,style: const TextStyle(color: Colors.white),),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "Writer : ",
                      style: TextStyle(color: Colors.blue),
                    ),
                    Text(movieWriter,style: const TextStyle(color: Colors.white),),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "The Cast",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: const [
                    CastContainer(
                      Castimage:
                          'https://source.boomplaymusic.com/buzzgroup1/M00/3D/A7/rBEevGLXpSiAU3jLAAIwlwO9nlo220.jpg',
                    ),
                    CastContainer(
                        Castimage:
                            "https://qph.cf2.quoracdn.net/main-qimg-f59bc5a282eddaf9ca43e540cb3f745d-lq"),
                    CastContainer(
                        Castimage:
                            "https://1.bp.blogspot.com/-HkuP0xkCUb0/YQqbMkrSlDI/AAAAAAAAAs8/iDYr1DX-0Ewj6uC6fzHCTStC2DHuWd5IwCLcBGAsYHQ/s16000/Scarlett%2BJohansson.webp"),
                    CastContainer(
                        Castimage:
                            "https://filmfare.wwmindia.com/content/2018/feb/1_1519025892.jpg"),
                    CastContainer(
                        Castimage:
                            "https://i.insider.com/5d51c767dcc1e722d778be63?width=750&format=jpeg&auto=webp")
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
