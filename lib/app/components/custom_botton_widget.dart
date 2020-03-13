import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  final Function onPressed;
  final String title;

  const CustomBotton({Key key, this.onPressed, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5, left: 13, top: 6, right: 13),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: 300,
          height: 40,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor.withAlpha(100),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(5, 5),
                blurRadius: 10,
              )
            ],
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
