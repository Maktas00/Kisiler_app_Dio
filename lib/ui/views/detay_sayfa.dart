import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi_boot/data/entity/kisiler.dart';
import 'package:kisiler_uygulamasi_boot/ui/cubit/detay_sayfa_cubit.dart';

class DetaySayfa extends StatefulWidget {
  Kisiler kisi;
  DetaySayfa({required this.kisi});

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  var tfKisiAd=TextEditingController();
  var tfKisiTel=TextEditingController();


  @override
  void initState() {
    super.initState();
    var kisi=widget.kisi;
    tfKisiAd.text=kisi.kisi_ad;
    tfKisiTel.text=kisi.kisi_tel;
  }

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detay Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAd,decoration: InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfKisiTel,decoration: InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: (){
               context.read<DetaySayfaCubit>().krepo.guncelle(int.parse(widget.kisi.kisi_id), tfKisiAd.text,tfKisiTel.text);


              }, child: Text("GÜNCELLE")),
            ],
          ),
        ),

      ),
    );
  }
}
