import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

class WebsiteAd extends StatelessWidget {
  // We can use same idea as ios_app_ad.dart and swap children order, let's copy code
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Container(
              child: Column(
                children: [
                  Flex(
                    direction: constraints.maxWidth > 720
                        ? Axis.horizontal
                        : Axis.vertical,
                    children: [
                      // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "WEBSITE",
                              style: GoogleFonts.oswald(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),//Title
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "NETBEANS JAVA WEBSITE",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                height: 1.3,
                                fontSize: 35.0,
                              ),
                            ),//website Subject
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Develop an Ecommerce Website on Netbeans IDE. "
                                  "Technologies: J2EE, EJB, JSP, JPA, JSTL, JDBC, HTML, CSS, JS."
                                  "Dev tools: Netbeans, GlassFish, MySQL)."
                              ,
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 15.0,
                              ),
                            ),//description
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
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
                                      child: Center(
                                        child: Text(
                                          "EXPLORE MORE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),//button Explore more
                                SizedBox(
                                  width: 10.0,
                                ),
                                // MouseRegion(
                                //   cursor: SystemMouseCursors.click,
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8.0),
                                //       border: Border.all(
                                //         color: kPrimaryColor,
                                //       ),
                                //     ),
                                //     height: 48.0,
                                //     padding: EdgeInsets.symmetric(horizontal: 28.0),
                                //     child: TextButton(
                                //       onPressed: () {},
                                //       child: Center(
                                //         child: Text(
                                //           "NEXT APP",
                                //           style: TextStyle(
                                //             color: kPrimaryColor,
                                //             fontSize: 13.0,
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // )//button NextApp
                              ],
                            ),//Buttons
                            SizedBox(
                              height: 70.0,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Image.asset(
                          "assets/java_web.png",
                          // Set width for image on smaller screen
                          width: constraints.maxWidth > 720.0 ? null : 350.0,
                        ),
                      ),//website picture


                    ],
                  ),


                  SizedBox(
                    height: 70.0,
                  ),

                  //second Website
                  Flex(
                    direction: constraints.maxWidth > 720
                        ? Axis.horizontal
                        : Axis.vertical,
                    children: [
                      // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Image.asset(
                          "assets/react.png",
                          // Set width for image on smaller screen
                          width: constraints.maxWidth > 720.0 ? null : 350.0,
                        ),
                      ),//website picture

                      SizedBox(
                        width: 25.0,
                      ),
                      Expanded(
                        flex: constraints.maxWidth > 720.0 ? 1 : 0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "WEBSITE",
                              style: GoogleFonts.oswald(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.w900,
                                fontSize: 16.0,
                              ),
                            ),//Title
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "REACT JS WEBSITE",
                              style: GoogleFonts.oswald(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                height: 1.3,
                                fontSize: 35.0,
                              ),
                            ),//website Subject
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Develop a React JAVA SCRIPT Website using VS code and NodeJS. "
                                  " Technologies: HTML, CSS, AND REACT CONTEXT API."

                              ,
                              style: TextStyle(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 15.0,
                              ),
                            ),//description
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
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
                                      child: Center(
                                        child: Text(
                                          "EXPLORE MORE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),//button Explore more
                                SizedBox(
                                  width: 10.0,
                                ),
                                // MouseRegion(
                                //   cursor: SystemMouseCursors.click,
                                //   child: Container(
                                //     decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8.0),
                                //       border: Border.all(
                                //         color: kPrimaryColor,
                                //       ),
                                //     ),
                                //     height: 48.0,
                                //     padding: EdgeInsets.symmetric(horizontal: 28.0),
                                //     child: TextButton(
                                //       onPressed: () {},
                                //       child: Center(
                                //         child: Text(
                                //           "NEXT APP",
                                //           style: TextStyle(
                                //             color: kPrimaryColor,
                                //             fontSize: 13.0,
                                //             fontWeight: FontWeight.bold,
                                //           ),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // )//button NextApp
                              ],
                            ),//Buttons
                            SizedBox(
                              height: 70.0,
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ],
              ),
            ),


          );
        },
      ),
    );
  }
}
