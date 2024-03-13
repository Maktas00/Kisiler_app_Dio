import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kisiler_uygulamasi_boot/data/repo/kisilerdao_repository.dart';
import 'package:kisiler_uygulamasi_boot/ui/cubit/kayit_sayfa_cubit.dart';

class DetaySayfaCubit extends Cubit<void>{
  DetaySayfaCubit():super(0);
  var krepo=KisilerDaoRepository();
  Future<void> guncelle(int kisi_id,String kisi_ad,String kisi_tel) async {
    await krepo.guncelle(kisi_id, kisi_ad, kisi_tel);
  }

}