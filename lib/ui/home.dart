import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xff344e81),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '아임포트 테스트',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              const SizedBox(height: 30),
              const Text(
                '아임포트 플러터 모듈 테스트 화면입니다.',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                '아래 버튼을 본인인증 테스트를 진행해주세요.',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                icon: const Icon(
                  Icons.people,
                  color: Colors.white,
                  size: 25,
                ),
                label: const Text(
                  '본인인증 테스트',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Get.toNamed('/certification');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
