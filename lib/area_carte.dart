import 'package:flutter/material.dart';
import 'package:poketrade/carta.dart';
import 'package:poketrade/components/tema.dart';

class AreaCarte extends StatelessWidget {
  const AreaCarte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/background.jpg"),
                  fit: BoxFit.fill)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 50)),
              Container(
                padding: const EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: const DefaultTextStyle(
                  style: TextStyle(
                      fontSize: 30,
                      color: PokeTradeSecondaryColor,
                      fontWeight: FontWeight.bold),
                  child: Text(
                    "Area Carte",
                  ),
                ),
              ),
              const SizedBox(height: 5,),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  border: Border(
                    bottom: BorderSide(color: Colors.black, width: 2),
                  )
                ),
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage("assets/profiles/default.jpg"),
                    ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("MarioRossi420", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Image.asset("assets/icons/pokeball_recensione_selected.png"),
                                Image.asset("assets/icons/pokeball_recensione_selected.png"),
                                Image.asset("assets/icons/pokeball_recensione_selected.png"),
                                Image.asset("assets/icons/pokeball_recensione_selected.png"),
                                Image.asset("assets/icons/pokeball_recensione_unselected.png"),
                              ],
                            )
                          ]
                      ),
                    )),
                    const Icon(Icons.arrow_forward_ios),

                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  physics: const BouncingScrollPhysics(),
                  childAspectRatio: (150/240),
                  crossAxisCount: 2,
                  children: [
                    for(var i = 0; i < listaRicerca.length; i++)
                      Carta(carta: listaRicerca[i])
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: PokeTradePrimaryColor,
            onPressed: (){},
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}
