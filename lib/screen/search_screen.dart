import 'package:flutter/material.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screen/searchheader.dart';
import 'package:google_clone/services/api_service.dart';
import 'package:google_clone/widget/search_footer.dart';
import 'package:google_clone/widget/search_results_comp.dart';
import 'package:google_clone/widget/search_taps.dart';

class SearchScreen extends StatelessWidget {

final String searchQuery;
final String start;

  const SearchScreen({Key? key, required this.searchQuery, required this.start}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Title(
      color: Colors.blue,
      title: searchQuery,
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const SearchHeader(),
        const SingleChildScrollView(
            scrollDirection: Axis.horizontal, child: SearchTaps()),
        const Divider(
          height: 0,
          thickness: 0.3,
        ),
        FutureBuilder(
          
            future: ApiService().fetchData(queryTerm: searchQuery, start: start),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10, top: 12),
                        child: Text(
                            'about ${snapshot.data?['searchInformation']['formattedTotalResults']} results (${snapshot.data?['searchInformation']['formattedSearchTime']}) seconds',
                            style: const TextStyle(fontSize:15, color: Color(0xFF70757a) ),
                            ),
                      ), 
                      ListView.builder(
                        itemCount: snapshot.data?['items'].length,
                        shrinkWrap: true,
                        itemBuilder: ((context, index){
                        return Padding(padding:const EdgeInsets.only(left: 10, top: 10), 
                        child: SearchResultComponent(
                          description:snapshot.data?['items'][index]['snippet'],
                          link: snapshot.data?['items'][index]['formattedUrl'],
                          linkToGo: snapshot.data?['items'][index]['link'],
                          text: snapshot.data?['items'][index]['title']
                           ) ,);
                      })
                        ),
                         SizedBox(
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              TextButton(
                  onPressed: () {
                               if(start!='0'){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen(searchQuery: searchQuery, start: (int.parse(start)-10).toString())));
                               }
                  },
                  child: const Text(
                    '< vorheriges',
                    style: TextStyle(fontSize: 15, color: blueColor),
                  ),
                              ),
                              const SizedBox(
                  width: 30,
                              ),
                              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SearchScreen(searchQuery: searchQuery, start: (int.parse(start)+10).toString())));
                            
                  },
                  child: const Text(
                    'nächstes >',
                    style: TextStyle(fontSize: 15, color: blueColor),
                  ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const SearchFooter(),  ],
                  ),
                );
              }
              return const Center(child: CircularProgressIndicator(),);
            }),
           
          ],
        ),
      ),
    );
  }
}
