import 'package:flutter/material.dart';

Text vibeeLogo({double? size}) {
  size = size ?? 40;
  return Text(
    "Vibee",
    style: TextStyle(
        fontSize: size, fontFamily: "AutumnInNovember", color: Colors.white),
  );
}

Widget vibeeText(
  String content, {
  double? size,
  FontWeight? fontWeight,
  Color? color,
  double? height,
  double? width,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: Text(
      content,
      style: TextStyle(
        fontSize: size,
        color: color ?? Colors.white,
        fontWeight: fontWeight,
      ),
    ),
  );
}

Widget vibeeTextFormField({
  String? hint,
  Widget? prefixIcon,
  Widget? suffixIcon,
  double? width,
  bool? isPassword,
  Function? onTap,
  Function? onChanged,
  TextEditingController? textController,
  TextInputType? textInputType,
}) {
  width = width ?? 300;
  return SizedBox(
    height: 45,
    width: width,
    child: TextFormField(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      onChanged: (value) {
        if (onChanged != null) {
          onChanged();
        }
      },
      obscureText: isPassword ?? false,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.white),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(10)),
        filled: true,
        fillColor: const Color.fromARGB(255, 51, 51, 51),
      ),
      style: const TextStyle(color: Colors.white),
      controller: textController,
    ),
  );
}

Widget vibeeButton({
  required String content,
  required Function onPressed,
  double? width,
  double? height,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
        onPressed: () {
          onPressed();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: vibeePurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        child: vibeeText(content)),
  );
}

Widget vibeeIconButton({
  required String content,
  required Function onPressed,
  required IconData ico,
  double? width,
  double? height,
  double? iconSize,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton.icon(
        onPressed: () {
          onPressed();
        },
        icon: Icon(
          ico,
          size: iconSize,
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: vibeePurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
        label: vibeeText(content)),
  );
}

Widget vibeeDp({
  required ImageProvider<Object> image,
  double? height,
  double? width,
}) {
  return Container(
    height: height ?? 60,
    width: width ?? 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(100),
      border: Border.all(
        width: 2,
        color: Colors.white,
      ),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: image,
      ),
    ),
  );
}

Widget vibeeOutlineButton({
  required String message,
  Function? onPressed,
  double? textSize,
  double? width,
  double? height,
  double? borderRadius,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
        onPressed: () {
          if (onPressed != null) {
            onPressed();
          }
        },
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 0))),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            side: const MaterialStatePropertyAll(
              BorderSide(color: Colors.white),
            ),
            iconColor: const MaterialStatePropertyAll(Colors.white)),
        child: vibeeText(message, color: Colors.white, size: textSize)),
  );
}

Widget vibeeListTile({
  double? width,
  double? height,
  String? title,
  String? subtitle,
  Widget? prefixWidget,
  Widget? suffixWidget,
  double? iconSize,
  Color? iconColor,
  double? titleSize,
  double? subtitleSize,
  Color? backgroundClr,
  double? leftMArgin,
  double? topMargin,
  bool? isSelected,
  Function? onTap,
  Function? onLongPress,
  double? borderRadius,
}) {
  return InkWell(
    onTap: () {
      if (onTap != null) {
        onTap();
      }
    },
    onLongPress: () {
      if (onLongPress != null) {
        onLongPress();
      }
    },
    child: Stack(
      children: [
        Container(
          height: height ?? 75,
          width: width ?? double.maxFinite,
          decoration: BoxDecoration(
              color: backgroundClr ?? backgroundScreenColor2,
              borderRadius:
                  BorderRadius.all(Radius.circular(borderRadius ?? 0))),
        ),
        Positioned(
          top: topMargin ?? (height == null ? 0 : height / 2),
          left: leftMArgin ?? 10,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: prefixWidget,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vibeeText("$title",
                      size: titleSize ?? 20, fontWeight: FontWeight.w500),
                  const SizedBox(height: 2),
                  vibeeText(subtitle ?? '',
                      size: subtitleSize, color: Colors.white54),
                ],
              )
            ],
          ),
        ),
        Positioned(
          top: height == null ? 25 : height / 2,
          right: 20,
          child: suffixWidget ?? const Text(''),
        ),
        Visibility(
          visible: isSelected ?? false,
          child: const Positioned(
              bottom: 5,
              left: 65,
              child: Icon(
                Icons.check_circle,
                color: Colors.green,
              )),
        )
      ],
    ),
  );
}

const Color backgroundScreenColor = Color.fromARGB(255, 25, 25, 25);
const Color backgroundScreenColor2 = Color.fromARGB(255, 35, 35, 35);
const Color vibeePurple = Color.fromARGB(255, 131, 39, 255);

showSnackBar({
  required context,
  required message,
  double? leftPadding,
  double? rightPadding,
  double? topPadding,
  double? bottomPadding,
  double? height,
  double? width,
  bool? buttonVisibility,
  Function? buttonFunction,
  Color? textColor,
  Color? backgroundColor,
  String? buttonText,
}) {
  // Showing a snack bar using ScaffoldMessenger
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      // Setting the elevation to 0 to make the snack bar flat
      elevation: 0,
      content: Padding(
        padding: EdgeInsets.fromLTRB(
          leftPadding ?? 10,
          topPadding ?? 10,
          rightPadding ?? 10,
          bottomPadding ?? 10,
        ),
        child: Card(
          color: backgroundColor ?? backgroundScreenColor2,
          // Rounding the border of the card
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          // Setting the clipping behavior for the card
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 1,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: height ?? 50,
            width: width,
            child: Row(
              children: [
                const SizedBox(width: 5, height: 0),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      vibeeText(message, color: textColor),
                    ],
                  ),
                ),
                Visibility(
                    visible: buttonVisibility ?? false,
                    child: Row(
                      children: [
                        Container(
                            color: Colors.grey,
                            height: 35,
                            width: 1,
                            margin: const EdgeInsets.symmetric(horizontal: 5)),
                        SnackBarAction(
                          label: buttonText ?? "OK",
                          textColor: Theme.of(context).colorScheme.primary,
                          onPressed: () {
                            if (buttonFunction != null) {
                              buttonFunction();
                            } else {
                              Navigator.of(context).pop();
                              // homeScaffoldKey.currentState.hideCurrentSnackBar();
                            }
                          },
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
      // Setting the background color to transparent
      backgroundColor: Colors.transparent,
      // Setting the duration for how long the snack bar should be visible
      duration: const Duration(seconds: 3),
    ),
  );
}

showVibeeModelBottomSheet(
    {required BuildContext context, List<Widget>? buttons, String? title}) {
  showModalBottomSheet<void>(
    context: context,
    backgroundColor: backgroundScreenColor2,
    builder: (BuildContext context) {
      return SizedBox(
        height: 150,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              vibeeText(
                title ?? '',
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [...?buttons],
              ),
            ],
          ),
        ),
      );
    },
  );
}
