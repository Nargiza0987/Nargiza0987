import 'package:counterapp_1_2/counterapp2.dart';
import 'package:flutter/material.dart';
import 'Counter2_Page.dart';

//Статусту сактаган виджеттер (статустук)
// тиркеме иштеп жатканда алардын касиеттерин динамикалык түрдө өзгөртө алат.
//Жана StatefulWidget классы абалды сактай турган виджеттерди билдирет.
class Counter1Page extends StatefulWidget {
  const Counter1Page({super.key});

  @override
  State<Counter1Page> createState() => _Counter1PageState();
}

class _Counter1PageState extends State<Counter1Page> {
  //логикасы жазылды
  int ozgoruuchuSan = 0;
  void kemit() {
    //кемит функциясы
    setState(() {}); //сетстейтти бербесек ui -да  логика иштебейт
    ozgoruuchuSan--;
    print('$ozgoruuchuSan');
  }

  void kosh() {
    //кошуу функциясы
    ozgoruuchuSan++;
    setState(() {}); //сетстейтти бербесек ui -да  логика иштебейт
    print('$ozgoruuchuSan');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //экранды ак туско алып даярдап берет
      appBar: AppBar(
        //бул экрандын усту тарабы
        centerTitle: true, //тексти центрге жылдырып берет
        title: const Text('ТАПШЫРМА 1'), // текст чыгарат
      ),
      body: Center(
        //body -- аппбардын ылдый калган денеси,Center--баарын центрде берет
        child: Column(
          // Column--бул контейнерди тикесинен (верктикально)чыгарат
          mainAxisAlignment:
              MainAxisAlignment.center, //экрандын центрне жылат ичиндегидер
          children: [
            //бул лист тибинде алат ичинде контейнер бар
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7), //авальдын радиусу
                color: Colors.black12,
              ),
              height: 50, //бийиктиги
              width: 250, //туурасы
              child: Text(
                //контейнердин ичине текст алды
                'сан:$ozgoruuchuSan',
                textAlign: TextAlign.center, //контейнердин ичиндеги центр
                style: const TextStyle(fontSize: 30), //текстин стили(размери)
              ),
            ),
            const SizedBox(
              //вертикально бохтордун аралыгы
              height: 50,
            ),
            Row(
              //(- жана + ) кнопкаларын горизонтально чыгарат
              mainAxisAlignment:
                  MainAxisAlignment.center, //кнопка боттонун центрге алып берет
              children: [
                //Row дагы лист тибин алат мында эки боттон алган
                ElevatedButton(
                  //кемуу боттону
                  onPressed: kemit, // нажать
                  child: const Icon(Icons.remove), // иконка -
                ),
                const SizedBox(
                  //эки боттондун аралыгын алыстатты горизантальны
                  width: 25,
                ),
                ElevatedButton(
                  //кошуу боттону
                  onPressed: kosh, //нажать
                  child: const Icon(Icons.add), //иконка +
                ),
              ],
            )
          ],
        ),
      ),
      //бул иконка
      //экран листать этилгенде да местасында турат.
      // мунун мумкун болгон местасы экрандын ылдый-он жагы
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //иконканы нажатие
          Navigator.push(
            //навигация
            context,
            MaterialPageRoute(
              builder: (context) =>
                  Counter2Page(syrttanKelgenSan: ozgoruuchuSan),
            ),
          );
        },
        child: const Icon(Icons.add), // иконка
      ),
    );
  }
}
