

import 'package:flutter/material.dart';
import 'package:google_clone/widget/web/language_text.dart';

class TranslationsButtons extends StatelessWidget {
  const TranslationsButtons({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children:const [
        Text('Google offered in:'), 
        SizedBox(width: 5),
        LanguageText(title: 'DE'),
        SizedBox(width: 5),
        LanguageText(title: 'EN'),
        SizedBox(width: 5),
        LanguageText(title: 'JP'),
        SizedBox(width: 5),
        LanguageText(title: 'CN'),
        SizedBox(width: 5),
        LanguageText(title: 'RU'),
        SizedBox(width: 5),
        LanguageText(title: 'KE'),
        SizedBox(width: 5),
        LanguageText(title: 'NK'),
        SizedBox(width: 5),
        LanguageText(title: 'ES'),
        SizedBox(width: 5),
        LanguageText(title: 'IA'),
      ],
      
    );
  }
}