import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iamport_flutter/iamport_certification.dart';
import 'package:iamport_flutter/model/certification_data.dart';

class Certification extends StatelessWidget {
  // 아임포트에서 제공하는 테스트 코드 (발급받은 번호로 변경 필요)
  static const String userCode = 'imp10391932';

  @override
  Widget build(BuildContext context) {
    return IamportCertification(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('아임포트 본인인증'),
        centerTitle: true,
        backgroundColor: const Color(0xff344e81),
      ),
      initialChild: const Center(
        child: Text('잠시만 기다려주세요...', style: TextStyle(fontSize: 18)),
      ),
      userCode: userCode,
      data: CertificationData(
        merchantUid: 'mid_${DateTime.now().millisecondsSinceEpoch}', // 주문번호
        company: '아임포트', // 회사명 또는 URL
        carrier: '', // 통신사
        name: '', // 이름
        phone: '', // 핸드폰번호
      ),
      callback: (Map<String, String> result) {
        // 본인인증 진행 후 실행됨
        Get.offNamed('/certification_result', arguments: result);
      },
    );
  }
}
