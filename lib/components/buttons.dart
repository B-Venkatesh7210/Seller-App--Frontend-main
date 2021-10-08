// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/components.dart';
import '../constants/constants.dart';

class MyButton extends StatelessWidget {
  /// This is default Constructor of [MyButton] class
  ///
  /// This returns a Primary Button
  ///
  /// The Other two Constructors are [MyButton.secondary] and [MyButton.outlined].
  MyButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.buttonSize = ButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.leading,
    this.isCTA = false,
    this.rounded = false,
    this.backgroundColor = kPrimaryColor,
    this.elevation = 0,
  }) : super(key: key);

  /// This is secondary Constructor of [MyButton] class
  ///
  /// This returns a Secondary Button
  ///
  /// The Other two Constructors are [MyButton](default Constructor) and [MyButton.outlined].
  MyButton.secondary({
    Key? key,
    required this.label,
    required this.onPressed,
    this.buttonSize = ButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.leading,
    this.isCTA = false,
    this.rounded = false,
    this.backgroundColor = kSecondaryBackgroundColor,
    Color labelColor = kSecondaryColor,
    this.elevation = 0,
  }) : super(key: key) {
    _buttonType = ButtonType.secondary;
    _labelColor = labelColor;
  }

  /// This is outlined Constructor of [MyButton] class
  ///
  /// This returns a Outlined Button
  ///
  /// The Other two Constructors are [MyButton](default Constructor) and [MyButton.secondary].
  MyButton.outlined({
    Key? key,
    required this.label,
    required this.onPressed,
    this.buttonSize = ButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.leading,
    this.isCTA = false,
    this.rounded = false,
    this.backgroundColor = kPrimaryColor,
    this.elevation = 0,
  }) : super(key: key) {
    _buttonType = ButtonType.outlined;
    _labelColor = backgroundColor!;
    switch (buttonSize) {
      case ButtonSize.small:
        _outlinedWidth = kSmallBorderWidth;
        break;
      case ButtonSize.medium:
        _outlinedWidth = kMediumBorderWidth;
        break;
      case ButtonSize.large:
        _outlinedWidth = kLargeBorderWidth;
        break;
      default:
    }
  }

  /// if buttonSize is [ButtonSize.small], icon won't be displayed in the button
  final IconData? icon;

  /// The buttonSize of the button is to describe how big or how small the button will be
  ///
  /// buttonSize could be any of the the [enums].
  ///
  /// [ButtonSize.small], [ButtonSize.medium], [ButtonSize.large].
  final ButtonSize? buttonSize;
  final String? label;
  final VoidCallback? onPressed;
  final bool? isCTA;
  final Color? backgroundColor;
  final double? elevation;
  final IconPosition? iconPosition;
  final bool rounded;

  late double _spaceInBetween;
  late double _horizontalPadding;
  late double _verticalPadding;
  late TextStyle _labelStyle;
  late OutlinedBorder _buttonShape;

  ButtonType _buttonType = ButtonType.primary;
  Color _labelColor = kWhiteColor;
  double _outlinedWidth = 0;
  bool _showIcon = true;

  setValues(
    Size size, {
    required TextStyle style,
    required double padding,
    required OutlinedBorder shape,
    double space = 0.0,
    bool? important = false,
  }) {
    _spaceInBetween = _showIcon ? space : 0;
    _labelStyle = style.copyWith(color: _labelColor);
    _horizontalPadding = important! ? size.width * 0.2 : padding;
    _verticalPadding = important
        ? padding / 2.5
        : rounded
            ? padding / 6
            : padding / 3;
    _buttonShape = shape;
  }

  setSize(Size size) {
    if (isCTA! || icon == null) _showIcon = false;
    switch (buttonSize) {
      case ButtonSize.small:
        // _showIcon = false;
        setValues(
          size,
          space: size.width * 0.02,
          style: Get.textTheme.subtitle2!,
          padding: size.width * 0.035,
          shape: rounded ? kRoundedButtonShape : kSmallButtonShape,
        );
        break;
      case ButtonSize.medium:
        setValues(
          size,
          space: size.width / 50,
          style: Get.textTheme.subtitle1!,
          padding: size.width * 0.075,
          shape: rounded ? kRoundedButtonShape : kMediumButtonShape,
          important: isCTA,
        );
        break;
      case ButtonSize.large:
        setValues(
          size,
          space: size.width / 30,
          style: Get.textTheme.headline5!,
          padding: size.width * 0.1,
          shape: rounded ? kRoundedButtonShape : kLargeButtonShape,
          important: isCTA,
        );
        break;
      default:
        setValues(
          size,
          space: size.width / 30,
          style: Get.textTheme.headline6!,
          padding: size.width / 20,
          shape: rounded ? kRoundedButtonShape : kMediumButtonShape,
        );
    }
  }

  Widget _buildLabel() {
    return _BuildLabel(
      label: label,
      labelStyle: _labelStyle,
      spaceInBetween: _spaceInBetween,
      showIcon: _showIcon,
      iconData: icon,
      iconPosition: iconPosition!,
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    setSize(size);
    final EdgeInsets _buttonPadding = EdgeInsets.symmetric(
      horizontal: _horizontalPadding,
      vertical: _verticalPadding,
    );
    switch (_buttonType) {
      case ButtonType.primary:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: backgroundColor ?? kPrimaryColor,
            padding: _buttonPadding,
            shape: _buttonShape,
            elevation: elevation,
          ),
          onPressed: onPressed,
          child: _buildLabel(),
        );
      case ButtonType.secondary:
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: backgroundColor ?? kSecondaryColor,
            padding: _buttonPadding,
            shape: _buttonShape,
            elevation: elevation,
          ),
          onPressed: onPressed,
          child: _buildLabel(),
        );
      default:
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: backgroundColor ?? kPrimaryColor,
              width: _outlinedWidth,
            ),
            primary: backgroundColor ?? kPrimaryColor,
            padding: _buttonPadding,
            shape: _buttonShape,
            elevation: 0,
          ),
          onPressed: onPressed,
          child: _buildLabel(),
        );
    }
  }
}

