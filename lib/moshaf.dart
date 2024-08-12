import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/sura.dart';
import 'package:islami/suradetails.dart';

class moshaf extends StatefulWidget{
  @override
  State<moshaf> createState() => _moshafState();
}

class _moshafState extends State<moshaf> {
  List<String> suraNumber = ['7','286','200','176','120','165','206','75','129','109','123','111','43','52','99','128','111','110','98','135','112','78','118','64','77','227','93','88',
    '69','60','34','30','73','54','45','83','182','88','75','85','54','53','89','59','37','35','38','29','18','45','60','49','62','55','78','96','29','22','24','13','14','11','11','18','12','12','30','52','52',
    '44','28','28','20','56','40','31','50','40','46','42','29','19','36','25','22','17','19','26','30','20','13','56','11','8','5','19','5','8','8','11','11','8','3','9','5','4','6','3','6','3','5','4','5','6'
  ];
  List<String> suraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              margin: EdgeInsets.only(
                top: 68,
              ),
              width: double.infinity,
                child: Image.asset('assets/images/quran_header.png',height: 227,)),
            Divider(


               // color: Color(0xffB7935F),
              thickness: 3,
            ),
            Center(
              child: Text('sura name'.tr(),



                  style:Theme.of(context).textTheme.bodySmall),
            ),

            Divider(


              // color: Color(0xffB7935F),
              thickness: 3,
            ),
            Expanded(
              child: ListView.builder(

                  itemCount: suraNames.length,
                  itemBuilder: (context,index){
                    return Center(child: InkWell(

                      onTap: (){

                        Navigator.pushNamed(context, suradetails.routeName,
                            arguments:sura(name: suraNames[index], index: index));
                        setState(() {

                        });
                      },
                      child: Text(' سورة ${suraNames[index]}'
                        ,
                        style:Theme.of(context).textTheme.bodySmall?.copyWith(
                          height: 1.7
                        )),
                    ));
                  }
              ),
            )


          

          ],
        );
    

  }
}