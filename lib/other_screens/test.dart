import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Azkar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Container(
          width: double.infinity,
          height: 230, decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOBy-w-1lqAfMeYXlMul6ga43ptvz0N8F0yg&usqp=CAU',
            fit: BoxFit.fill,
          ),
        ),
            SizedBox(height: 10,),
            Container(width: 300,height: 100,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color:  Color(0xffe2e1e6),
              ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('باقي علي صلاة المغرب'),
                Text('01:30:45'),
                Text('ثواني:دقيقة:ساعة'),
              ],),
            ),
            SizedBox(height: 10,),
            Container(

              width: 360,height:260 ,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffe2e1e6),
              ),
              child:
              Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Cont(Awkat(text:'الفجر', time:'4:26', zone: 'صباحا')),
                  Cont(Awkat(text:'الشروق', time:'6:04', zone:'صباحا')),
                  Cont(Awkat(text:'الظهر', time:'12:51', zone:'مساءا')),
                  Cont(Awkat(text:'العصر', time:'4:28', zone: 'مساءا')),
                  Cont(Awkat(text:'المغرب', time:'7:39', zone:'مساءا')),
                  Cont(Awkat(text:'العشاء', time:'9:07', zone:'مساءا')),

              ],),
            )

        ],),
      ) ,

      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        height: 60.0,
        items: <Widget>[
          Icon(Icons.check_box, size: 30),
          Icon(Icons.punch_clock, size: 30),
          Icon(Icons.menu_book_rounded, size: 30),
          Icon(Icons.countertops_outlined, size: 30),
          Icon(Icons.calculate_rounded, size: 30),
        ],
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.blueAccent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),

      ),
    );
  }
}
class Awkat {
  String? text;
  String? time;
  String? zone;

  Awkat({this.text, this.time, this.zone});
}
Widget Cont(Awkat data)=>Column(
  children: [
        Container(
      width: 320,height: 30,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Color(0xff0a0742)),
      child: Row(mainAxisAlignment: MainAxisAlignment.center ,textDirection: TextDirection.rtl,
        children: [
          Text('${data.text}',style: TextStyle(color:Colors.white),),
          Text('${data.time} ',style: TextStyle(color: Color(0xff59969e)),),
          Text('${data.zone}',style: TextStyle(color: Color(0xff59969e),fontSize: 10,) ),
        ],),

    ),
    SizedBox(height: 5,)
  ],
);



