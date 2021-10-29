import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessangerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 20.0,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title:Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage('https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png')  ,
            ),
            SizedBox(
              width: 15.0,
            ),
            Text('Chats',
              style: TextStyle(
                color: Colors.black,
              ),),

          ],
        ) ,
        actions: [
          IconButton(icon: CircleAvatar(
            radius: 15.0,
            child: Icon(
              Icons.camera_alt,
              size:16.0 ,
              color:Colors.white ,
            ),
          ),
              onPressed: (){}
          ),
          IconButton(icon: CircleAvatar(
            radius: 15.0,
            child: Icon(
              Icons.edit,
              size:16.0 ,
              color:Colors.white ,
            ),
          ),
              onPressed: (){}
          ),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Container(
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0,),
                  color: Colors.grey[300],
                ) ,
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child:   ListView.separated(

                  scrollDirection: Axis.horizontal,

                  itemBuilder:(context ,index)=>buildStoryItem() ,
                  separatorBuilder: (context,index)=>SizedBox(
                    width: 20.0,

                  ),
                  itemCount: 5,

                ),
              ),
              SizedBox(
                height: 20.0,

              ),
              ListView.separated(
                physics:NeverScrollableScrollPhysics() ,
                shrinkWrap: true,
                itemBuilder: (context,index)=>builChatItem(),
                separatorBuilder:(context,index)=> SizedBox(
                  height: 20.0,
                ),
                itemCount: 15,
              ),
            ],
          ),
        ),
      ) ,
    );
  }
  Widget builChatItem()=>Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children:[
          CircleAvatar(
            radius: 30.0,
            backgroundImage:NetworkImage('https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png')  ,
          ),

          Padding(
            padding: const EdgeInsetsDirectional.only(
              bottom: 3.0,
              end: 3.0,
            ),
            child: CircleAvatar(
              radius:7.0 ,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      SizedBox(
        width: 20.0,
      ),
      //***************************************awl chat**************************
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ahmed mohamed'
              ,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'hello1 here is my message ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0 ),
                  child: Container(
                    width: 7.0,
                    height:7.0 ,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Text(
                  '02.00 pm',
                ),
              ],
            ),
          ],
        ),
      ),


    ],
  );
  Widget buildStoryItem()=>Container(
    width:60.0 ,
    child: Column(

      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children:[
            CircleAvatar(
              radius: 30.0,
              backgroundImage:NetworkImage('https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_960_720.png')  ,
            ),

            Padding(
              padding: const EdgeInsetsDirectional.only(
                bottom: 3.0,
                end: 3.0,
              ),
              child: CircleAvatar(
                radius:7.0 ,
                backgroundColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          'Noura1 Abdelnoor ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ),
  );
}
