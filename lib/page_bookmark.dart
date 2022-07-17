import 'package:flutter/material.dart';
import 'package:show_app/screen/movietile_page.dart';
import '/services/movies_remote_service.dart';
import '/models/topmovies.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PageBookmark extends StatefulWidget {
  final itemIndex;
  PageBookmark({required this.itemIndex});

  @override
  State<PageBookmark> createState() => _PageBookmarkState(this.itemIndex);
}

class _PageBookmarkState extends State<PageBookmark> {
  bool isLoaded = false;
  Future<Movies>? movieData;
  Future<Movies> getList() async {
    MoviesRemoteService moviesRemoteService = MoviesRemoteService();
    var movies = await moviesRemoteService.getMovieDetail();
    return movies;
  }

  _PageBookmarkState(int itemIndex) {
    this._itemIndex = itemIndex;
    print('This is the index = $_itemIndex');
  }
  late int _itemIndex;

  @override
  void initState() {
    // todo implement initState
    movieData = getList();
    super.initState();
  }

  getData(var movieData) async {
    if (movieData != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MovieTilePage(movieData: movieData, items: _itemIndex);
    // Container(
    //   color: const Color(0xff1A6350),
    //   child: Scaffold(
    //     backgroundColor: Colors.transparent,
    //     body: Visibility(
    //       visible: isLoaded,
    //       child: SingleChildScrollView(
    //         child: Container(
    //           width: MediaQuery.of(context).size.width,
    //           height: MediaQuery.of(context).size.height,
    //           child: MovieDetail(movieData: movieData, items: _itemIndex),
    //         ),
    //       ),
    //       replacement: const Center(
    //         child: CircularProgressIndicator(
    //           color: Color.fromARGB(255, 13, 81, 62),
    //           backgroundColor: Color.fromARGB(255, 61, 164, 135),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
  }
}

// class MovieDetail extends StatefulWidget {
//   MovieDetail({required this.movieData, required this.items});

//   var items;

//   final Future<Movies>? movieData;

//   @override
//   State<MovieDetail> createState() => _MovieDetailState();
// }

// class _MovieDetailState extends State<MovieDetail> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff1A6350),
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: Center(
//           child: Text(
//             'Movie Details',
//             style: TextStyle(
//               color: Colors.white,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ),
//       body: FutureBuilder<Movies>(
//         future: widget.movieData, //future ma moviees ko data halni
//         builder: (BuildContext context, snapshot) {
//           if (snapshot.hasData) {
//             return SingleChildScrollView(
//               child: Container(
//                 height: MediaQuery.of(context).size.height - 18,
//                 width: MediaQuery.of(context).size.width,
//                 color: Color(0xff1A6350),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//                       // height: 240,
//                       // width: 158,
//                       child: Image(
//                         image: NetworkImage(
//                             "https://image.tmdb.org/t/p/w500/${snapshot.data!.results[widget.items].posterPath}"),
//                         height: 245,
//                         width: 160,
//                         alignment: Alignment.center,
//                       ),
//                       decoration: BoxDecoration(
//                         color: Colors.white54,
//                       ),
//                     ),
//                     Container(
//                       height: 280,
//                       padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
//                       width: MediaQuery.of(context).size.width,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "${snapshot.data!.results[widget.items].originalTitle}",
//                             textAlign: TextAlign.center,
//                             maxLines: 3,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 20,
//                             ),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(
//                             'Imdb: ${snapshot.data!.results[widget.items].popularity!.roundToDouble() / 10.0}',
//                             style: TextStyle(fontSize: 15, color: Colors.white),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               RatingBarIndicator(
//                                 rating: (snapshot.data!.results[widget.items]
//                                         .voteAverage!
//                                         .toDouble()) /
//                                     2,
//                                 itemBuilder: (context, index) => Icon(
//                                   Icons.star,
//                                   color: Colors.amber,
//                                 ),
//                                 itemCount: 5,
//                                 itemSize: 20.0,
//                                 direction: Axis.horizontal,
//                               ),
//                               Text(
//                                 '${snapshot.data!.results[widget.items].voteAverage! / 2} ',
//                                 style: TextStyle(
//                                     fontSize: 15, color: Colors.white),
//                               ),
//                               Text(
//                                 '(${snapshot.data!.results[widget.items].voteCount} reviews)',
//                                 style: TextStyle(
//                                     fontSize: 15, color: Colors.white),
//                               ),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Center(
//                             child: Stack(
//                               children: [
//                                 Container(
//                                   height: 30,
//                                   width: MediaQuery.of(context).size.width - 40,
//                                   padding:
//                                       const EdgeInsets.fromLTRB(5, 3, 45, 3),
//                                   child: const Text(
//                                     'Reviews',
//                                     textAlign: TextAlign.right,
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         color: Colors.black,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                                 Container(
//                                   height: 30,
//                                   width:
//                                       (MediaQuery.of(context).size.width / 2) -
//                                           20,
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 3),
//                                   child: Text(
//                                     'Details',
//                                     textAlign: TextAlign.center,
//                                     style: TextStyle(
//                                         fontSize: 16,
//                                         color: Colors.white,
//                                         fontWeight: FontWeight.w500),
//                                   ),
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.black,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Text(
//                             'Description',
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                           Text(
//                             '${snapshot.data!.results[widget.items].overview}',
//                             textAlign: TextAlign.left,
//                             maxLines: 6,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               fontSize: 15,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w300,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Scaffold.of(context).showSnackBar(
//                               SnackBar(
//                                 content: Text('Not Available'),
//                                 duration: Duration(
//                                   seconds: 2,
//                                 ),
//                               ),
//                             );
//                           },
//                           child: Container(
//                             height: 40,
//                             width: 150,
//                             margin: const EdgeInsets.fromLTRB(18, 0, 18, 30),
//                             alignment: Alignment.center,
//                             child: Text(
//                               'Watch Trailer',
//                               textAlign: TextAlign.center,
//                               maxLines: 3,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.black,
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Scaffold.of(context).showSnackBar(
//                               SnackBar(
//                                 content: Text('Added to bookmark'),
//                                 duration: Duration(
//                                   seconds: 2,
//                                 ),
//                               ),
//                             );
//                           },
//                           child: Container(
//                             height: 40,
//                             width: 150,
//                             margin: const EdgeInsets.fromLTRB(18, 0, 18, 30),
//                             alignment: Alignment.center,
//                             child: Text(
//                               'Bookmark',
//                               textAlign: TextAlign.center,
//                               maxLines: 3,
//                               overflow: TextOverflow.ellipsis,
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w500),
//                             ),
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               borderRadius: BorderRadius.circular(6),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }
//           return Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             child: Center(
//               child: CircularProgressIndicator(
//                 color: Color.fromARGB(255, 13, 81, 62),
//                 backgroundColor: Color.fromARGB(255, 61, 164, 135),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
