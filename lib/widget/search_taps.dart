

import 'package:flutter/material.dart';
import 'package:google_clone/widget/search_tap.dart';

class SearchTaps extends StatelessWidget {
  const SearchTaps({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 55,
    child: Padding(
      padding: const EdgeInsets.only(left:10),
      child: Row(crossAxisAlignment: CrossAxisAlignment.end,
        children:const [
          SearchTab(
            isActive: true,
            text: 'all',
            icon: Icons.search,
          ),
          SizedBox(width: 20,),
           SearchTab(
          
            text: 'Images',
            icon: Icons.image,
          ),
          SizedBox(width: 20,),
           SearchTab(
           
            text: 'Map',
            icon: Icons.map,
          ),
          SizedBox(width: 20,),
           SearchTab(
            
            text: 'News',
            icon: Icons.article,
          ),
          SizedBox(width: 20,),
           SearchTab(
         
            text: 'Shopping',
            icon: Icons.shop,
          ),
          SizedBox(width: 20,),
           SearchTab(
          
            text: 'More',
            icon: Icons.more_vert,
          ),
          SizedBox(width: 20,),
        ],
      ),
    ),
      
    );
  }
}