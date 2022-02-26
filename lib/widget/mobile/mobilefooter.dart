

import 'package:flutter/material.dart';
import 'package:google_clone/widget/web/footer_text.dart';

class MobileFooter extends StatelessWidget {
  const MobileFooter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children:const [

FooterText(title: 'About'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'Werbung'),
              SizedBox(
                width: 5,
              ),
              FooterText(title: 'Business'),
              SizedBox(
                width: 5,
              ),
              FooterText(title: 'How Search Works'),
              SizedBox(
                width: 5,
              ),
              FooterText(title: 'Privat'),
              SizedBox(
                width: 5,
              ),
              FooterText(title: 'Datenschutz'),
              SizedBox(
                width: 5,
              ),
              FooterText(title: 'Setting'),
              SizedBox(
                width: 5,
              ),
      ],
      
    );
  }
}