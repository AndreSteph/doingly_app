import 'package:doingly_app/get_started.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: const Icon(
              Icons.list,
              color: Colors.white,
              size: 30,
            ),
            title: const Text(
              "Dashboard",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: const Image(
                    image: AssetImage("assets/images/pink.jpeg"),
                    alignment: Alignment.center,
                    height: 50,
                    width: 50,
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
          body: Container(
            padding: const EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      const SizedBox(height: 16.0),
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'search for',
                          labelText: 'search',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Card(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            // const Padding(
                            //   padding: EdgeInsets.all(8.0),
                            //   child: TextField(

                            //     decoration: InputDecoration(

                            //         labelText: 'search',
                            //         hintText: 'search',
                            //         border: OutlineInputBorder()),
                            //   ),
                            // ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(
                                  "assets/images/cook.PNG",
                                  width: 200,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Expanded(
                                child: Text(
                              "A father without a babysitter",
                              style: TextStyle(fontSize: 14),
                            )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Card(
                        color: Colors.white,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Image(
                                image:
                                    AssetImage('assets/images/fatherSit.jpg'),
                                width: 200,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                "A single father remains at home due to lack of a babysitter",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const GetStartedPage()),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 16),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_forward_outlined,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  "pop up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    backgroundColor:
                                        Color.fromARGB(0, 66, 57, 58),
                                  ),
                                ),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
