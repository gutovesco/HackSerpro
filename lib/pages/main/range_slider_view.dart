
import 'package:flutter/material.dart';
import 'package:megahack/pages/main/lojas_app_theme.dart';

class RangeSliderView extends StatefulWidget {
  const RangeSliderView({Key key, this.values, this.onChangeRangeValues})
      : super(key: key);

  final Function(RangeValues) onChangeRangeValues;
  final RangeValues values;

  @override
  _RangeSliderViewState createState() => _RangeSliderViewState();
}

class _RangeSliderViewState extends State<RangeSliderView> {
  RangeValues _values;

  @override
  void initState() {
    _values = widget.values;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    flex: _values.start.round(),
                    child: const SizedBox(),
                  ),
                  Container(
                    width: 54,
                    child: Text(
                      '\$${_values.start.round()}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 1000 - _values.start.round(),
                    child: const SizedBox(),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: _values.end.round(),
                    child: const SizedBox(),
                  ),
                  Container(
                    width: 54,
                    child: Text(
                      '\$${_values.end.round()}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex: 1000 - _values.end.round(),
                    child: const SizedBox(),
                  ),
                ],
              ),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              rangeThumbShape: CustomRangeThumbShape(),
            ),
            child: RangeSlider(
              values: _values,
              min: 0.0,
              max: 1000.0,
              activeColor: LojasAppTheme.buildLightTheme().primaryColor,
              inactiveColor: Colors.grey.withOpacity(0.4),
              divisions: 1000,
              onChanged: (RangeValues values) {
                try {
                  setState(() {
                    _values = values;
                  });
                  widget.onChangeRangeValues(_values);
                } catch (_) {}
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomRangeThumbShape extends RangeSliderThumbShape {
  static const double _thumbSize = 3.0;
  static const double _disabledThumbSize = 3.0;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return isEnabled
        ? const Size.fromRadius(_thumbSize)
        : const Size.fromRadius(_disabledThumbSize);
  }

  static final Animatable<double> sizeTween = Tween<double>(
    begin: _disabledThumbSize,
    end: _thumbSize,
  );

  @override
  void paint(PaintingContext context, Offset center, {Animation<double> activationAnimation, Animation<double> enableAnimation, bool isDiscrete, bool isEnabled, bool isOnTop, TextDirection textDirection, SliderThemeData sliderTheme, Thumb thumb, bool isPressed}) {
    // TODO: implement paint
  }

 
}
