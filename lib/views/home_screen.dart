import 'package:flutter/foundation.dart';
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
              Text(
                'Playing to',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: Colors.black45),
              ),
              InkWell(
                onTap: () {
                  print('tap');
                },
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Text(
                    'Current game',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color.fromARGB(211, 16, 175, 4),
                    size: 40,
                  ),
                  // Text('View all',
                  // style: Theme.of(context)
                  // .textTheme
                  // .subtitle2!
                  // .copyWith(color: Colors.black45),),
                ]),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Material(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: Row(
                            children: [
                              Icon(Icons.search),
                              Text(
                                'Search games',
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
                    onPressed: () {},
                    icon: Icon(
                      Icons.filter_alt_rounded,
                      color: Colors.black45,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Category",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Container(
                height: 115,
                child: ListView.builder(
                    //shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: listCards.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(17),
                              margin: EdgeInsets.only(
                                  top: 5, bottom: 2, right: 5, left: 8),
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(        
                                color: Color.fromARGB(255, 98, 200, 241).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(15),
                             ),
                              child: Image.asset(
                                listCards[index].imageUrl,
                              )),

                          Text(listCards[index].title,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(color: Colors.black87)),
                        ],
                      );
                    }),
              ),
            ]),
          ),
        ));

  }
}
class CategoryModel{
  String imageUrl; 
  String title;
  CategoryModel(this.imageUrl, this.title);
}

List<CategoryModel> listCards = [
  CategoryModel(
    'assets/videojuegos/diosdelaguerra.jpg',
    'Dios Guera',),
  CategoryModel(
    'assets/videojuegos/lol.jpg',
    'LOL',),
  CategoryModel(
    'assets/videojuegos/gta.jpg',
    'GTA',),
  CategoryModel(
    'assets/videojuegos/horizont.jpeg',
    'Horizont',),
  CategoryModel(
    'assets/videojuegos/callofdutty.jpeg',
    'Call Dutty',),

];

