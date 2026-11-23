import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('หน้าแรก')),
      body: Column(
        children: [
          Text("dsds"),
          Text("dsds"),
          Text("dsds"),
          Text("dsds"),
          Text("dsds"),
          Row(
            children: [Icon(Icons.money), Icon(Icons.sunny), Icon(Icons.cloud)],
          ),
          Row(
            children: [
              Image.asset(
                "assets/powerpof.jpg",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ), //ภาพเต็มกรอบ
              ClipOval(
                //ทำภาพเป็นวงกลม
                child: Image.network(
                  //ภาพจากลิงก์
                  "https://www.imdb.com/title/tt0677591/",

                  width: 200,
                  height: 200,
                  fit: BoxFit.cover, //ภาพเต็มกรอบ
                ),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(
                //ปุ่มทึบ
                onPressed: () => {},
                child: Text("press"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, //สีพื้นหลังปุ่ม
                  foregroundColor: Colors.white, //สีข้อความไอคอน
                ),
              ),
              SizedBox(
                //space
                width: 200,
                height: 100,
              ),
              Expanded(
                child: OutlinedButton(
                  onPressed: () => {},
                  child: Text("Cancle "),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.blueAccent,
                    backgroundColor: Colors.lightBlueAccent[50],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
