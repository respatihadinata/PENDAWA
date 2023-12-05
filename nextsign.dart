import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:pendawa/login.dart';
import 'package:pendawa/settings.dart';

class MyNextSign extends StatelessWidget {
  const MyNextSign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NextSignPage(),
    );
  }
}

class NextSignPage extends StatefulWidget {
  const NextSignPage({super.key});

  @override
  State<NextSignPage> createState() => _NextSignPageState();
}

class _NextSignPageState extends State<NextSignPage> {
  String filepath = '';
  String selectedGender = '';
  String selectedKewarganegaraan = '';
  String selectedPerkawinan = '';
  DateTime selectedDate = DateTime.now();

  void chooseFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        filepath = result.files.single.path!;
      });
      print('File yand dipilih: $filepath');
    } else {
      print('Pemilihan file dibatalkan');
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2101));

    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF1EFEF),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Text(
                  'Membuat Akun Baru',
                  style: textTextstyle.copyWith(fontSize: 30, fontWeight: bold),
                ),
                SizedBox(height: 1),
                Text(
                  'Aplikasi Pengelolaan Data Warga Tingkat RW Berbasis Mobile. Perumahan Mega Legenda',
                  style: secondaryTextstyle.copyWith(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Lengkap',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan Nama Lengkap',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Jenis Kelamin',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 'Laki - Laki',
                                      groupValue: selectedGender,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedGender = value!;
                                        });
                                      }),
                                  Text(
                                    'Laki - Laki',
                                    style:
                                        primaryTextstyle.copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(width: 30),
                              Row(
                                children: [
                                  Radio(
                                      value: 'Perempuan',
                                      groupValue: selectedGender,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedGender = value!;
                                        });
                                      }),
                                  Text(
                                    'Perempuan',
                                    style:
                                        primaryTextstyle.copyWith(fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No Handphone',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan Nomor Handphone',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanggal Lahir',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          _selectDate(context);
                        },
                        child: AbsorbPointer(
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Colors.grey,
                                    style: BorderStyle.solid)),
                            child: TextFormField(
                              controller: TextEditingController(
                                text: selectedDate
                                    .toLocal()
                                    .toString()
                                    .split(' ')[0],
                              ),
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Tanggal Lahir',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  suffixIcon: Icon(Icons.calendar_month),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16, vertical: 17)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Ibu Kandung',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan sesuai data',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Ayah Kandung',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan Sesuai data',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alamat Sekarang',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan Alamat Lengkap',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kewarganegaraan',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 0),
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 'WNI',
                                      groupValue: selectedKewarganegaraan,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedKewarganegaraan = value!;
                                        });
                                      }),
                                  Text(
                                    'WNI',
                                    style:
                                        primaryTextstyle.copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                              SizedBox(width: 30),
                              Row(
                                children: [
                                  Radio(
                                      value: 'WNA',
                                      groupValue: selectedKewarganegaraan,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedKewarganegaraan = value!;
                                        });
                                      }),
                                  Text(
                                    'WNA',
                                    style:
                                        primaryTextstyle.copyWith(fontSize: 13),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Agama',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan sesuai data',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pendidikan Terakhir',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan Pendidikan Terakhir',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pekerjaan',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan Pekerjaan Sekarang',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Status Perkawinan',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Container(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: 'Kawin',
                                      groupValue: selectedPerkawinan,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedPerkawinan = value!;
                                        });
                                      }),
                                  Text(
                                    'Kawin',
                                    style:
                                        primaryTextstyle.copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 'Tidak Kawin',
                                      groupValue: selectedPerkawinan,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedPerkawinan = value!;
                                        });
                                      }),
                                  Text(
                                    'Tidak Kawin',
                                    style:
                                        primaryTextstyle.copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: 'Cerai',
                                      groupValue: selectedPerkawinan,
                                      onChanged: (value) {
                                        setState(() {
                                          selectedPerkawinan = value!;
                                        });
                                      }),
                                  Text(
                                    'Cerai',
                                    style:
                                        primaryTextstyle.copyWith(fontSize: 13),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. KTP',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan sesuai data',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'No. Kartu Keluarga',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Masukkan sesuai data',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Kode Referral',
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey, style: BorderStyle.solid)),
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: Column(
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText:
                                      'Masukkan sesuai Kode yang diberikan',
                                  hintStyle:
                                      primaryTextstyle.copyWith(fontSize: 12),
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 16)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Upload Fotokopi KTP',
                          style: primaryTextstyle.copyWith(
                              fontSize: 15, fontWeight: bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Upload Foto Kartu Tanda Penduduk ( JPEG, JPG, PNG, PDF )',
                          style: primaryTextstyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.grey, style: BorderStyle.solid)),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                    onTap: chooseFile,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.file_upload,
                              color: primaryButtonColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Upload Foto KTP',
                            style: primaryTextstyle.copyWith(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Upload Fotokopi Kartu Keluarga',
                          style: primaryTextstyle.copyWith(
                              fontSize: 15, fontWeight: bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Upload Foto Kartu Keluarga ( JPEG, JPG, PNG, PDF )',
                          style: primaryTextstyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.grey, style: BorderStyle.solid)),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                    onTap: chooseFile,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.file_upload,
                              color: primaryButtonColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Upload Foto Kartu Keluarga',
                            style: primaryTextstyle.copyWith(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Upload Bukti Pendukung Lainnya (Jika Ada)',
                          style: primaryTextstyle.copyWith(
                              fontSize: 15, fontWeight: bold),
                        ),
                        SizedBox(height: 3),
                        Text(
                          'Upload Foto Bukti ( JPEG, JPG, PNG, PDF )',
                          style: primaryTextstyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Colors.grey, style: BorderStyle.solid)),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: InkWell(
                    onTap: chooseFile,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Icon(
                              Icons.file_upload,
                              color: primaryButtonColor,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Upload Foto Bukti Lainnya',
                            style: primaryTextstyle.copyWith(fontSize: 12),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deskripsi ( Keterangan Tambahan )",
                        style: primaryTextstyle.copyWith(
                            fontSize: 15, fontWeight: bold),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "*Jika tidak ada pilihan diatas, silakan di tulis Keterangan Tambahan dibawah.",
                        style: redTextstyle.copyWith(
                            fontSize: 13, fontWeight: bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: Colors.grey, style: BorderStyle.solid)),
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                'Masukkan Keterangan Tambahan ( Jika Ada ).',
                            hintStyle: primaryTextstyle.copyWith(fontSize: 12),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 16)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  height: 80,
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 40,
                          width: 200,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: primaryButtonColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()));
                            },
                            child: Text(
                              'KIRIM',
                              style: whiteTextstyle.copyWith(
                                  fontWeight: bold, fontSize: 15),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
