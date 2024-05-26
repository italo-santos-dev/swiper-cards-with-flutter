import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Card Swiper with Images Demo',
      home: Scaffold(
        backgroundColor: Color(0xFF2F3336),
        body: CardSwiperDemo(),
      ),
    );
  }
}

class CardSwiperDemo extends StatelessWidget {
  final List<String> imageUrls = [
    'https://scontent.cdninstagram.com/v/t51.2885-15/445372513_7641840549267141_4132519256834499648_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEzNTAuc2RyLmYyODg1In0&_nc_ht=scontent.cdninstagram.com&_nc_cat=109&_nc_ohc=5YH54xeKGVkQ7kNvgGRz1xy&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzM3MzA3MjU0NDM2MTQxMTU1MQ%3D%3D.2-ccb7-5&oh=00_AYAO3cckM8exQVE4utw8O2BbQv8EuanxUBZUUE7KQfoprg&oe=66588B66&_nc_sid=10d13b?text=Image+1',
    'https://scontent.cdninstagram.com/v/t51.2885-15/445880210_804364334951997_2145652261505337858_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEzNTAuc2RyLmYyODg1In0&_nc_ht=scontent.cdninstagram.com&_nc_cat=109&_nc_ohc=6cKICw9uzZUQ7kNvgFme-my&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzM3MzA3MjU1MTE3Njk5NjkzOA%3D%3D.2-ccb7-5&oh=00_AYBjlVLKpRHN4rNOwm7xxMd3Iqzi_-WDpcN6t5DGP4NWUA&oe=6658B1DD&_nc_sid=10d13b?text=Image+2',
    'https://scontent.cdninstagram.com/v/t51.2885-15/445573782_778481567750569_600533557692323308_n.jpg?stp=dst-jpg_e35&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEzNTAuc2RyLmYyODg1In0&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=3WYWpyrMa-cQ7kNvgFif3tn&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzM3MzA3MjU0MzQ2MjcwMTI0NQ%3D%3D.2-ccb7-5&oh=00_AYDY4GnwUX3dh7Bm8AFgN2Q39FSEepIWKupqRCOks89tOg&oe=6658A78F&_nc_sid=10d13b?text=Image+3',
    'https://scontent.cdninstagram.com/v/t51.2885-15/445151295_969055995001888_336978806087851341_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEzNTAuc2RyLmYyODg1In0&_nc_ht=scontent.cdninstagram.com&_nc_cat=104&_nc_ohc=wHXu4RtZCIcQ7kNvgHRRhQE&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzM3MzA3MjU1ODg1NjIzNzI1OQ%3D%3D.2-ccb7-5&oh=00_AYA-d7cmuXFtnQdWFTfy-2ZHbokK1czulW6j-gkakE_Jig&oe=6658B9B2&_nc_sid=10d13b?text=Image+4',
    'https://scontent.cdninstagram.com/v/t51.2885-15/445396239_1002820611560185_371315003512616736_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&efg=eyJ2ZW5jb2RlX3RhZyI6ImltYWdlX3VybGdlbi4xMDgweDEzNTAuc2RyLmYyODg1In0&_nc_ht=scontent.cdninstagram.com&_nc_cat=101&_nc_ohc=AwSTJkvOVFAQ7kNvgH66hPx&edm=APs17CUBAAAA&ccb=7-5&ig_cache_key=MzM3MzA3MjU0NDE3NjE4OTg1MQ%3D%3D.2-ccb7-5&oh=00_AYBeD_cXuzPqZc38UlEcXcRc2Xd0iyQbAICxUie3EdAe5w&oe=66588A5D&_nc_sid=10d13b?text=Image+5',
  ];

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              imageUrls[index],
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      itemCount: imageUrls.length,
      itemWidth: 330.0,
      itemHeight: 400.0,
      layout: SwiperLayout.STACK,
    );
  }
}