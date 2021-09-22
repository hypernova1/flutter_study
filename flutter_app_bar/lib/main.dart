import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Appbar icon menu'),
          centerTitle: true,
          elevation: 0,
          actions: [
            // AppBar 오른쪽에 배치되는 버튼들
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                print('shopping cart');
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                print('search');
              },
            ),
          ],
        ),
        drawer: Drawer(
          // leading 위치에 생성됨
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: const CircleAvatar(
                  backgroundImage: AssetImage('assets/a.jpg'),
                  backgroundColor: Colors.white,
                ),
                accountEmail: const Text('hypemova@gmail.com'),
                accountName: const Text('Sam'),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/a.jpg'),
                    backgroundColor: Colors.white,
                  ),
                  // CircleAvatar(
                  //   backgroundImage: AssetImage('assets/a.jpg'),
                  //   backgroundColor: Colors.white,
                  // )
                ],
                onDetailsPressed: () {
                  print('onpress');
                },
                decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40)),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[850],
                ),
                title: const Text('home'),
                onTap: () {
                  print('home');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[850],
                ),
                title: const Text('Setting'),
                onTap: () {
                  print('setting');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[850],
                ),
                title: const Text('Q & A'),
                onTap: () {
                  print('qna');
                },
                trailing: const Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: Builder(
          builder: (BuildContext ctx) { // 기존의 context 를 무시하고 새로운 context 를 생성한다.
            return Center(
              child: FlatButton(
                child: const Text(
                  'data',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  Scaffold.of(ctx).showSnackBar(const SnackBar(
                    content: Text('Hello'),
                  ));
                },
              ),
            );
          },
        ));
  }
}
