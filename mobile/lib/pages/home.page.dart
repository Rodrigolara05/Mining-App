import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
          Expanded(
            flex: 2,
              child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(
              radius:80,
              backgroundImage: AssetImage("assets/images/default_avatar.png"),
            ),
            SizedBox(height: 10),
            Text("Bienvenido", style: Theme.of(context).textTheme.headline4),
            Text("Usuario 4",style: Theme.of(context).textTheme.headline5),
          ],)),
          Expanded(flex:1,child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: Text("Para poder generar rutas de trabajo, por favor marcar disponible",style:Theme.of(context).textTheme.caption),

            ),
            SizedBox(height: 20,),

            ElevatedButton(onPressed: ()=>ScaffoldMessenger.of(context).showSnackBar( SnackBar(
              content: Text('Ahora esta online!'),
            )), child: Text("Disponible"))
          ],))

        ],
      ),
    );
  }
}
