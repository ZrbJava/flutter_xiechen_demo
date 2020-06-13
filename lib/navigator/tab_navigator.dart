import 'package:flutter/material.dart';
import 'package:xiechen_app/pages/home_page.dart';
import 'package:xiechen_app/pages/my_page.dart';
import 'package:xiechen_app/pages/search_page.dart';
import 'package:xiechen_app/pages/travel_page.dart';

class TabNavigator extends StatefulWidget {
  @override
  _TabNavigatorState createState() => _TabNavigatorState();
}

class _TabNavigatorState extends State<TabNavigator> {
  final PageController _controller = PageController(initialPage: 0);

  final _defaultColor = Colors.grey; //默认颜色
  final _activeColor = Colors.blue; //激活颜色
  int _currentIndex = 0; //当前缩索引

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(), //禁止滑动
        onPageChanged: (index){
          setState(() {
            _currentIndex = index;
          });
        },
        controller: _controller,
        children: <Widget>[HomePage(), SearchPage(), TravelPage(), MyPage()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          print(index);
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [ 
          BottomNavigationBarItem(
            title: Text(
              '首页',
              style: TextStyle(
                  color: _currentIndex != 0 ? _defaultColor : _activeColor),
            ),
            icon: Icon(
              Icons.home,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.home,
              color: _activeColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '搜索',
              style: TextStyle(
                  color: _currentIndex != 1 ? _defaultColor : _activeColor),
            ),
            icon: Icon(
              Icons.search,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.search,
              color: _activeColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '旅拍',
              style: TextStyle(
                  color: _currentIndex != 2 ? _defaultColor : _activeColor),
            ),
            icon: Icon(
              Icons.camera_alt,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.camera_alt,
              color: _activeColor,
            ),
          ),
          BottomNavigationBarItem(
            title: Text(
              '我的',
              style: TextStyle(
                  color: _currentIndex != 3 ? _defaultColor : _activeColor),
            ),
            icon: Icon(
              Icons.account_circle,
              color: _defaultColor,
            ),
            activeIcon: Icon(
              Icons.account_circle,
              color: _activeColor,
            ),
          )
        ],
      ),
    );
  }
}
