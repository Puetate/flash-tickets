import 'package:app_bus_boletos/utils/app_layout.dart';
import 'package:app_bus_boletos/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
          margin: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: Color(0xFF526799),
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
                          style: Styles.textStyleSubTitle,
                        ),
                        const Spacer(),
                        Text(
                          "Quito",
                          style: Styles.textStyleSubTitle,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
