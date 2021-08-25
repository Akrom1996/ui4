import 'package:flutter/material.dart';

class customCard extends StatelessWidget {
  const customCard({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [
              Colors.black38,
              Colors.black26,
              Colors.black12,
            ],
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "PDP Car  ",
                    style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Electric",
                    style: TextStyle(
                        color: Colors.red[400],
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "100\$",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Container(
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              width: 40,
              height: 40,
              child: Icon(
                Icons.favorite_outline,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
