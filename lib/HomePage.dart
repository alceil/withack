import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> memes = [
    'https://static.toiimg.com/photo/74674393.cms',
    'https://thecyphersagency.com/wp-content/uploads/elementor/thumbs/leo2-os38ibyfnlo7vdm6aktejmhytlw8mexyxyk4rh20qg.png',
    'https://ichef.bbci.co.uk/images/ic/704xn/p072ms6r.jpg',
    'https://img.delicious.com.au/WqbvXLhs/del/2016/06/more-the-merrier-31380-2.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      drawer: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0)),
        child: Drawer(
          child: ListView(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Hello World',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 6.0, mainAxisSpacing: 6.0),
          itemCount: memes.length,
          itemBuilder: (context, i) {
            return InkWell(
              // onTap: () {
              //   adMobService.createInterad();
              // },
              // onLongPress: () {
              //   adMobService.showInterad();
              // },
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: CachedNetworkImage(
                  imageUrl: memes[i],
                  placeholder: (context, url) =>
                      Image.asset('images/memes.jpeg'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
