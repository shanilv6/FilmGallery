import 'package:flutter/material.dart';

class ActionMovieContainer extends StatelessWidget {
  final String actioncontainerimage;
  final String actioncontainertext1;
  final String actioncontainertext2;
  final String actioncontainertext3;

  const ActionMovieContainer({
    Key? key,
    required this.actioncontainerimage,
    required this.actioncontainertext1,
    required this.actioncontainertext2,
    required this.actioncontainertext3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 260,
        width: 175,
        decoration: BoxDecoration(
         color: Colors.grey.shade900,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: NetworkImage(actioncontainerimage),
                          fit: BoxFit.cover)),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                actioncontainertext1,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                actioncontainertext2,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                   // color: Colors.blue,
                  border:Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(5),

                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.star_border_outlined,color: Colors.blue,
                    ),
                    Text(actioncontainertext3,style: const TextStyle(color: Colors.blue),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
