import 'package:flutter/material.dart';
import 'profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Color(0xdfacd5f6),
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            iconTheme: IconThemeData(color: Colors.black),
            leading: Icon(Icons.home, size: 30),
            title: Text(
              "Project Uji Coba",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            titleSpacing: 0,
            actions: const [
              Icon(Icons.menu, size: 30),
            ],
          ),
          body: ListView.builder(
            itemCount: Profile.nama.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    foregroundImage: NetworkImage(
                        "https://lh3.googleusercontent.com/proxy/esjjzRYoXlhgNYXqU8Gf_3lu6V-eONTnymkLzdwQ6F6z0MWAqIwIpqgq_lk4caRIZF_0Uqb5U8NWNrJcaeTuCjp7xZlpL48JDx-qzAXSTh00AVVqBoT7MJ0259pik9mnQ1LldFLfHZUGDGY=w1200-h630-p-k-no-nu"),
                  ),
                  title: Text(
                    '${Profile.nama[index]}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  subtitle: Text(
                    'Jabatan : ${Profile.jabatan[index]}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              );
            },
          )),
    );
  }
}
