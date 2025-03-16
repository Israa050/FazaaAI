import 'package:flutter/material.dart';
import 'package:salam/views/add__crisis.dart';
import 'package:salam/views/login.dart';
import 'package:salam/views/posts.dart';
import 'package:salam/views/shoulter.dart';
import 'package:salam/views/user.dart';

class Dashboarde extends StatelessWidget {
  const Dashboarde({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // padding: const EdgeInsets.all(20.0),
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Column(children: [
                            MaterialButton(
                              height: 100,
                              minWidth: 100,
                              color: Color.fromARGB(255, 11, 145, 255),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Posts()));
                              },
                              child: const Icon(
                                (Icons.comment),
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              'Posts',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black),
                            )
                          ]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                          ),
                          child: Column(children: [
                            MaterialButton(
                              height: 100,
                              minWidth: 100,
                              color: const Color.fromARGB(255, 11, 145, 255),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Shoulter()));
                              },
                              child: const Icon(
                                Icons.home,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              'Shelter',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black),
                            )
                          ]),
                        ),
                      ]),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(60.0)),
                          ),
                          child: Column(children: [
                            MaterialButton(
                              height: 100,
                              minWidth: 100,
                              color: const Color.fromARGB(255, 11, 145, 255),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => AddCrisis()));
                              },
                              child: const Icon(
                                Icons.warning_amber,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              'Crisis',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black),
                            )
                          ]),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Column(children: [
                            MaterialButton(
                              height: 100,
                              minWidth: 100,
                              color: const Color.fromARGB(255, 11, 145, 255),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Login()));
                              },
                              child: const Icon(
                                Icons.person,
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            const Text(
                              'Profile',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.black),
                            )
                          ]),
                        )
                      ])
                ],
              ),
            ),
          ]),
    );
  }
}

/*class dashboard extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function route;
  const dashboard({
    required this.icon,
    required this.text,
    required this.route,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Column(children: [
        MaterialButton(
          height: 100,
          minWidth: 100,
          color: const Color.fromARGB(255, 11, 145, 255),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => route()));
          },
          child: Icon(
            icon,
            size: 60,
            color: Colors.white,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
        )
      ]),
    );
  }
}*/
