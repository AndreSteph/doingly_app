// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.list, color: Colors.white, size: 30),
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
                alignment: Alignment.center,
                image: AssetImage('assets/images/user.jpg'),
                height: 45.0,
                width: 45.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                border: const Border(
                  left: BorderSide(color: Colors.blue, width: 1),
                  right: BorderSide(color: Colors.blue, width: 1),
                  bottom: BorderSide(color: Colors.blue, width: 1),
                  top: BorderSide(color: Colors.blue, width: 1),
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text(
                        "Manage your time well",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ),
                    Expanded(
                      child: Image(
                        alignment: Alignment.topRight,
                        image: AssetImage('assets/images/logo.png'),
                        height: 70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Categories",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.card_giftcard_outlined,
                              color: Colors.blue,
                              size: 35,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Work",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.person_2_outlined,
                              color: Colors.blue,
                              size: 35,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Personal",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.shopping_cart_checkout_outlined,
                              color: Colors.blue,
                              size: 35,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Shopping",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 80,
                        child: Column(
                          children: [
                            Icon(
                              Icons.heart_broken_outlined,
                              color: Colors.blue,
                              size: 35,
                            ),
                            SizedBox(height: 5),
                            Text(
                              "Health",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "You have 10 tasks for today",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 15),
                ListTile(
                  leading: Icon(
                    Icons.donut_large_rounded,
                    color: Colors.blue,
                  ),
                  title: Text("Daily UI Challenge"),
                  trailing: Text(
                    '9:00 Am',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
                SizedBox(height: 8),
                ListTile(
                  leading: Icon(
                    Icons.donut_large_rounded,
                    color: Colors.blue,
                  ),
                  title: Text("Daily UI Challenge"),
                  trailing: Text(
                    '9:00 Am',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
                SizedBox(height: 8),
                ListTile(
                  leading: Icon(
                    Icons.donut_large_rounded,
                    color: Colors.blue,
                  ),
                  title: Text("Instagram posting"),
                  trailing: Text(
                    '11:00 Am',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
                SizedBox(height: 8),
                ListTile(
                  leading: Icon(
                    Icons.donut_large_rounded,
                    color: Colors.blue,
                  ),
                  title: Text("Reading an article about UX/UI"),
                  trailing: Text(
                    '1:00 Pm',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
                SizedBox(height: 8),
                ListTile(
                  leading: Icon(
                    Icons.donut_large_rounded,
                    color: Colors.blue,
                  ),
                  title: Text("Go to the market"),
                  trailing: Text(
                    '4:00 Pm',
                    style: TextStyle(fontSize: 16, color: Colors.red),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  int pageIndex = 0;
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? Icon(
                    Icons.home_filled,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? Icon(
                    Icons.work_rounded,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? Icon(
                    Icons.widgets_rounded,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? Icon(
                    Icons.settings,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.settings_outlined,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

class bottomNav extends StatelessWidget {
  const bottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: BottomAppBar(
        padding: EdgeInsets.all(1),
        color: Colors.blue,
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        elevation: 10,
        child: BottomNavigationBar(
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
          onTap: (value) {
            print('Selected item: $value');
          },
        ),
      ),
    );
  }
}
