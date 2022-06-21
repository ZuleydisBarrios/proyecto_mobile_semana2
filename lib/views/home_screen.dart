import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Playing to',
            style: Theme.of(context)
            .textTheme
            .subtitle2!
            .copyWith(color: Colors.black45),),
          InkWell(
              onTap: () {
              print('tap');
              
              },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                'Current game',
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
                Icon(Icons.keyboard_arrow_down, color: Color.fromARGB(211, 16, 175, 4), size: 40,),
                // Text('View all',
                // style: Theme.of(context)
                // .textTheme
                // .subtitle2!
                // .copyWith(color: Colors.black45),),

              ]
            ),
            ),
          ],
        ),
        ),
      body: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                 decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                 ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: (){},
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          Text('Search games',
                          style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(color: Colors.black45),
                            ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.filter_center_focus),
              ),
            ],
          )
        ]
      ),
      )
    
    );
  }
}