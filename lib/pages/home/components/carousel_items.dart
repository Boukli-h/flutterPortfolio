import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/utils/constants.dart';

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "FULL STACK DEVELOPER",
          style: GoogleFonts.oswald(
            color: kPrimaryColor,
            fontWeight: FontWeight.w900,
            fontSize: 16.0,
          ),
        ),//title
        SizedBox(
          height: 18.0,
        ),
        Text(
          "WAFAA\nBOUKLI-HACENE",
          style: GoogleFonts.oswald(
            color: Colors.white,
            fontSize: 40.0,
            fontWeight: FontWeight.w900,
            height: 1.3,
          ),
        ),//name
        SizedBox(
          height: 10.0,
        ),
        Container(
          child: Wrap(
            children: [
              Text(
                "Need a full custom website?",
                style: TextStyle(
                  color: kCaptionColor,
                  fontSize: 15.0,
                  height: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    " Let's talk.",
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              )//let's talk
            ],
          ),
        ),//text
        SizedBox(
          height: 25.0,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 48.0,
            padding: EdgeInsets.symmetric(
              horizontal: 28.0,
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                "GET STARTED",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )//get started button
      ],
    ),
    image: Container(
      width: 300.0,
      height: 300.0,
      decoration: new BoxDecoration(
        shape: BoxShape.circle,
      image: new DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/wafaa boukli pic.jpg",)
      ),),
    ),

  ),
);
