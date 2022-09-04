import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/olde.dart';
import 'old_tile.dart';

class old extends StatelessWidget {
  const old({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final olds = Provider.of<List<olde>>(context);
    List olds = [
      olde(
          first: 'إِذا اعتادَ الفَتى خَوضَ المَنايا',
          second: 'فَأَهْوَنُ ما يَمُرُّ بِهِ الوُحولُ',
          resu: 'بحر الوافر'),
      olde(
          first: 'أفاطم مهلاً بعض هذا التدلل',
          second: 'وان كنت قد ازمعت صرمي فأجملي',
          resu: 'بحر الوافر'),
      olde(
          first: 'أتعشق مثل الربا والشجر',
          second: 'وتهدي الضياء لها يا قمر',
          resu: 'بحر الوافر'),
      olde(
          first: 'وأضحى يسحّ الماء عن كل فيقة ',
          second: 'يكبّ على الأذقان دوح الكنهبلِ',
          resu: 'بحر الوافر'),
      olde(
          first: 'وأضحى يسحّ الماء عن كل فيقة ',
          second: 'يكبّ على الأذقان دوح الكنهبلِ',
          resu: 'بحر الوافر'),
      olde(
          first: 'وأضحى يسحّ الماء عن كل فيقة ',
          second: 'يكبّ على الأذقان دوح الكنهبلِ',
          resu: 'بحر الوافر'),
      olde(
          first: 'وأضحى يسحّ الماء عن كل فيقة ',
          second: 'يكبّ على الأذقان دوح الكنهبلِ',
          resu: 'بحر الوافر'),
      olde(
          first: 'وأضحى يسحّ الماء عن كل فيقة ',
          second: 'يكبّ على الأذقان دوح الكنهبلِ',
          resu: 'بحر الوافر'),
    ];
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: olds.length,
          itemBuilder: (context, index) {
            return old_tile(oldes: olds[index]);
          },
        ),
      ),
    );
  }
}
