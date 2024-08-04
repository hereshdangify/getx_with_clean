import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MusicHandlerWidget extends StatelessWidget {
  const MusicHandlerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Color(0xffE76F51),
            thumbColor: Color(0xffE76F51),
          ),

          //Slider--------------------------------------------------------------------
          child: Slider(
            min: 0,
            max: 10,
            value: 10.0,
            onChanged: (value) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              //Total time-------------------------------------------------------------
              Text(
                '00:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Spacer(),

              //Current time-----------------------------------------------------------
              Text(
                '00:00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
          child: Row(
            children: [
              Icon(Iconsax.repeate_music4, color: Colors.white, size: 40),
              Spacer(),
              Row(
                children: [
                  //backward-------------------------------------------------
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.backward_end_fill,
                        color: Colors.white, size: 50),
                  ),
                  SizedBox(width: 15),

                  //play and pause-----------------------------------------------------
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.play_circle_fill,
                      color: Colors.white,
                      size: 60,
                    ),
                  ),
                  SizedBox(width: 15),

                  //forward-------------------------------------------------
                  IconButton(
                    onPressed: () {},
                    icon: Icon(CupertinoIcons.forward_end_fill,
                        color: Colors.white, size: 40),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(CupertinoIcons.download_circle,
                    color: Colors.white, size: 40),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
