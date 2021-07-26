import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  final onPress;
  final int duration;
  final double activeOpacity;

  const GradientButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.height = 50.0,
    this.width = double.infinity,
    this.duration = 150,
    this.activeOpacity = 0.5,
  }) : super(key: key);

  @override
  _GradientButtonState createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  double opacity = 1.0;

  void onTap() {
    setState(() {
      opacity = widget.activeOpacity;
    });
    widget.onPress();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedOpacity(
        onEnd: () {
          setState(() {
            opacity = 1.0;
          });
        },
        duration: Duration(milliseconds: widget.duration),
        opacity: opacity,
        child: Container(
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Theme.of(context).accentColor,
                    Theme.of(context).primaryColor
                  ])),
          child: Center(
            child: Text(
              widget.text,
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ),
      ),
    );
  }
}
