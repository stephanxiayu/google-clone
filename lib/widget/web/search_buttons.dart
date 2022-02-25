
import 'package:flutter/material.dart';
import 'package:google_clone/widget/web/searchbutton.dart';

class SearchButtons extends StatelessWidget {
  const SearchButtons({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:const [
SearchButton(title: 'Uggle Search'),
SizedBox(width: 10,),
SearchButton(title: 'I am feeling Lucky')
          ],
        )
      ],
    );
  }
}