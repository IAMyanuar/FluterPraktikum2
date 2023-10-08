import 'package:flutter/material.dart';
import 'Produk_Detail.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);
  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  //meginisiasi controller untuk mengendalikan TextField yang digunakan dalam form.
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //widget(method) form input data
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHargaProduk(),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }


  _textboxKodeProduk() {
    return TextField(
      //mengambil data dari form lalu disimpan ke dalam textboxcontroller()
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _kodeProdukTextboxController,
    );
  }

  _textboxNamaProduk() {
    return TextField(
      //mengambil data dari form lalu disimpan ke dalam textboxcontroller()
      decoration: const InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController,
    );
  }

  _textboxHargaProduk() {
    return TextField(
      //mengambil data dari form lalu disimpan ke dalam textboxcontroller()
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _hargaProdukTextboxController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
      // ketika tombol simpan di klik
        onPressed: () {
          //Mengambil nilai dari form input menggunakan .text
          String kodeProduk = _kodeProdukTextboxController.text;
          String namaProduk = _namaProdukTextboxController.text;
          //parsing dari String ke int
          int harga = int.parse(_hargaProdukTextboxController.text);
          // pindah ke halamanProduk Detail dan mengirim data
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProdukDetail(
                    kodeProduk: kodeProduk,
                    namaProduk: namaProduk,
                    harga: harga,
                  )));
        },
        child: const Text('Simpan'));
  }
}
