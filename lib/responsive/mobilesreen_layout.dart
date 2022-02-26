import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widget/mobile/mobilefooter.dart';
import 'package:google_clone/widget/search.dart';
import 'package:google_clone/widget/web/search_buttons.dart';
import 'package:google_clone/widget/web/translation_button.dart';
import 'package:google_clone/widget/web/webfooter.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
       
            appBar: AppBar(
              backgroundColor: backgroundColor,
              elevation: 0,
              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.grey,
                  )),
              title: SizedBox(width: size.width*0.9,
                child: const DefaultTabController(
                    length: 2,
                    child: TabBar(labelColor:blueColor ,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: blueColor,
                      tabs: [
                      Tab(
                        text: 'all',

                      ),
                      Tab(text: 'Images',),
                    ])),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('lib/assets/more-apps.svg',
                      color: primaryColor),
                ),
                const SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0).copyWith(
                    right: 10,
                  ),
                  child: MaterialButton(
                    color: const Color(0xff1A73EB),
                    onPressed: () {},
                    child: const Text(
                      'SignIn',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.25,
                  ),
                  Expanded(
                      child: Column(
                  
                    children: [
                      Column(
                        children:  [
                          Search(),
                          SizedBox(
                            height: 10,
                          ),
                          SearchButtons(),
                          SizedBox(
                            height: 20,
                          ),
                          TranslationsButtons(),
                        ],
                      ),
                      const MobileFooter()
                    ],
                  ))
                ],
              ),
            ));
  }
}
