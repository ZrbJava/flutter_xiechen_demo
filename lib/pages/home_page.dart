import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _imageList = [
    'https://dimg04.c-ctrip.com/images/zg0a1h000001hr5gy3D2D.jpg',
    'https://dimg04.c-ctrip.com/images/0zg1g1200006j2r0rE598.jpg',
    'https://dimg04.c-ctrip.com/images/zg0i1d000001eglhw9EBE.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Container(
            height: 180.0,
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return new Image.network(
                  _imageList[index],
                  fit: BoxFit.fill,
                );
              },
              itemCount: _imageList.length,
              pagination: new SwiperPagination(),
              // control: new SwiperControl(),
            ),
          )
        ],
      ),
    );
  }
}
