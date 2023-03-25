import 'package:flutter/material.dart';

class CurrencyCart extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double order;
  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCart(
      {super.key,
      required this.name,
      required this.code,
      required this.amount,
      required this.icon,
      required this.isInverted,
      this.order = 1});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, (-20 * (order - 1))),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$name / $order",
                    style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            fontSize: 20,
                            color: isInverted ? _blackColor : Colors.white),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(code,
                          style: TextStyle(
                              fontSize: 20,
                              color: isInverted
                                  ? _blackColor.withOpacity(0.8)
                                  : Colors.white.withOpacity(0.8))),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: const Offset(
                    -5,
                    12,
                  ),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
