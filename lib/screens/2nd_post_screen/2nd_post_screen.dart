import 'package:eraasoft7/screens/2nd_post_screen/post_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff252237),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children:  [
                CircleAvatar(
                  radius :22,
                  backgroundImage: NetworkImage('https://img.freepik.com/free-photo/artist-white_1368-3543.jpg'),),
                SizedBox(width: 10,),
                Text('patric Newman',style: TextStyle(fontSize: 20,color: Colors.white),),
                SizedBox(width: 50,),
                Text('just now',style: TextStyle(fontSize: 20,color: Colors.grey),),
              ],),
              SizedBox(height: 10,),
              RichText(text: TextSpan(
                  children: [
                    TextSpan( text: 'we are bootstrapping ',
                        style: TextStyle(fontSize: 18,color: Colors.grey) ),
                    TextSpan( text: '@annetpro ',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey) ),
                    TextSpan( text: 'a social ',
                        style: TextStyle(fontSize: 18,color: Colors.grey) ),
                  ]
              )),
              const Text('individuals with successful people.if you ', style: TextStyle(fontSize: 18,color: Colors.grey)),
                    Text('are mentor comment below \u{1F44d} how to ', style: TextStyle(fontSize: 18,color: Colors.grey)),
                    Text('make it 😍 more useful for society. follow ', style: TextStyle(fontSize: 18,color: Colors.grey)), // the emoji can be also '\u{1F60d}'
                    Text('us in FB', style: TextStyle(fontSize: 18,color: Colors.grey)),
              SizedBox(height: 10,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR10X8Y_KnLiTKFnrrOfFxWhRToPi_w61MtYw&usqp=CAU',
                  ), width: 320,
                    height: 280,
                  fit: BoxFit.cover,),
                ),
              SizedBox(height: 20,),
              Row(
              children: [
                elevatedbutton(Button('#Startup')),
                elevatedbutton(Button('#Programming')),
                elevatedbutton(Button('#Business')),
              ],),
              SizedBox(height: 5,),
              Row(
                children: [
                  elevatedbutton(Button('#Bootstrap')),
                  elevatedbutton(Button('#Community')),
                ],),
              SizedBox(height: 17,),
              Row(
                children: [
                Icon(Icons.thumb_up,color: Colors.white60,),
                Text('  12.5 K',style: TextStyle(fontSize: 20,color: Colors.white60)),
                  SizedBox(width: 10,),

                Icon(Icons.ios_share,color: Colors.white60,),
                Text('  1.43',style: TextStyle(fontSize: 20,color: Colors.white60)),
                  SizedBox(width: 10,),
                Icon(Icons.comment,color: Colors.white60,),
                Text('  983',style: TextStyle(fontSize: 20,color: Colors.white60)),
                  SizedBox(width: 10,),
                Icon(Icons.bookmark,color: Colors.white60,),
                Text(' 566',style: TextStyle(fontSize: 20,color: Colors.white60))
              ],)
            ],),
        ),
      ),
    );
  }
}

