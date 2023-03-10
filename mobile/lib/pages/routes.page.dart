import 'package:flutter/material.dart';

class RouteMainPage extends StatelessWidget {
  const RouteMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sin rutas disponibles",
                      style: Theme.of(context).textTheme.headline4)
                ],
              )),
          Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () =>
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Buscando...'),
                          )),
                      child: Text("Volver a buscar")),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(191, 73, 4, 1)
                    ),
                      onPressed: () =>
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Ahora esta online!'),
                          )),
                      child: Text("N o Disponible"))
                ],
              ))
        ],
      ),
    );
  }
}
