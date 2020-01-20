import 'dart:async';
import 'package:anima_clock/style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:flutter/services.dart';
import 'package:flare_flutter/flare_actor.dart';

class AnimaClock extends StatefulWidget {
  const AnimaClock(this.model);

  final ClockModel model;

  @override
  _AnimaClockState createState() => _AnimaClockState();
}

class _AnimaClockState extends State<AnimaClock> {
  var dateTimeNow = DateTime.now();
  var temp = "";
  var tempRange = "";
  var condition = "";
  var location = "";
  var modTemp;
  var tempUnit;
  Timer timer;
  var animationPath = "assets/animations/animations.flr";

  // Tick the clock
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    widget.model.addListener(updateModel);
    updateTime();
    updateModel();
  }

  @override
  void didUpdateWidget(AnimaClock oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.model != oldWidget.model) {
      oldWidget.model.removeListener(updateModel);
      widget.model.addListener(updateModel);
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    widget.model.removeListener(updateModel);
    super.dispose();
  }

  void updateTime() {
    setState(() {
      dateTimeNow = DateTime.now();
      timer = Timer(
        Duration(seconds: 1) - Duration(milliseconds: dateTimeNow.millisecond),
        updateTime,
      );
    });
  }

  void updateModel() {
    setState(() {
      temp = widget.model.temperatureString;
      tempRange = '(${widget.model.low} - ${widget.model.highString})';
      condition = widget.model.weatherString;
      location = widget.model.location;
      modTemp = widget.model.temperature;
      tempUnit = widget.model.unitString;
    });
  }

  @override
  Widget build(BuildContext context) {
    Theme.of(context).brightness == Brightness.light
        ? lightTheme(condition, modTemp, tempUnit)
        : darkTheme(condition, modTemp, tempUnit);

    final hour = DateFormat(widget.model.is24HourFormat ? "HH" : "hh")
        .format(dateTimeNow);
    final minute = DateFormat("mm").format(dateTimeNow);

    final date = DateFormat("dd-MM-yyyy").format(dateTimeNow);

    final fontSize = MediaQuery.of(context).size.width / 3.5;

    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        Opacity(
          opacity: cloudyBlack,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "cloudy_black_entry",
          ),
        ),

        Opacity(
          opacity: rainyBlack,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "rain_black",
          ),
        ),
        Opacity(
          opacity: snowyBlack,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "snowy_black",
          ),
        ),
        Opacity(
          opacity: sunnyBlack,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "sunny_black",
          ),
        ),
        Opacity(
          opacity: thunderstormBlack,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "thunderstorm_black",
          ),
        ),
        Opacity(
          opacity: windyBlack,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "windy_black",
          ),
        ),
        ////////////////----------White widgets animation------//////////
        Opacity(
          opacity: cloudyWhite,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "cloudy_white_entry",
          ),
        ),

        Opacity(
          opacity: rainyWhite,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "rain_white",
          ),
        ),
        Opacity(
          opacity: snowyWhite,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "snowy_white",
          ),
        ),
        Opacity(
          opacity: sunnyWhite,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "sunny_white",
          ),
        ),
        Opacity(
          opacity: thunderstormWhite,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "thunderstorm_white",
          ),
        ),
        Opacity(
          opacity: windyWhite,
          child: FlareActor(
            animationPath,
            alignment: Alignment.center,
            fit: BoxFit.fill,
            animation: "windy_white",
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    weatherIcon,
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                    //alignment: Alignment.center,
                  ),
                ),
                Container(
                  child: Text(
                    condition.toUpperCase(),
                    style: TextStyle(
                      fontFamily: "Rancho",
                      fontSize: fontSize / 10,
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  child: Text(
                    date,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Rancho",
                      fontSize: fontSize / 10,
                    ),
                  ),
                ),
              ],
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Image.asset(
                  tempIcon,
                  height: 40,
                  width: 40,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                child: Text(
                  temp,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Rancho",
                    fontSize: fontSize / 10,
                  ),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  location,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Rancho",
                    fontSize: fontSize / 10,
                  ),
                ),
              ),
            ],
          ),
        ),

        //The Clock Is Here->>>>
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.max,
          // crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Container(
              child: Text(
                hour,
                style: TextStyle(
                  fontFamily: defaultFont,
                  fontSize: fontSize,
                  color: textColor,
                ),
              ),
            ),
            Container(
              child: Text(
                ":",
                style: TextStyle(
                  fontFamily: defaultFont,
                  fontSize: fontSize,
                  color: textColor,
                ),
              ),
            ),
            Container(
              child: Text(
                minute,
                style: TextStyle(
                  fontFamily: defaultFont,
                  fontSize: fontSize,
                  color: textColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
