import 'package:flutter/material.dart';

class DownloadContainer extends StatelessWidget {
  final String ImagePath;
  final String Movietext1;
  final String Movietext2;
  final String downloadtext1;
  final String downloadtext2;
  final double bluewidth;
  final double greywidth;


  const DownloadContainer({
    Key? key, required this.ImagePath, required this.Movietext1,required this.Movietext2,required this.downloadtext1,required this.downloadtext2,required this.bluewidth,required this.greywidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 120,
        width: 360,
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(8),
           ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            image: NetworkImage(
                         ImagePath),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 90),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Movietext1,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              Movietext2,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Column(
                            children: [

                              Row(
                                children: [
                                  Text(downloadtext1,style: TextStyle(color: Colors.blue),),
                                  SizedBox(width: 40,),
                                  Text(downloadtext2,style: TextStyle(color: Colors.blue),),
                                ],
                              ),
                              SizedBox(height: 5,),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 2,
                                      width: bluewidth,
                                      decoration: BoxDecoration(
                                          color: Colors.blue
                                      ),
                                    ),
                                    Container(
                                      height: 2,
                                      width: greywidth,
                                      decoration: BoxDecoration(
                                          color: Colors.grey
                                      ),
                                    )
                                  ],),
                              )
                            ],
                          ),
                          Icon(Icons.pause_circle,color: Colors.white,),
                          Icon(Icons.more_vert_outlined,color: Colors.white,)

                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
