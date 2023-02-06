import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../../../widgets/action_movie_container.dart';
import '../../../widgets/movie_screen_container.dart';

class Actionscreen extends StatelessWidget {
  Actionscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 260,
                width: 500,
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                movieScreenImagePath:
                                    "https://m.media-amazon.com/images/I/81RmRRzJsiL._RI_.jpg",
                                watchMovieName: "Watch Twilight",
                                plot:
                                    "The Twilight Saga is a series of romance fantasy films based on the book series Twilight by Stephenie Meyer. The series has grossed over 3.4 billion worldwide. The first installment, Twilight, was released on November 21, 2008. The second installment, New Moon, followed on November 20, 2009.",
                                directorName: "Catherine Hard-wick",
                                movieWriter: "Chris Weitz",
                                movieScreenRating: Icons.star,
                              );
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://upload.wikimedia.org/wikipedia/en/b/b6/Twilight_%282008_film%29_poster.jpg",
                              actioncontainertext1: "Twilight",
                              actioncontainertext2: "Red chillies",
                              actioncontainertext3: "4.2")),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
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
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://lumiere-a.akamaihd.net/v1/images/avatar_800x1200_208c9665.jpeg?region=0%2C0%2C800%2C1200",
                              actioncontainertext1: "Avatar",
                              actioncontainertext2: "R H Films",
                              actioncontainertext3: "5.0")),
                    ]),
              ),
              Container(
                height: 260,
                width: 500,
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                movieScreenImagePath:
                                    "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg",
                                watchMovieName: "Watch AvengersEndgame",
                                plot:
                                    "After Thanos, an intergalactic warlord, disintegrates half of the universe, the Avengers must reunite and assemble again to reinvigorate their trounced allies and restore balance.",
                                directorName: "Anthony Russo",
                                movieWriter: "Joe Russo",
                                movieScreenRating: Icons.star,
                              );
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://lumiere-a.akamaihd.net/v1/images/p_avengersendgame_19751_e14a0104.jpeg",
                              actioncontainertext1: "Avengers Endgame",
                              actioncontainertext2: "Marvel Production",
                              actioncontainertext3: "5.0")),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                movieScreenImagePath:
                                    "https://i.pinimg.com/originals/aa/64/55/aa64557b9aac8bc35b654117c42ef17f.jpg",
                                watchMovieName: "Watch Frozen",
                                plot:
                                    "Anna sets out on a journey with an iceman, Kristoff, and his reindeer, Sven, in order to find her sister, Elsa, who has the power to convert any object or person into ice.",
                                directorName: "Chris Buck",
                                movieWriter: "Jennifer Lee",
                                movieScreenRating: Icons.star_half_outlined,
                              );
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://i.pinimg.com/originals/aa/64/55/aa64557b9aac8bc35b654117c42ef17f.jpg",
                              actioncontainertext1: "Frozen",
                              actioncontainertext2: "Marvel Production",
                              actioncontainertext3: "4.5")),
                    ]),
              ),
              Container(
                height: 260,
                width: 500,
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                movieScreenImagePath:
                                    "https://screenrant.com/wp-content/uploads/2022/11/Harry-Potter-Franchise-Image.jpg",
                                watchMovieName: "Watch Harry Potter",
                                plot:
                                    "Harry Potter is a series of seven fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry.",
                                directorName: "David Heyman",
                                movieWriter: "Chris Columbus",
                                movieScreenRating: Icons.star_half_outlined,
                              );
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://s3images.coroflot.com/user_files/individual_files/685449_rb9rktqv2fmc_0u6yih87ugz8.jpg",
                              actioncontainertext1: "Harry Potter",
                              actioncontainertext2: "Warner Bros",
                              actioncontainertext3: "4.4")),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                movieScreenImagePath:
                                    "http://www.movienewsletters.net/photos/277216R1.jpg",
                                watchMovieName: "Watch Iron Man",
                                plot:
                                    "When Tony Stark, an industrialist, is captured, he constructs a high-tech armoured suit to escape. Once he manages to escape, he decides to use his suit to fight against evil forces to save the world.",
                                directorName: "Jon Fareau",
                                movieWriter: "Ramin Djwadi",
                                movieScreenRating: Icons.star_half_outlined,
                              );
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://www.themoviedb.org/t/p/original/aGsjgTNMSF0kswDx57YCVPqCivW.jpg",
                              actioncontainertext1: "Iron Man",
                              actioncontainertext2: "Marvel Production",
                              actioncontainertext3: "4.3")),
                    ]),
              ),
              Container(
                height: 260,
                width: 500,
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                movieScreenImagePath:
                                    "https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg",
                                watchMovieName: "Watch Titanic",
                                plot:
                                    "Seventeen-year-old Rose hails from an aristocratic family and is set to be married. When she boards the Titanic, she meets Jack Dawson, an artist, and falls in love with him.",
                                directorName: "James Cameron",
                                movieWriter: "Jon Landau",
                                movieScreenRating: Icons.star_half_outlined,
                              );
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg",
                              actioncontainertext1: "Titanic",
                              actioncontainertext2: "Paramount Pictures",
                              actioncontainertext3: "4.4")),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                movieScreenImagePath:
                                    "https://m.media-amazon.com/images/I/81EBp0vOZZL._AC_SL1329_.jpg",
                                watchMovieName: "Watch Lord of the Rings",
                                plot:
                                    "The Lord of the Rings is a series of three epic fantasy adventure films directed by Peter Jackson, based on the novel The Lord of the Rings by J. R. R. Tolkien. The films are subtitled The Fellowship of the Ring, The Two Towers, and The Return of the King",
                                directorName: "Peter Jackson",
                                movieWriter: "Barrie M.Osborne",
                                movieScreenRating: Icons.star_half_outlined,
                              );
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://m.media-amazon.com/images/I/81EBp0vOZZL._AC_SL1329_.jpg",
                              actioncontainertext1: "Lord of the Rings",
                              actioncontainertext2: "New Line Cinema",
                              actioncontainertext3: "4.0")),
                    ]),
              ),
              Container(
                height: 260,
                width: 500,
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const MovieScreenContainer(
                                  movieScreenImagePath:
                                      "https://m.media-amazon.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_.jpg",
                                  watchMovieName: "Watch Transformers",
                                  plot:
                                      "Transformers is a series of science fiction action films based on the Transformers franchise of the 1980s. Michael Bay directed the first five films: Transformers, Revenge of the Fallen, Dark of the Moon, Age of Extinction, and The Last Knight, and has served as a producer for subsequent films.",
                                  directorName: "Travis Knight",
                                  movieWriter: "Steven Caple Jr",
                                  movieScreenRating: Icons.star_border_outlined);
                            }));
                          },
                          child: const ActionMovieContainer(
                              actioncontainerimage:
                                  "https://m.media-amazon.com/images/M/MV5BMjEwNTg1MTA5Nl5BMl5BanBnXkFtZTgwOTg2OTM4MTE@._V1_.jpg",
                              actioncontainertext1: "Transformers",
                              actioncontainertext2: "Hasbro Films",
                              actioncontainertext3: "4.0")),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
