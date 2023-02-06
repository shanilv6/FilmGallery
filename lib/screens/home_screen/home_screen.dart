import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moviappui/widgets/shimmer_load.dart';
import '../../widgets/home_marvel_container.dart';
import '../../widgets/movie_poster_container.dart';
import '../../widgets/movie_screen_container.dart';
import '../../widgets/shimmer_effect.dart';

class HomeScreen extends StatelessWidget {
  ShimmerController shimmerController = Get.put(ShimmerController());
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Obx(() => shimmerController.isLoadingCompleted.value == true
              ? ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          const HomeMarvelContainer(),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "Trending",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                                Text(
                                  "See All",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 270,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "https://upload.wikimedia.org/wikipedia/en/b/b6/Twilight_%282008_film%29_poster.jpg",
                                        watchMovieName: "Watch Twilight",
                                        plot:
                                            "The Twilight Saga is a series of romance fantasy films based on the book series Twilight by Stephenie Meyer. The series has grossed over 3.4 billion worldwide. The first installment, Twilight, was released on November 21, 2008. The second installment, New Moon, followed on November 20, 2009.",
                                        directorName: "Catherine Hardwick",
                                        movieWriter: "Chris Weitz",
                                        movieScreenRating: Icons.star,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://upload.wikimedia.org/wikipedia/en/b/b6/Twilight_%282008_film%29_poster.jpg",
                                    text1: "Twilight",
                                    text2: "Red chillies",
                                    movieposterrating:
                                        Icons.star_half_outlined,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "https://img.buzzfeed.com/buzzfeed-static/static/2019-12/13/22/asset/aa5f9cea2a5e/sub-buzz-4741-1576276337-1.jpg?downsize=700%3A%2A&output-quality=auto&output-format=auto",
                                        watchMovieName: "Watch Avatar",
                                        plot:
                                            "Jake, who is paraplegic, replaces his twin on the Na'vi inhabited Pandora for a corporate mission. After the natives accept him as one of their own, he must decide where his loyalties lie.",
                                        directorName: "James Cameron",
                                        movieWriter: "Jon Landau",
                                        movieScreenRating: Icons.star,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://lumiere-a.akamaihd.net/v1/images/avatar_800x1200_208c9665.jpeg?region=0%2C0%2C800%2C1200",
                                    text1: "Avatar",
                                    text2: "R H Films",
                                    movieposterrating: Icons.star,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return Obx(
                                        () => shimmerController
                                                    .isLoadingCompleted
                                                    .value ==
                                                true
                                            ? const MovieScreenContainer(
                                                movieScreenImagePath:
                                                    "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg",
                                                watchMovieName:
                                                    "Watch AvengersEndgame",
                                                plot:
                                                    "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.",
                                                directorName: "Anthony Russo",
                                                movieWriter: "Joe Russo",
                                                movieScreenRating: Icons.star,
                                              )
                                            : const ShimmerEffect(),
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg",
                                    text1: "Avengers Endgame",
                                    text2: "Marvel Production",
                                    movieposterrating: Icons.star,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "https://i.pinimg.com/originals/aa/64/55/aa64557b9aac8bc35b654117c42ef17f.jpg",
                                        watchMovieName: "Watch Frozen",
                                        plot:
                                            "Anna sets out on a journey with an iceman, Kristoff, and his reindeer, Sven, in order to find her sister, Elsa, who has the power to convert any object or person into ice.",
                                        directorName: "Chris Buck",
                                        movieWriter: "Jennifer Lee",
                                        movieScreenRating:
                                            Icons.star_half_outlined,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://i.pinimg.com/originals/aa/64/55/aa64557b9aac8bc35b654117c42ef17f.jpg",
                                    text1: "Frozen",
                                    text2: "Marvel Productio",
                                    movieposterrating:
                                        Icons.star_half_outlined,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "https://screenrant.com/wp-content/uploads/2022/11/Harry-Potter-Franchise-Image.jpg",
                                        watchMovieName: "Watch Harry Potter",
                                        plot:
                                            "Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry.",
                                        directorName: "David Heyman",
                                        movieWriter: "Chris Columbus",
                                        movieScreenRating:
                                            Icons.star_half_outlined,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://s3images.coroflot.com/user_files/individual_files/685449_rb9rktqv2fmc_0u6yih87ugz8.jpg",
                                    text1: "Harry Potter",
                                    text2: "Warner Bros",
                                    movieposterrating:
                                        Icons.star_half_outlined,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Hollywood",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                                Text("See All",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15)),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 270,
                            width: MediaQuery.of(context).size.width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "http://www.movienewsletters.net/photos/277216R1.jpg",
                                        watchMovieName: "Watch Iron Man",
                                        plot:
                                            "When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.",
                                        directorName: "Jon Fareau",
                                        movieWriter: "Ramin Djwadi",
                                        movieScreenRating:
                                            Icons.star_half_outlined,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://www.themoviedb.org/t/p/original/aGsjgTNMSF0kswDx57YCVPqCivW.jpg",
                                    text1: "Iron Man",
                                    text2: "Marvel Studio",
                                    movieposterrating:
                                        Icons.star_half_outlined,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg",
                                        watchMovieName: "Watch Titanic",
                                        plot:
                                            "Seventeen-year-old Rose hails from an aristocratic family and is set to be married. When she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.",
                                        directorName: "James Cameron",
                                        movieWriter: "Jon Landau",
                                        movieScreenRating:
                                            Icons.star_half_outlined,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg",
                                    text1: "Titanic",
                                    text2: "Paramount Pictures",
                                    movieposterrating:
                                        Icons.star_half_outlined,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "https://m.media-amazon.com/images/I/81EBp0vOZZL._AC_SL1329_.jpg",
                                        watchMovieName:
                                            "Watch Lord of the Rings",
                                        plot:
                                            "The Lord of the Rings is a series of three epic fantasy adventure films directed by Peter Jackson, based on the novel The Lord of the Rings by J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring, The Two Towers, and The Return of the King",
                                        directorName: "Peter Jackson",
                                        movieWriter: "Barrie M.Osborne",
                                        movieScreenRating:
                                            Icons.star_border_outlined,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://m.media-amazon.com/images/I/81EBp0vOZZL._AC_SL1329_.jpg",
                                    text1: "Lord of the Rings",
                                    text2: "Hasbro Films",
                                    movieposterrating:
                                        Icons.star_border_outlined,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(builder: (context) {
                                      return const MovieScreenContainer(
                                        movieScreenImagePath:
                                            "https://m.media-amazon.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_.jpg",
                                        watchMovieName: "Watch Transformers",
                                        plot:
                                            "Transformers is a series of science fiction action films based on the Transformers franchise of the 1980s. Michael Bay directed the first five films: Transformers, Revenge of the Fallen, Dark of the Moon, Age of Extinction, and The Last Knight, and has served as a producer for subsequent films.",
                                        directorName: "Travis Knight",
                                        movieWriter: "Steven Caple Jr",
                                        movieScreenRating:
                                            Icons.star_border_outlined,
                                      );
                                    }));
                                  },
                                  child: const MoviePosterContainer(
                                    movieposterpath:
                                        "https://m.media-amazon.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_.jpg",
                                    text1: "Transformers",
                                    text2: "Hasbro Films",
                                    movieposterrating:
                                        Icons.star_border_outlined,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : const ShimmerEffect())),
    );
  }
}
