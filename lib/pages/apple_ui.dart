import 'package:flutter/material.dart';

class AppleUI extends StatefulWidget {
  const AppleUI({Key? key}) : super(key: key);
  static const String id = 'apple_ui';

  @override
  State<AppleUI> createState() => _AppleUIState();
}

class _AppleUIState extends State<AppleUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[900],
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        leading: const Icon(Icons.menu),
        centerTitle: true,
        title: const Text(
          'Apple Products',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 30,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:
                      LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.orange.shade400,
                    Colors.orange.shade300,
                  ])),
              child: const Center(
                child: Text(
                  '7',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.orange[900],
        child: Column(
          children: [
            //#Header content
            Container(
              //margin: const EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/image_15.jpg'),
                  )),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.1),
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Lifestyle sale',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Shop Now',
                          style: TextStyle(
                            color: Colors.grey[800],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 1,
                // crossAxisSpacing: 20,
                // mainAxisSpacing: 20,
                children: [
                  _itemList(image: 'assets/images/image_12.png'),
                  _itemList(image: 'assets/images/image_15.jpg'),
                  _itemList(image: 'assets/images/image_10.jpeg'),
                  _itemList(image: 'assets/images/image_16.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _itemList({image}) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
        ],
      ),
    );
  }
}