class _BuildLabel extends StatelessWidget {
  const _BuildLabel({
    Key? key,
    required this.label,
    required TextStyle labelStyle,
    required double spaceInBetween,
    required bool showIcon,
    required this.iconData,
    required this.iconPosition,
  })  : _labelStyle = labelStyle,
        _spaceInBetween = spaceInBetween,
        _showIcon = showIcon,
        super(key: key);

  final String? label;
  final TextStyle _labelStyle;
  final double _spaceInBetween;
  final bool _showIcon;
  final IconData? iconData;
  final IconPosition iconPosition;

  @override
  Widget build(BuildContext context) {
    late List<Widget> _children;
    final Text text = Text(label!, style: _labelStyle);
    if (_showIcon && iconData != null) {
      final Icon icon = Icon(iconData);
      final Widget space = SizedBox(width: _spaceInBetween);
      switch (iconPosition) {
        case IconPosition.leading:
          _children = [
            icon,
            space,
            text,
          ];
          break;
        case IconPosition.trailing:
          _children = [
            text,
            space,
            icon,
          ];
          break;
        default:
          _children = [
            icon,
            space,
            text,
          ];
      }
    } else {
      _children = <Widget>[
        Text(label!, style: _labelStyle),
      ];
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: _children,
    );
  }
}

class LongButton extends StatelessWidget {
  const LongButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.buttonSize = ButtonSize.medium,
    this.icon,
    this.iconPosition = IconPosition.leading,
    this.isCTA = false,
    this.backgroundColor = kPrimaryColor,
    this.elevation = 0,
  }) : super(key: key);

  final IconData? icon;
  final ButtonSize? buttonSize;
  final String? label;
  final VoidCallback? onPressed;
  final bool? isCTA;
  final Color? backgroundColor;
  final double? elevation;
  final IconPosition? iconPosition;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: MyButton(
        label: label,
        onPressed: onPressed,
        buttonSize: buttonSize,
        icon: icon,
        iconPosition: iconPosition,
        isCTA: isCTA,
        backgroundColor: backgroundColor,
        elevation: elevation,
      ),
    );
  }
}

class HelpChip extends StatelessWidget {
  const HelpChip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = mediaSize(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.width * 0.025,
      ),
      child: MyButton.outlined(
        label: 'Help',
        buttonSize: ButtonSize.small,
        icon: Icons.phone_rounded,
        onPressed: () => Get.dialog(const CallSupportDialog()),
        rounded: true,
        backgroundColor: kSecondaryColor,
      ),
    );
  }
}
