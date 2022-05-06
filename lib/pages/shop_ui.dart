import 'package:flutter/material.dart';
class ShopUI extends StatefulWidget {
  const ShopUI({Key? key}) : super(key: key);
  static const String id = 'shop_ui';

  @override
  State<ShopUI> createState() => _ShopUIState();
}

class _ShopUIState extends State<ShopUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text('Apple shop'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 30,
              width: 36,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text('7'),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),

        child: Column(
          children: [
            //#Header image
            Container(
              margin: const EdgeInsets.all(10),
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/image_12.png'),
                  fit: BoxFit.cover,
                ),
              ),
              //#Opacity with black
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.1),
                    ]
                  ),
                ),
                //#Lifestyle save
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children:  [
                    const Text('Lifestyle safe',style: TextStyle(color: Colors.white,fontSize: 35),),
                    const SizedBox(height: 10,),
                    Container(
                      margin:const EdgeInsets.symmetric(horizontal: 40) ,
                     // margin: const EdgeInsets.all(30),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                        child: Center(
                          child: Text('Shop Now',style: TextStyle(color: Colors.grey.shade800,),),
                        ),
                    ),
                    const SizedBox(height: 35,),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GridView.count(crossAxisCount: 2,
              crossAxisSpacing: 17,
              mainAxisSpacing: 17,
              children: [
                _ItemList(image: 'assets/images/image_9.jpg'),
                _ItemList(image: 'assets/images/image_10.jpeg'),
                _ItemList(image: 'assets/images/image_12.png'),
                _ItemList(image: 'assets/images/image_15.jpg'),
                _ItemList(image: 'assets/images/image_16.jpg'),
                _ItemList(image: 'assets/images/ic_image4.jpg'),
              ],
              ),
                
              ),

          ],
        ),
      ),
    );
  }
  Widget _ItemList({image}){
    return Container(

        padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          fit: BoxFit.cover,

          image: AssetImage(image,),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Icon(Icons.star_border,color: Colors.yellow,size: 25,),
        ],
      ),
    );
  }
}
