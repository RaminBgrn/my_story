import 'dart:ui';

import 'package:fleather/fleather.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_story/constants/material_color.dart';
import 'package:my_story/gen/fonts.gen.dart';

class TextBoxWidget extends StatelessWidget {
  const TextBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            width: MediaQuery.sizeOf(context).width,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: myGrey[600]!.withValues(alpha: 0.5),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'RaminBGrn',
                        style: GoogleFonts.caveat(color: myGrey[100], fontSize: 16),
                      ),
                      Row(
                        spacing: 4,
                        children: [
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: myGreen[500],
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: myOrange[500],
                            ),
                          ),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: myRed[500],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   height: 0.5,
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       begin: Alignment.centerLeft,
                //       end: Alignment.centerRight,
                //       colors: [
                //         Colors.transparent,
                //         myGrey[50]!,
                //         Colors.transparent,
                //       ],
                //     ),
                //   ),
                // )
                // Expanded(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(14),
                //     child: BackdropFilter(
                //       filter: ImageFilter.blur(sigmaY: 1, sigmaX: 1),
                //       child: Container(
                //         margin: const EdgeInsets.only(bottom: 4, left: 4, right: 4),
                //         decoration: BoxDecoration(
                //           borderRadius: BorderRadius.circular(18),
                //           color: myGrey[900]!.withValues(alpha: 0.4),
                //         ),
                //       ),
                //     ),
                //   ),
                // )
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(bottom: 4, left: 4, right: 4),
                      alignment: Alignment.topCenter,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        // color: myGrey[900],
                        border: Border.all(
                          width: 1,
                          color: myOrange[500]!.withValues(
                            alpha: 0.5,
                          ),
                        ),
                      ),
                      child: FleatherField(controller: FleatherController())
                      //  Text(
                      //   "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد، کتابهای",
                      //   textDirection: TextDirection.rtl,
                      //   style: TextStyle(
                      //     fontFamily: FontFamily.mikhak,
                      //     fontSize: 14,
                      //     color: myGrey[200],
                      //   ),
                      // ),
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
