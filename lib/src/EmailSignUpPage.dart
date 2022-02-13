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
  late bool _isAll;
  late bool _isAge;
  late bool _isSecret;
  late bool _isAdd;
  late bool _isPromise;


  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
    _password2 = TextEditingController();
    _isAge = false;
    _isSecret = false;
    _isAdd = false;
    _isAll = false;
    _isPromise = false;
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _password2.dispose();
    super.dispose();
  }

  void selectAll() {
    _isAge = _isAll;
    _isSecret = _isAll;
    _isAdd = _isAll;
    _isPromise = _isAll;
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
                // 이메일 인증 폼
                Form(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          '이메일',
                          style: TextStyle(
                            color: Color.fromRGBO(134, 142, 150, 1.0),
                            fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                            fontSize: 12,
                          ),
                        ),

                        // 이메일 입력란
                        Container(
                          margin: const EdgeInsets.only(top: 4),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: TextFormField(
                            controller: _email,
                            validator: (value) {
                              if(true) {
                                return '이메일을 입력 해 주세요.';
                              }
                            },
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

                        // 이메일 인증 버튼
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          height: 48,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(241, 243, 245, 1.0),
                            borderRadius: BorderRadius.circular(8.0),
                            border: const Border(
                              top: BorderSide(color: Color.fromRGBO(206, 212, 218, 1.0)),
                              bottom: BorderSide(color: Color.fromRGBO(206, 212, 218, 1.0)),
                              left: BorderSide(color: Color.fromRGBO(206, 212, 218, 1.0)),
                              right: BorderSide(color: Color.fromRGBO(206, 212, 218, 1.0)),
                            ),
                          ),
                          child: const TextButton(
                            onPressed: null,
                            child: Text(
                              '이메일 인증하기',
                            ),

                          ),
                        ),
                      ],
                    ),
                  ),
                  //
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
                          decoration: const InputDecoration(
                              hintText: '영문/숫자/특수문자 혼합 8~20자',
                              hintStyle: TextStyle(
                                color: Color.fromRGBO(206, 212, 218, 1.0),
                                fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                                fontSize: 14,
                              ),
                              border: OutlineInputBorder(borderSide: BorderSide(color: Color.fromRGBO(229, 229, 229, 1.0)), borderRadius: BorderRadius.all(Radius.circular(8))),
                          ),
                          validator: (value) {
                            if (value!.length > 1) {
                              return '영문/숫자/특수문자 혼합 8~20자 입니다.';
                            }
                            return null;
                          },

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
                      // 약관 동의 체크박스
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: const Color.fromRGBO(196, 196, 196, 1.0), width: 1),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          physics: null,
                          children: [
                            CheckboxListTile(
                              shape: const Border(bottom: BorderSide(color: Colors.black)),
                              title: const Text('약관동의'),
                              value: _isAll,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _isAll = newValue!;
                                  selectAll();
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: const Text('만 14세 이상입니다. (필수)'),
                              value: _isAge,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _isAge = newValue!;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: const Text('이용약관 (필수)'),
                              value: _isPromise,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _isPromise = newValue!;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: const Text('개인정보수집 및 이용약관 동의 (필수)'),
                              value: _isSecret,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _isSecret = newValue!;
                                });
                              },
                            ),

                            CheckboxListTile(
                              title: const Text('광고성 정보 수신 전체 동의 (선택)'),
                              value: _isAdd,
                              onChanged: (bool? newValue) {
                                setState(() {
                                  _isAdd = newValue!;
                                });
                              },
                            ),
                          ],
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
                Container(
                  margin: const EdgeInsets.only(top: 36),
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed: () {  },
                    child: const Text(
                      '회원가입 완료',
                      style: TextStyle(
                        color: Color.fromRGBO(206, 212, 218, 1.0),
                        fontFamily: 'SpoqaHanSansNeo/SpoqaHanSansNeo-Regular.ttf',
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
          ),
      )
    );
  }
}