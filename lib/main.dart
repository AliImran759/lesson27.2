import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lesson27(),
    );
  }
}

class Lesson27 extends StatelessWidget {
  const Lesson27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 28,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                padding: EdgeInsets.only(right: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Создать аккаунт',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w700
                        ),
                        ),
                        SizedBox(
                        height: 41,
                      ),
                      Textcart(
                        text: 'Имя',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Имя',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textcart(
                        text: 'Фамилия',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Фамилия',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textcart(
                        text: 'Отчество',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Отчество',
                      ),
                      SizedBox(
                        height: 34,
                      ),
                      Text(
                        '_______________________________________________________',
                        style: TextStyle(
                          color: Color(0xffF2F2F2)
                        ),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      Textcart(
                        text: 'Логин',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Логин',
                        icon: Icon(Icons.person),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Textcart(
                        text: 'Пороль',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Textfield(
                        hintText: 'Пороль',
                        icon: Icon(Icons.lock),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 22, top: 55),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8507,
                          height: MediaQuery.of(context).size.height * 0.0591,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff22A2BD),
                                side: BorderSide.none,
                              ),
                              onPressed: () {},
                              child: Text(
                                'Сохранить',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffF2F2F2),
                                ),
                              )),
                        ),
                      ),
                    ]))
          ],
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  final String hintText;
  final Icon? icon; 
  const Textfield({
    Key? key,
    required this.hintText, this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8507,
      height: MediaQuery.of(context).size.height * 0.0591,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(12)),
            hintText: hintText,
            hintStyle: TextStyle(color: Color(0xff5B6975)),
            filled: true,
            fillColor: Color(0xffF2F2F2)),
      ),
    );
  }
}

class Textcart extends StatelessWidget {
  final String text;
  const Textcart({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.black,
      ),
    );
  }
}
