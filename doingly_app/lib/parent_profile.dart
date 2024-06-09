import 'package:flutter/material.dart';

import 'home_page.dart';

class ParentProfile extends StatefulWidget {
  const ParentProfile({super.key});

  @override
  State<ParentProfile> createState() => _ParentProfileState();
}

class _ParentProfileState extends State<ParentProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "ParentProfile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/phone.PNG",
                ),
              ),
              const Text("Amin Pasha"),
              const Text("busingye2@gmail.com"),
              const Text(
                "About Me:",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('''I have 4 years of experience in
                   \n caring for children under 10 years.
                   I like caring for young kids  '''),
              const Text(
                "Education",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const Text('''I got a certificate in child care management in 2019
              \n I have a deploma in Home management'''),
              const Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // children: [
                  //   TextButton(onPressed: (){
                  //     Navigator.of(context).push(
                  //       MaterialPageRoute(builder: (-)=>Home() )
                  //     ),

                  //   }, child: Text('button'),)

                  // ],

                  ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
