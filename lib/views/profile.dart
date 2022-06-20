import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
  
}

class _MyProfileState extends State<MyProfile> {
  final double alturaCubierta = 200;
  final double alturaPerfil = 144;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget> [
          cargarImagenTop(),
          cargarDatosPerfil(),
          Divider(), 
          cargarInformacionDetallePerfil(),
        ],
      )

    );
  }

  Widget cargarImagenFondo()=> Container(
    color: Colors.grey,
    child: Image.asset('assets/imagenes/fondoPortada.jpg',
      width: double.infinity,
      height: alturaCubierta,
      fit: BoxFit.cover,
    )
  );
  
  Widget cargarImagenPerfil() => CircleAvatar(
    radius: alturaPerfil / 2,
    backgroundColor: Colors.grey.shade800,
    backgroundImage: NetworkImage('https://scontent.fctg2-1.fna.fbcdn.net/v/t39.30808-6/262098096_10224440030923121_6400242372124996300_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGvly6q991O6mn8IkV9JQJce75cZm0Gr6p7vlxmbQavqtG0HCCnsgYv1-yqMRPvfMI&_nc_ohc=01i-r9QT9xQAX_nolL1&_nc_ht=scontent.fctg2-1.fna&oh=00_AT896YW9w2y_69mu17dOyS0SaRDjJ58-yP-D0X4WtFVbDQ&oe=62B4ECC8'),
  );
  
  cargarImagenTop() {
    final double top = 200-144/2;
    final double bottom = 144/2;
    return Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children:[
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: cargarImagenFondo(),
        ),
        Positioned(
          top: top,
          child: cargarImagenPerfil())
        ,],
      );
  }

   cargarDatosPerfil() {
    return Container(
      padding: EdgeInsets.all(11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
       Divider(),
         const Text('Zuleydis Barrios Peña',
         style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold ),),         
         const Text('Engineer, Developer, and Designer', 
         style: TextStyle(fontSize: 14, height: 1.4, color: Colors.grey,) ,),
         
         //const SizedBox(height: 10),
         
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.location_on, color: Colors.grey,),
              SizedBox(width: 5),
              Text('Cartagena, Colombia', style: TextStyle(fontSize: 14, color: Colors.grey),),
            ],
            
           ),
          //SizedBox(height: 20),
          Divider(),  
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              cargarIconoRedesSociales(Icons.facebook),
              SizedBox(width: 15),
              cargarIconoRedesSociales(Icons.phone),
              SizedBox(width: 15),
              cargarIconoRedesSociales(Icons.public),
            ],
          ),
          
        ],
      ),
    );
  }

  
         
  cargarInformacionDetallePerfil() {
    return Container(
      padding: EdgeInsets.all(24),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
         Text('About me',
         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),),
         SizedBox(height: 10),
         Text('Engineer, Developer, and Designer.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 
         style: TextStyle(fontSize: 12, height: 1.4) , textAlign: TextAlign.justify,)
        ],
      ),
    );
  }
  
  cargarIconoRedesSociales(IconData icon) => CircleAvatar(
    radius:20,
    child: Material(
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        child: Icon(icon, color: Color.fromARGB(255, 255, 255, 255),),
      ),
    )
  );
}