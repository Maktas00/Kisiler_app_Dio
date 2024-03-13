import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi_boot/ui/cubit/kayit_sayfa_cubit.dart';

class KayitSayfa extends StatefulWidget {
  const KayitSayfa({super.key});

  @override
  State<KayitSayfa> createState() => _KayitSayfaState();
}

class _KayitSayfaState extends State<KayitSayfa> {
  var tfKisiAd=TextEditingController();
  var tfKisiTel=TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kayıt Sayfa"),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0,right: 50.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(controller: tfKisiAd,decoration: InputDecoration(hintText: "Kişi Ad"),),
              TextField(controller: tfKisiTel,decoration: InputDecoration(hintText: "Kişi Tel"),),
              ElevatedButton(onPressed: (){
               context.read<KayitSayfaCubit>().kaydet(tfKisiAd.text, tfKisiTel.text);

              }, child: Text("KAYDET")),
            ],
          ),
        ),

      ),
    );
  }
}
