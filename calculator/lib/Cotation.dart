import 'package:flutter/material.dart';

class cote extends StatefulWidget {
  //const cote({super.key});

  @override
  State<cote> createState() => _coteState();
}

class _coteState extends State<cote> {
  TextEditingController mat = TextEditingController();
  TextEditingController fra = TextEditingController();
  TextEditingController algo = TextEditingController();
  TextEditingController ang = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController solution = TextEditingController();

  void calcul() {
    int x = int.parse(mat.text);
    int y = int.parse(fra.text);
    int z = int.parse(algo.text);
    int n = int.parse(ang.text);
    int cal = x + y + z + n;
    String name = nom.text;
    double pourS = (double.parse(cal.toString()) / 200) * 100;
    String mention = "";
    if (pourS < 50) {
      mention = "A";
    } else if (pourS >= 50 && pourS <= 69) {
      mention = "S";
    } else if (pourS >= 70 && pourS <= 80) {
      mention = "D";
    } else if (pourS >= 81 && pourS <= 90) {
      mention = "GD";
    } else {
      mention = "ERROR";
      pourS = 0.0;
    }
    setState(() {
      solution.text = "Bonjour $name ,Vous avez $pourS avec $mention ";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cotes"),
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.transparent, width: 20)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Nom: "),
                  Flexible(
                      child: TextField(
                          controller: nom,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Entrer le Nom",
                              labelText: "Votre Nom")))
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("PostNom: "),
                  Flexible(
                      child: TextField(
                          controller: null,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Entrer le classe",
                              labelText: "Votre Classe")))
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.transparent, width: 20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Math /50:"),
                          Flexible(
                              child: TextField(
                            controller: mat,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Entrer le point"),
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("FRANCAIS /60:"),
                          Flexible(
                              child: TextField(
                            controller: fra,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Entrer le point"),
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ANGLAIS /40:"),
                          Flexible(
                              child: TextField(
                            controller: ang,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Entrer le point"),
                          ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("ALGORITHME /50:"),
                          Flexible(
                              child: TextField(
                            controller: algo,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: "Entrer le point"),
                          ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent)),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                        Row(
                          children: [
                            Flexible(
                                child: TextField(
                              controller: solution,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  enabled: false,
                                  border: OutlineInputBorder(),
                                  hintText: "Entrer le point"),
                            ))
                          ],
                        )
                      ])))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          calcul();
        },
        tooltip: "calculer",
        child: Icon(Icons.add),
      ),
    );
  }
}
