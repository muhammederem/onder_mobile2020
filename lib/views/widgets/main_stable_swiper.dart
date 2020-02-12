// import 'package:flutter/material.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:onder_mobile2020/DataAcess/DbHelper.dart';
// import 'package:onder_mobile2020/models/swiper_model.dart';
// import 'package:onder_mobile2020/urlLauncher.dart';
// import 'package:onder_mobile2020/views/pages/newsPage.dart';


// //Swiperlar stablepage rotation sayfası gibi yapılacak
// //

// class StableSwiper extends StatefulWidget {
//   @override
//   _StableSwiperState createState() => _StableSwiperState();
// }

// class _StableSwiperState extends State<StableSwiper> {
//   DbHelper db= new DbHelper();
//   List<SwiperModel> swiperModel;
//   int count=0;
//   @override
//   Widget build(BuildContext context) {

//      void insideSwiper(SwiperModel swiper) async{
//     await Navigator.push(context,
//     MaterialPageRoute(builder: (context)=>NewsPage(swiper)));
//   }
//     return null;
//   }
// }
//   const StableSwiper({Key key, this.swipes}) : super(key: key);
//   Widget build(BuildContext context) {
//     return Swiper(itemCount: swipes.length,
//     itemBuilder: (BuildContext context,int position){
//       return GestureDetector(
//         onTap: (){
          
//           String firstLetter = swipes[position].link.trimLeft().substring(0, 1);
//           if(swipes[position].link==null){

//           }
//           else if(swipes[position].link==""){

//           }

//           else if(firstLetter=="/"){

//           }
//           else{
//             urlLaunch(swipes[position].link);
//           }
          
//         },
//         Container(decoration: BoxDecoration(image:DecorationImage(image: NetworkImage(swipes[position].link)) ),)
        
//       ); 
//     },
      
      
//     );
//   }

