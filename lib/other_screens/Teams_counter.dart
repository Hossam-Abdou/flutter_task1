import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Basket extends StatefulWidget {
  @override
  State<Basket> createState() => _BasketState();
}

class _BasketState extends State<Basket> {
int Apoints=0;
int Bpoints=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Points Counter'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [

        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            Column(children: [
              Text('Team A',style: TextStyle(fontSize: 32)),
              Text('$Apoints',style: TextStyle(fontSize: 160),),
              ElevatedButton(onPressed: ()
              {
                Apoints++;
                setState(() {
                });
              },
                  child: Text('Add 1 point',
                      style: TextStyle(fontSize: 15,color: Colors.black)
                  ),
                  style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                      minimumSize: Size(100,50))
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {
                Apoints+=2;
                setState(() {
                });
              },
                  child: Text('Add 2 point',
                      style: TextStyle(fontSize: 15,color: Colors.black)
                  ),
                  style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                      minimumSize: Size(100,50))
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: ()
              {
                Apoints+=5;
                setState(() {
                });
              },
                  child: Text('Add 5 point',
                      style: TextStyle(fontSize: 15,color: Colors.black)
                  ),
                  style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                      minimumSize: Size(100,50))
              ),

            ],),
          Container(height: 450,
              child: VerticalDivider(color: Colors.grey[300],
                indent: 50,endIndent: 50,thickness: 1,)),
          //
          Column(children: [
            Text('Team B',style: TextStyle(fontSize: 32)),
            Text('$Bpoints',style: TextStyle(fontSize: 160),),
            ElevatedButton(onPressed: ()
            {
              Bpoints++;
              setState(() {
              });
            },
                child: Text('Add 1 point',
                  style: TextStyle(fontSize: 15,color: Colors.black)
                ),
                style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                    minimumSize: Size(100,50))
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              Bpoints+=2;
              setState(() {
              });
            },
                child: Text('Add 2 point',
                  style: TextStyle(fontSize: 15,color: Colors.black)
                ),
                style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                    minimumSize: Size(100,50))
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: ()
            {
              Bpoints+=5;
              setState(() {
              });
            },
                child: Text('Add 5 point',
                  style: TextStyle(fontSize: 15,color: Colors.black)
                ),
                style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,
                    minimumSize: Size(100,50))
            ),

          ],),

        ],),
        ElevatedButton(onPressed: ()
        {

          Apoints=0;
          Bpoints=0;
          setState(() {
          });
        },
            child: Text('Reset',style: TextStyle(fontSize: 15,color: Colors.black),),
            style:ElevatedButton.styleFrom(backgroundColor: Colors.orange,minimumSize: Size(100,50))
        ),

      ],),
    );
  }
}
