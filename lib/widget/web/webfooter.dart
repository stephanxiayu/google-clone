import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widget/web/footer_text.dart';

class WebFooter extends StatelessWidget {
  const WebFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: footerColor,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              FooterText(title: 'About'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'Werbung'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'Business'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'How Search Works'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              FooterText(title: 'Privat'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'Datenschutz'),
              SizedBox(
                width: 10,
              ),
              FooterText(title: 'Setting'),
              SizedBox(
                width: 10,
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
