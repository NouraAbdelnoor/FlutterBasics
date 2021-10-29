import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          leading: Icon(
            Icons.menu,
          ),
          title: Text('first app'
          ),
          actions: [
            IconButton(icon:Icon(
              Icons.notification_important,
            ), onPressed: (){}
              ,)

            ,
            IconButton(icon: Icon(
              Icons.search,
            ), onPressed: (){})




          ],
        ),
        body:Container(
          color: Colors.green,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  children: [
                    Image(
                      image: NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fsea%2F&psig=AOvVaw0DvoEt4SMsX_G9S6D6nASV&ust=1625839977447000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCICA5oTU0_ECFQAAAAAdAAAAABAJ'),
                    )
                  ],

                )
              ],
            ),
          ),
        )

    );

  }

}