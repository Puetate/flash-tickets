import 'package:app_bus_boletos/screen/login/home/tabs/home_tab/components/ticket_view.dart';
import 'package:app_bus_boletos/utils/app_styles.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class Hometab extends StatefulWidget {
  const Hometab({super.key});

  @override
  State<Hometab> createState() => _HometabState();
}

class _HometabState extends State<Hometab> {
  String ubicacion = "No encontrada";
  final _formKey = GlobalKey<FormState>();
  final _popupCustomValidationKey = GlobalKey<DropdownSearchState<int>>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [
          Container(
            height: 190,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/img_1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: const Color.fromARGB(139, 255, 255, 255)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.location_on),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(ubicacion),
                                ]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "¿Hacia donde",
                            style: Styles.textStyleTitle,
                          ),
                          Row(
                            children: [
                              Text(
                                " deseas ",
                                style: Styles.textStyleTitle,
                              ),
                              Text(
                                "viajar?",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800,
                                  color: Styles.onPrimary,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -40),
            child: Column(
              children: [
                Wrap(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 340, //gives the width of the dropdown button
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Styles.cardColor),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        child: Form(
                          key: _formKey,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: DropdownSearch<String>(
                                      items: const [
                                        "Quito",
                                        "Guayaquil",
                                        "Cuenca",
                                        "Riobamba",
                                        "Ibarra",
                                        "Guaranda",
                                        "Esmeraldas"
                                      ],
                                      onSaved: (newValue) {
                                        print(newValue);
                                      },
                                      dropdownDecoratorProps:
                                          const DropDownDecoratorProps(
                                        dropdownSearchDecoration:
                                            InputDecoration(
                                          focusColor: Colors.yellow,
                                          icon: Icon(Icons.location_on),
                                          labelText: "Seleccione su destino",
                                        ),
                                      ),
                                      popupProps: const PopupProps.menu(
                                        showSearchBox: true,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -40),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Proximo Viaje",
                    style: Styles.textStyleSubTitle3,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/");
                    },
                    child: Row(
                      children: [
                        Text(
                          "Anteriores",
                          style: TextStyle(color: Styles.textButtonColor),
                        ),
                        Icon(
                          Icons.keyboard_double_arrow_right,
                          color: Styles.textButtonColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(0, -40),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: [TicketView(), TicketView()],
                ),
              )),
        ],
      ),
    );
  }
}
