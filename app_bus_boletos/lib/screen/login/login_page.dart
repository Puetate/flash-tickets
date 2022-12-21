import 'package:app_bus_boletos/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _loading = false;
  bool isSwitched = false;
  String email = "";
  String name = "";
  String suranme = "";
  String idCard = "";
  String phone = "";
  String password = "";

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Styles.primaryColor,
            Styles.onPrimary,
          ],
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Text(
                    "Iniciar Sesión",
                    style: Styles.textStyleTitle
                        .copyWith(color: Styles.cardColor, fontSize: 27),
                  ),
                )
              ],
            ),
            Gap(60),
            Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(100)),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 37, vertical: 45),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Form(
                            key: _formKey,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextFormField(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(30),
                                    ],
                                    keyboardType: TextInputType.emailAddress,
                                    textInputAction: TextInputAction.next,
                                    decoration: const InputDecoration(
                                      prefixIcon: Icon(Icons.email_outlined),
                                      label: Text("Email"),
                                    ),
                                    onSaved: (newValue) {
                                      email = newValue!;
                                    },
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Ingrese su Email";
                                      }
                                      return null;
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextFormField(
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(15),
                                    ],
                                    textInputAction: TextInputAction.done,
                                    obscureText: true,
                                    decoration: const InputDecoration(
                                      prefixIcon:
                                          Icon(Icons.lock_person_outlined),
                                      label: Text("Contraseña"),
                                    ),
                                    onSaved: (value) => {password = value!},
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "Ingrese su contraseña";
                                      }
                                      return null;
                                    },
                                  ),
                                ]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "¿Olvido su contraseña?",
                              ),
                              Text(
                                "Recuerdame",
                                style: Styles.textStyleSubTitle2
                                    .copyWith(color: Colors.blue[400]),
                              )
                            ],
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Styles.orangeCardColor,
                                elevation: 10,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Ingresar",
                                    style: Styles.textStyleSubTitle2
                                        .copyWith(fontSize: 15),
                                  ),
                                  if (_loading)
                                    Container(
                                      width: 20,
                                      height: 20,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: const CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    )
                                ],
                              ),
                              onPressed: () {
                                _showHomePage(context);
                              }),
                          const SizedBox(height: 30),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 1,
                                backgroundColor: Styles.textButtonRegister,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 13),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Registrate!",
                                    style: Styles.textStyleSubTitle2.copyWith(
                                        fontSize: 15,
                                        color: Styles.primaryColor),
                                  ),
                                  if (_loading)
                                    Container(
                                      width: 20,
                                      height: 20,
                                      margin: const EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: const CircularProgressIndicator(
                                        color: Colors.white,
                                      ),
                                    )
                                ],
                              ),
                              onPressed: () {
                                _showHomePage(context);
                              }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }

  void _showHomePage(context) {
    Navigator.of(context).pushNamed("/homePage");
  }
}
