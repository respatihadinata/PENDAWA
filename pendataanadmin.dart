import 'package:flutter/material.dart';
import 'package:pendawa/homeadmin.dart';
import 'package:pendawa/pendataanwarga.dart';
import 'package:pendawa/pengajuanadmin.dart';
import 'package:pendawa/settings.dart';

class MyPendataanAdmin extends StatelessWidget {
  const MyPendataanAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PendataanAdminPage(),
    );
  }
}

class PendataanAdminPage extends StatelessWidget {
  const PendataanAdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DataPage(),
    );
  }
}

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1EFEF),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_home_screen), label: 'Pengajuan'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind), label: 'Pendataan'),
        ],
        unselectedItemColor: Colors.blue,
        onTap: (int index) {
          if (index == 0) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeAdminPage()));
          } else if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PengajuanAdminPage()));
          } else if (index == 2) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PendataanAdminPage()));
          }
        },
      ),
      body: ListView(
        children: [
          SizedBox(height: 10),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    icon: (Icon(Icons.arrow_back_outlined)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeAdminPage()));
                    },
                  )
                ],
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: MaterialButton(
                    child: Text(
                      'Data Kepala Keluarga RT 01',
                      textAlign: TextAlign.start,
                      style: primaryTextstyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeAdminPage()));
                    },
                  ),
                ),
                SizedBox(width: 70),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('images/nata.jpg')),
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: Colors.white,
                          style: BorderStyle.solid,
                          width: 5)),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [colorpath1, colorpath2],
                    stops: [0.3, 0.7],
                    begin: Alignment.centerLeft,
                    end: Alignment.topRight),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/nata.jpg')),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 5)),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: IconButton(
                            padding: EdgeInsets.fromLTRB(170, 0, 0, 0),
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_add, color: whiteColor)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hang Lekir, Blok 1A',
                        style: whiteTextstyle.copyWith(
                            fontSize: 13, fontWeight: bold),
                      ),
                      Text(
                        'Respati Hadinata',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Laki - Laki',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        '082278859597',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: whiteColor),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PendataanWargaPage()));
                        },
                        child: Text(
                          'Detail Keluarga',
                          style: primaryTextstyle.copyWith(
                              fontWeight: bold, fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [colorpath1, colorpath2],
                    stops: [0.3, 0.7],
                    begin: Alignment.centerLeft,
                    end: Alignment.topRight),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/janita.jpg')),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 5)),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: IconButton(
                            padding: EdgeInsets.fromLTRB(170, 0, 0, 0),
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_add, color: whiteColor)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hang Lekir, Blok 2A',
                        style: whiteTextstyle.copyWith(
                            fontSize: 13, fontWeight: bold),
                      ),
                      Text(
                        'Janita Arisna',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Perempuan',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        '082278859597',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: whiteColor),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PendataanWargaPage()));
                        },
                        child: Text(
                          'Detail Keluarga',
                          style: primaryTextstyle.copyWith(
                              fontWeight: bold, fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [colorpath1, colorpath2],
                    stops: [0.3, 0.7],
                    begin: Alignment.centerLeft,
                    end: Alignment.topRight),
                borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/adib.jpg')),
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 5)),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: IconButton(
                            padding: EdgeInsets.fromLTRB(170, 0, 0, 0),
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_add, color: whiteColor)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hang Lekir, Blok 3A',
                        style: whiteTextstyle.copyWith(
                            fontSize: 13, fontWeight: bold),
                      ),
                      Text(
                        'Adibtianto',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Laki - Laki',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        '082278859597',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: whiteColor),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PendataanWargaPage()));
                        },
                        child: Text(
                          'Detail Keluarga',
                          style: primaryTextstyle.copyWith(
                              fontWeight: bold, fontSize: 12),
                        ),
                      ),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
