import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screen/search_screen.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            'lib/assets/uggel.png',
            height: size.height * 0.1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          'Uggle',
          style: TextStyle(fontSize: 40),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: size.width>768?
           size.width * 0.4: size.width*0.9,
          child: TextFormField(
            onFieldSubmitted: (query){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen(searchQuery: query, start:'0')));
              
            },
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: searchBorder),
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'lib/assets/search-icon.svg',
                  color: searchBorder,
                  width: 1,
                  height: 1,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('lib/assets/mic-icon.svg'),
              ),
            ),
          ),
         
        ), const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
