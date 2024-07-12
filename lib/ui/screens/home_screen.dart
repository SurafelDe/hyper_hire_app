import 'package:flutter/material.dart';
import '../util/colors.dart';
import '../widgets/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightGray, //Colors.white,
        appBar: AppBar(
          title: const Text(
            'LOGO',
            style: TextStyle(
                color: Color(0xff5D5FEF),
                fontSize: 24,
                fontWeight: FontWeight.w500),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          toolbarHeight: 55,
          shadowColor: const Color(0xFFD9D9D9),
          surfaceTintColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          controller: controller,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const GradientSearchWidget(),
              const TopBanner(),
              TrendingItems(controller: controller),
              const SizedBox(height: 14),
              const TopUsers(),
              const Footer()
            ],
          ),
        ),
        bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffD7D7D7),
                  blurRadius: 10.7,
                  spreadRadius: 0,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                showUnselectedLabels: true,
                showSelectedLabels: true,
                selectedItemColor: Colors.black,
                unselectedItemColor: const Color(0xFFD9D9D9),
                selectedLabelStyle: const TextStyle(
                    fontFamily: 'NotoSansKR',
                    fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff1D1D1D)),
                unselectedLabelStyle: const TextStyle(
                    fontFamily: 'NotoSansKR',
                    fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xff1D1D1D)),
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/home.png',
                      width: 28,
                    ),
                    label: '홈',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/category.png',
                      width: 28,
                    ),
                    label: '카테고리',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Colors.white,
                    icon: Image.asset(
                      'assets/icons/people.png',
                      width: 28,
                    ),
                    label: '커뮤니티',
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/profile.png',
                      width: 28,
                    ),
                    label: '마이페이지',
                  ),
                ],
              ),
            )));
  }
}
