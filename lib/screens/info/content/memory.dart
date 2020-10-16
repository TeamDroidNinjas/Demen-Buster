import 'package:flutter/material.dart';


class Memory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                shadowColor: Colors.yellow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("-->Memory",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 20.0),
                      Text(
                          "Everyone has occasional memory lapses. It's normal to lose track of where you put your keys or forget the name of an acquaintance. But the memory loss associated with Alzheimer's disease persists and worsens, affecting the ability to function at work or at home."),
                    ],
                  ),
                ),
              ),
            ),
          ]
        )
         )

    );}}