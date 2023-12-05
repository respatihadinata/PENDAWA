import 'package:flutter/material.dart';
import 'package:pendawa/editprofile.dart';
import 'package:pendawa/home.dart';
import 'package:pendawa/pendataan.dart';
import 'package:pendawa/pengajuanadmin.dart';
import 'package:pendawa/settings.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          } else if (index == 1) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PengajuanAdminPage()));
          } else if (index == 2) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DataPage()));
          }
        },
      ),
      body: ListView(
        children: [
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
                                builder: (context) => HomePage()));
                      },
                    )
                  ],
                ),
              ),
              Container(
                child: Flexible(
                  fit: FlexFit.tight,
                  child: Text(
                    'Profile',
                    style: primaryTextstyle.copyWith(
                        fontSize: 18, fontWeight: bold),
                  ),
                ),
              ),
            ],
          ),
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
                        'Nama Lengkap : Respati Hadinata',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Jenis Kelamin : Laki - Laki',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'No Handpone : 082278859597',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Tanggal Lahir : 17-06-2004',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Nama Ibu Kandung : Rosita',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Nama Ayah Kandung : Hadi Handoyo',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Alamat Sekarang : Anggrek Mas 2',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Kewarganegaraan : WNI',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Agama : Islam',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Pendidikan Terakhir : S3',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Pekerjaan : Manager Developer',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Status Perkawinan : Belum',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'No KTP : 123',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'No Kartu Keluarga : 123',
                        style: whiteTextstyle.copyWith(fontSize: 12),
                      ),
                      Text(
                        'Deskripsi : ',
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
                                      const EditProfilePage()));
                        },
                        child: Text(
                          'Edit Profile',
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
