import 'package:flutter/material.dart';

class EmailSignUpPage extends StatefulWidget {
  const EmailSignUpPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EmailSignUpState();
}

class _EmailSignUpState extends State<EmailSignUpPage> {
  late TextEditingController _email;
  late TextEditingController _password;
  late TextEditingController _password2;
  final GlobalKey<FormState> _formKey = GlobalKey();


  @override
  void initState() {
    super.initState();
    _email = TextEditingController(text: '');
    _password = TextEditingController(text: '');
    _password2 = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
          title: Container(
              margin: const EdgeInsets.only(top: 9),
              child: const Text('이메일로 회원가입')),
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

      body: Form(
          key: _formKey,
          child: ListView(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
              children: [
                // 이메일 인증
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '이메일',
                        style: TextStyle(
                          color: Color.fromRGBO(134, 142, 150, 1.0),
                          fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                          fontSize: 12,
                        ),
                      ),

                      Container(
                          margin: const EdgeInsets.only(top: 4),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextFormField(
                            controller: _email,
                            validator: (value) =>
                            (value?.trim()) == null ? "이메일을 입력 해 주세요" : null,
                            decoration: const InputDecoration(
                                hintText: '이메일을 입력해주세요.',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(206, 212, 218, 1.0),
                                  fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                                  fontSize: 14,
                                ),
                                border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1.0)), borderRadius: BorderRadius.all(Radius.circular(8))),
                            ),
                          ),
                      ),
                    ],
                  ),
                ),

                // 비밀번호 입력
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '비밀번호',
                        style: TextStyle(
                          color: Color.fromRGBO(134, 142, 150, 1.0),
                          fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                          fontSize: 12,
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: TextFormField(
                          controller: _password,
                          validator: (value) =>
                          (value?.trim().isEmpty == true) ? '영문/숫자/특수문자 혼합 8~20자 입니다.' : null,
                          decoration: const InputDecoration(
                              errorText: '영문/숫자/특수문자 혼합 8~20자 입니다.',
                              hintText: '영문/숫자/특수문자 혼합 8~20자',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(206, 212, 218, 1.0),
                                fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1.0)), borderRadius: BorderRadius.all(Radius.circular(8))),
                          ),

                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: TextFormField(
                          controller: _password2,
                          validator: (value) =>
                          (value?.trim()) == null ? '비밀번호가 일치하지 않습니다.' : null,
                          decoration: const InputDecoration(
                              hintText: '비밀번호를 확인해주세요',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(206, 212, 218, 1.0),
                                fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1.0)), borderRadius: BorderRadius.all(Radius.circular(8))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // 별명
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '별명',
                        style: TextStyle(
                          color: Color.fromRGBO(134, 142, 150, 1.0),
                          fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                          fontSize: 12,
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: TextFormField(
                          controller: _password2,
                          validator: (value) =>
                          (value?.trim()) == null ? '사용중인 별명입니다.' : null,
                          decoration: const InputDecoration(
                              hintText: '2~16자 이내로 작성하세요',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(206, 212, 218, 1.0),
                                fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1.0)), borderRadius: BorderRadius.all(Radius.circular(8))),
                          ),
                        ),
                      )

                    ],
                  ),
                ),

                // 약관 동의
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '약관동의',
                        style: TextStyle(
                          color: Color.fromRGBO(134, 142, 150, 1.0),
                          fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                          fontSize: 12,
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: TextFormField(
                          controller: _email,
                          validator: (value) =>
                          (value?.trim()) == null ? "이메일을 입력 해 주세요" : null,
                          decoration: const InputDecoration(
                              hintText: '이메일을 입력해주세요.',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(206, 212, 218, 1.0),
                                fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1.0)), borderRadius: BorderRadius.all(Radius.circular(8)))
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // 초대 코드
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '초대코드 입력 (선택)',
                        style: TextStyle(
                          color: Color.fromRGBO(134, 142, 150, 1.0),
                          fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                          fontSize: 12,
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(top: 4),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: TextFormField(
                          controller: _email,
                          decoration: const InputDecoration(
                              hintText: '초대코드 입력',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(206, 212, 218, 1.0),
                                fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(222, 226, 230, 1.0)), borderRadius: BorderRadius.all(Radius.circular(8))),
                          ),
                        ),
                      )
                    ],
                  ),
                ),

                // 완료 버튼
              ],
          ),
      )
    );
  }
}