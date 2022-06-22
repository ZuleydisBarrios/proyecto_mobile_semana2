import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> bannerList = <String>[
    'https://i.blogs.es/8df7b0/71aapizi3is/1366_2000.jpeg',
    'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/1200/public/media/image/2014/02/284953-repasando-mejores-free-play-ii.jpg?itok=KBlZ7BdG',
    'https://elcomercio.pe/resizer/c2hemWsylgAXZ0gQA6ULYJ3ODa0=/980x0/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/5IZHXX2FORFG3CSEU6BGNNU24M.jpg',
    'https://as01.epimg.net/meristation/imagenes/2019/09/27/analisis/1569537073_291729_1569571560_miniatura_normal.jpg',
    'https://i0.wp.com/gamerfocus.co/wp-content/uploads/2014/08/games-with-gold-septiembre-2014-xbox-360-one-1.jpg?ssl=1',
  ];

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
                    'Select game',
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color.fromARGB(210, 13, 4, 175),
                    size: 30,
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
                    scrollDirection: Axis.horizontal,
                    itemCount: listCards.length,
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        categoryModel: listCards[index],
                      );
                    }),
              ),
              SizedBox(height: 20),
              Text('The videogames most popular',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Color.fromARGB(255, 8, 6, 10))),
              for (int i = 0; i < bannerList.length; i++) ...{
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          spreadRadius: 5,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 220,
                          margin: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: NetworkImage(bannerList[i]),
                                fit: BoxFit.cover),
                          ),
                          //child: Image.network(bannerList[0]
                          //)//
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Top games",
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: Colors.black)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.deepOrange),
                            Text('4.5',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.deepOrange)),
                            Text('  (128 ratings)',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1!
                                    .copyWith(color: Colors.black45)),
                            Spacer(),
                            Column(
                              children: [
                                Text('avaliable on:',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(color: Colors.black45)),
                                Image.asset(
                                  'assets/videojuegos/logoplaystore.png',
                                  height: 25,
                                  width: 25,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              }
            ]),
          ),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  final CategoryModel categoryModel;
  CategoryCard({Key? key, required this.categoryModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(17),
            margin: EdgeInsets.only(top: 5, bottom: 2, right: 5, left: 8),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 160, 219, 250).withOpacity(0.2),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              categoryModel.imageUrl,
            )),
        Text(categoryModel.title,
            style: Theme.of(context)
                .textTheme
                .subtitle2!
                .copyWith(color: Colors.black87)),
      ],
    );
  }
}

class CategoryModel {
  String imageUrl;
  String title;
  CategoryModel(this.imageUrl, this.title);
}

List<CategoryModel> listCards = [
  CategoryModel(
    'assets/videojuegos/diosdelaguerra.jpg',
    'Action',
  ),
  CategoryModel(
    'assets/videojuegos/lol.jpg',
    'MMORPG',
  ),
  CategoryModel(
    'assets/videojuegos/gta.jpg',
    'Racing',
  ),
  CategoryModel(
    'assets/videojuegos/horizont.jpeg',
    'Adventure',
  ),
  CategoryModel(
    'assets/videojuegos/callofdutty.jpeg',
    'FPS',
  ),
];
