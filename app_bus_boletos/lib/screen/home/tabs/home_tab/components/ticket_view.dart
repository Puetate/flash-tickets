import 'package:app_bus_boletos/screen/home/tabs/home_tab/components/thick_container.dart';
import 'package:app_bus_boletos/utils/app_layout.dart';
import 'package:app_bus_boletos/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.92,
      height: 200,
      child: Container(
          margin: const EdgeInsets.only(right: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /* 
              TODO:******************************************************************************************************
              Parte azul del card/ticket
               */
              Container(
                decoration: BoxDecoration(
                    color: Styles.cardColorTicket,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(21),
                        topRight: Radius.circular(21))),
                padding: const EdgeInsets.all(13),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Ambato",
                          style: Styles.textStyleSubTitle3
                              .copyWith(color: Styles.textCardColor),
                        ),
                        const Spacer(),
                        ThickContainer(),
                        Expanded(
                            child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  print(
                                      "el ancho es ${constraints.constrainWidth()}");
                                  return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.max,
                                    children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                        width: 3,
                                        height: 2,
                                        child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 162, 162, 162))),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            //TODO:***************************************************************************************
                            //ICONO
                            Center(
                                child: Icon(
                              size: 30,
                              Icons.directions_bus_filled_outlined,
                              color: Styles.textCardColor,
                            )),
                          ],
                        )),
                        ThickContainer(),
                        const Spacer(),
                        Text(
                          "Quito",
                          style: Styles.textStyleSubTitle3
                              .copyWith(color: Styles.textCardColor),
                        ),
                      ],
                    ),
                    const Gap(3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 120,
                          child: Text(
                            "T. Ingaurco",
                            style: Styles.textStyleSubTitle2
                                .copyWith(color: Styles.textCardColor),
                          ),
                        ),
                        Text(
                          "3H 30M",
                          style: Styles.textStyleSubTitle2
                              .copyWith(color: Styles.textCardColor),
                        ),
                        SizedBox(
                          width: 100,
                          child: Text(
                            "T. Ibarra",
                            textAlign: TextAlign.end,
                            style: Styles.textStyleSubTitle2
                                .copyWith(color: Styles.textCardColor),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /* 
              TODO:******************************************************************************************************
              Parte naranja del card/ticket
               */

              Container(
                color: Styles.cardColorTicket, //const Color(0xFFF37B67),
                child: Row(
                  children: [
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.backCardColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Styles.textCardColor)),
                                    )),
                          );
                        },
                      ),
                    )),
                    SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Styles.backCardColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              /* 
              TODO:******************************************************************************************************
              Parte inferior naranja del card/ticket
               */
              Container(
                decoration: BoxDecoration(
                  color: Styles.cardColorTicket,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21)),
                ),
                padding:
                    EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "1 May",
                                  style: Styles.textStyleSubTitle2
                                      .copyWith(color: Styles.textCardColor),
                                ),
                                const Gap(5),
                                Text(
                                  "08:00 AM",
                                  style: Styles.textStyleSubTitle2
                                      .copyWith(color: Styles.textCardColor),
                                )
                              ],
                            ),
                            const Gap(2),
                            Text(
                              "Partida",
                              style: Styles.textStyleSubTitle2
                                  .copyWith(color: Styles.textCardColor),
                            )
                          ],
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  size: 20,
                                  Icons.chair_outlined,
                                  color: Styles.textCardColor,
                                ),
                                const Gap(15),
                                Text(
                                  "VIP ",
                                  style: Styles.textStyleSubTitle2
                                      .copyWith(color: Styles.textCardColor),
                                ),
                                Text(
                                  "1,2",
                                  style: Styles.textStyleSubTitle2
                                      .copyWith(color: Styles.textCardColor),
                                ),
                                const Gap(7),
                                Text(
                                  "~",
                                  style: Styles.textStyleSubTitle2
                                      .copyWith(color: Styles.textCardColor),
                                ),
                                Gap(7),
                                Text(
                                  "NORM ",
                                  style: Styles.textStyleSubTitle2
                                      .copyWith(color: Styles.textCardColor),
                                ),
                                Text(
                                  "1,2",
                                  style: Styles.textStyleSubTitle2
                                      .copyWith(color: Styles.textCardColor),
                                ),
                              ],
                            ),
                            Text(
                              "Asiento(s)",
                              style: Styles.textStyleSubTitle2
                                  .copyWith(color: Styles.textCardColor),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
