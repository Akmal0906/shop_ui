import 'package:flutter/material.dart';

class PartPage extends StatefulWidget {
  static const String id = 'part_page';

  const PartPage({Key? key}) : super(key: key);

  @override
  State<PartPage> createState() => _PartPageState();
}

class _PartPageState extends State<PartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Flutter Course'),
      ),
      body: ListView(
        children: [
          _itemlist(title: 'picture', image: 'assets/images/ic_image1.jpg'),
          _itemlist(title: 'picture', image: 'assets/images/ic_image2.jpg'),
          _itemlist(title: 'picture', image: 'assets/images/ic_image3.jpg'),
          _itemlist(title: 'picture', image: 'assets/images/ic_image4.jpg'),
          _itemlist(title: 'picture', image: 'assets/images/image_16.jpg'),
        ],
      ),
    );
  }

  // TODO: implement widget
  Widget _itemlist({title, image}) {
    return Row(
      children: [
        Image(
          image: AssetImage(image),
          width: 150,
          height: 150,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(title),
      ],
    );
  }
}