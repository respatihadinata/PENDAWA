import 'package:flutter/material.dart';
import 'package:pendawa/homeadmin.dart';
import 'package:pendawa/nextpengajuanadmin.dart';
import 'package:pendawa/pendataanadmin.dart';
import 'package:pendawa/settings.dart';

class MyPengajuanAdmin extends StatelessWidget {
  const MyPengajuanAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PengajuanAdminPage(),
    );
  }
}

class PengajuanAdminPage extends StatelessWidget {
  const PengajuanAdminPage({super.key});

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
          Row(
            children: [
              Container(
                height: 50,
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
                ),
              ),
              Container(
                child: Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    'Riwayat Pengajuan Surat Warga RT 01',
                    style: primaryTextstyle.copyWith(
                        fontSize: 18, fontWeight: bold),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/pengajuan1.png')),
                                borderRadius: BorderRadius.circular(0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 5))),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pembuatan Kartu Keluarga',
                                style: primaryTextstyle.copyWith(
                                    fontSize: 13, fontWeight: bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.timer, color: primaryButtonColor),
                                  SizedBox(width: 5),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Text(
                                      '21 Minutes ago',
                                      style: primaryTextstyle.copyWith(
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengajuan Pembuatan Surat Kartu Keluarga.',
                          style: primaryTextstyle.copyWith(
                              fontSize: 13, fontWeight: bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Nama Respati Hadinata, ingin mengajukan Pembuatan Kartu Keluarga',
                          style: primaryTextstyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 30,
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: buttonColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const NextPengajuanAdminPage()));
                            },
                            child: Text(
                              'Dalam Proses',
                              style: primaryTextstyle.copyWith(
                                  fontWeight: bold, fontSize: 12),
                            ),
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/pengajuan2.png')),
                                borderRadius: BorderRadius.circular(0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 5))),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pembuatan KTP',
                                style: primaryTextstyle.copyWith(
                                    fontSize: 13, fontWeight: bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.timer, color: primaryButtonColor),
                                  SizedBox(width: 5),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Text(
                                      '1 Hours ago',
                                      style: primaryTextstyle.copyWith(
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengajuan Pembuatan Kartu Tanda Penduduk.',
                          style: primaryTextstyle.copyWith(
                              fontSize: 13, fontWeight: bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Nama Respati Hadinata, ingin mengajukan Pembuatan Kartu Tanda Penduduk, karena KTP sebelumnya Hilang.',
                          style: primaryTextstyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 30,
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: buttonColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PengajuanAdminPage()));
                            },
                            child: Text(
                              'Dalam Proses',
                              style: primaryTextstyle.copyWith(
                                  fontWeight: bold, fontSize: 12),
                            ),
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/pengajuan3.png')),
                                borderRadius: BorderRadius.circular(0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 5))),
                      ),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pembuatan Surat Kelahiran',
                                style: primaryTextstyle.copyWith(
                                    fontSize: 13, fontWeight: bold),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.timer, color: primaryButtonColor),
                                  SizedBox(width: 5),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    child: Text(
                                      '1 Days ago',
                                      style: primaryTextstyle.copyWith(
                                          fontSize: 13),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 350,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pengajuan Pembuatan Surat Kelahiran.',
                          style: primaryTextstyle.copyWith(
                              fontSize: 13, fontWeight: bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Nama Putri, ingin mengajukan Pembuatan Surat Kelahiran, Anak ke 2 dari 2 bersaudara.',
                          style: primaryTextstyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        SizedBox(
                          height: 30,
                          width: 150,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: buttonColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PengajuanAdminPage()));
                            },
                            child: Text(
                              'Selesai',
                              style: primaryTextstyle.copyWith(
                                  fontWeight: bold, fontSize: 12),
                            ),
                          ),
                        ),
                        SizedBox(height: 20)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
