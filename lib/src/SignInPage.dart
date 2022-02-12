import 'dart:developer';

import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with TickerProviderStateMixin {
  // 애니메이션 효과 필요

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
            margin: const EdgeInsets.only(top: 9),
            child: const Text('로그인')),
        leading: IconButton(
          iconSize: 24,
          color: Colors.grey,
          padding: const EdgeInsets.only(top: 9),
          icon: const Icon(Icons.arrow_back_ios, size: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ),

      body: Column(
        children: [
          Stack(
            children: [
              // 헤더
              Positioned(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                  height: 284,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('background.jpeg'),
                      )
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 44),
                        child: const Text.rich(
                            TextSpan(
                                text: '그린캣 소프트의\n',
                                children: [
                                  TextSpan(
                                      text: '다양한 소식',
                                      style: TextStyle(
                                        fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Bold.ttf',
                                        fontWeight: FontWeight.w900,
                                        decoration: TextDecoration.underline,
                                      ),
                                  ),

                                  TextSpan(text: '을 받아보세요!'),
                                ]
                            ),

                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.95),
                              fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                              fontSize: 18,
                            )

                        )
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: const Text(
                          '마음을 움직이는 더 좋은 정보, 그린캣 소프트',
                          style: TextStyle(
                            color: Color.fromRGBO(52, 58, 64, 1.0),
                            fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                            fontSize: 12,
                          )
                        ),
                      )
                    ],
                  ),
                ),
              ),

              // 바디
              Container(
                margin: const EdgeInsets.only(top: 246),
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 255, 255, 1.0),
                          border: Border.all(color: const Color.fromRGBO(196, 196, 196, 1.0), width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 48,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            log('구글');
                          },
                          child: const Text(
                            '구글로 계속하기',
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 0.54),
                                fontSize: 14,
                                fontFamily: "SpoqaHanSansNeo"
                            ),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(245, 229, 0, 0.85),
                          border: Border.all(style: BorderStyle.none),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 48,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            log('카카오');
                          },
                          child: const Text(
                            '카카오톡으로 계속하기',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "SpoqaHanSansNeo"
                            ),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(80, 193, 55, 1.0),
                          border: Border.all(style: BorderStyle.none),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 48,
                        margin: const EdgeInsets.only(bottom: 10),
                        child: TextButton(
                          onPressed: () {
                            log('네이버');
                          },
                          child: const Text(
                            '네이버로 계속하기',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "SpoqaHanSansNeo"
                            ),
                          ),
                        ),
                      ),
                    ]
                ),
              ),
            ],
          ),

          // 푸터
          Expanded(
            flex: 1,
            child: Column(
              verticalDirection: VerticalDirection.up,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 안내 버튼
                TextButton(
                    onPressed: () {
                      log('로그인 오류 안내');
                    },
                    child: Container(
                      height: 20,
                      margin: const EdgeInsets.only(bottom: 48),
                      child: const Text(
                        '로그인이 잘 안되시나요?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color.fromRGBO(173, 181, 189, 1.0),
                          fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                ),

                // 로그인 & 회원가입 버튼
                Container(
                  height: 15,
                  margin: const EdgeInsets.only(bottom: 48),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/emailSignIn');
                          },
                          child: const Text(
                            '이메일로 로그인',
                            style: TextStyle(
                              color: Color.fromRGBO(73, 80, 87, 1.0),
                              fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                              fontSize: 12,
                            ),
                          ),
                      ),

                      Container(
                        width: 1,
                        height: 15,
                        color: const Color.fromRGBO(206, 212, 218, 1.0),
                        margin: const EdgeInsets.only(left: 24, right: 24),
                      ),

                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/emailSignUp');
                          },
                          child: const Text(
                            '이메일로 회원가입',
                            style: TextStyle(
                              color: Color.fromRGBO(73, 80, 87, 1.0),
                              fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                              fontSize: 12,
                            ),
                          ),
                      ),

                      // etc...
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )
    );
  }

}