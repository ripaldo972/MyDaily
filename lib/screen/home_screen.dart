import 'package:flutter/material.dart';

void main() {
  runApp(MyDailyApp());
}

class MyDailyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyDaily',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyDaily'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Datang di MyDaily!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Berikut adalah aktivitas harian Anda:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  ActivityTile(activity: 'Olahraga Pagi'),
                  ActivityTile(activity: 'Membaca Buku'),
                  ActivityTile(activity: 'Belajar Flutter'),
                  ActivityTile(activity: 'Meeting Online'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tambahkan aksi untuk menambah aktivitas baru
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}

class ActivityTile extends StatelessWidget {
  final String activity;

  ActivityTile({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Icon(Icons.check_circle_outline, color: Colors.blue),
        title: Text(activity),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
