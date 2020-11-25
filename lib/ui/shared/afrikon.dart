import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Afrikon extends StatelessWidget {
  final String name;
  final String semanticsLabel;
  final Color color;
  final double height;
  final double width;

  const Afrikon(
    this.name, {
    Key key,
    this.semanticsLabel,
    this.color = Colors.black,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/afrikons/$name.svg',
      semanticsLabel: semanticsLabel,
      color: color ?? IconTheme.of(context).color,
      height: height ?? IconTheme.of(context).size,
      width: width ?? IconTheme.of(context).size,
    );
  }
}
