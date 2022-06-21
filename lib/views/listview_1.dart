import 'package:flutter/material.dart';

class ListView1C extends StatelessWidget {
  ListView1C({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _cars = const [
    {
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/6/69/Scuderia_Ferrari_%28cropped%29.png",
      "name": "Ferrari"
    },
    {
      "image":
          "https://www.autonocion.com/wp-content/uploads/2021/11/Logo-de-mercedes-6-501x500.jpg",
      "name": "Mercedes Benz"
    },
    {
      "image":
          "https://i.pinimg.com/736x/e0/93/4d/e0934d5ff4aba97749565d04a55d9388--logo-free-car-logos.jpg",
      "name": "Ford"
      // },
      // {
      //   "image":"https://img.remediosdigitales.com/6bd085/p90385570_highres_the-new-bmw-communic/840_560.jpg",
      //   "name":"BMW"
      // },
      // {
      //   "image":"https://p4.wallpaperbetter.com/wallpaper/912/406/381/aventador-gallardo-lamborghini-logo-wallpaper-preview.jpg",
      //   "name":"Lamboghini"
      // },
      // {
      //   "image":"https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/Nissan-logo.svg/2378px-Nissan-logo.svg.png",
      //   "name":"Nissan"
      // },
      // {
      //   "image":"https://i.pinimg.com/originals/18/21/2f/18212f82cf5eac6a7d34e599b726fa7d.jpg",
      //   "name":"Suzuki"
      // },
      // {
      //   "image":"https://i.ytimg.com/vi/w2eGR2T3Sts/hqdefault.jpg",
      //   "name":"Chevrolet"
      // },
      // {
      //   "image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzRJqkg4C5gmg0916Av2Jspsa5k9H02e8ckw&usqp=CAU",
      //   "name":"Kia"
      // },
      // {
      // "image":"https://wallpaperaccess.com/full/349467.jpg",
      // "name":"Honda"
    }
  ];

   void openAlertDialog(BuildContext context, String info) {
    AlertDialog alert =
        AlertDialog(title: Text(info), content: Text(info), actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: const Text('OK'),
      )
    ]);
    showDialog(context: context, builder: (BuildContext context) => alert);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _createList(),
      ),
    );
  }

    Widget _createList() {
    return ListView.builder(
      itemCount: _cars.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            openAlertDialog(context, _cars[index]['name']);
          },
          child: CustomCard(_cars[index]["name"], _cars[index]["image"]),
        );
      },
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;
  final String image;
  const CustomCard(this.name, this.image, {Key? key}) : super(key: key);  

 @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2,
        color: Color.fromARGB(232, 218, 232, 251),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: SizedBox(
          height: 60,
          width: 360,
          child: Container(
            child: Row(
              children: <Widget>[
                Padding(padding: const EdgeInsets.only(left: 5)),
                CircleAvatar(
                  backgroundImage: NetworkImage(image),
                ),
                Padding(padding: const EdgeInsets.all(5)),
                Text(
                  name,
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
