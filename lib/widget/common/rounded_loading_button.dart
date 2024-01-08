import 'dart:async';

import 'package:flutter/material.dart';

enum ButtonState { idle, loading, success, error }

class RoundedLoadingButton extends StatefulWidget {
  /// 控制按钮状态
  final RoundedLoadingButtonController controller;
  final Color? background;
  final double height;
  final double width;
  final VoidCallback? onPressed;
  final double borderRadius;
  final Widget child;

  /// loading动画Size
  final double loadingSize;

  /// loading动画圆环粗细
  final double loadingStrokeWidth;

  /// 点击后是否展示动画
  final bool animateOnTap;

  /// icon颜色
  final Color iconColor;

  /// 是否在动画之后重置状态，重置时间取决于[resetDuration]
  final bool resetAfterDuration;
  final Duration resetDuration;

  /// 按钮动画曲线
  final Curve curve;
  final Duration duration;
  final double elevation;
  final Color? successColor;
  final Color? failedColor;
  final Color? disabledColor;

  /// 成功图标
  final IconData successIcon;

  /// 失败图标
  final IconData failedIcon;

  /// 成功/失败出现动画曲线
  final Curve completionCurve;

  /// 成功/失败出现动画时长
  final Duration completionDuration;

  Duration get _borderDuration {
    return Duration(milliseconds: (duration.inMilliseconds / 2).round());
  }

  const RoundedLoadingButton({
    super.key,
    required this.controller,
    required this.onPressed,
    required this.child,
    this.background = Colors.lightBlue,
    this.height = 50,
    this.width = 300,
    this.loadingSize = 24.0,
    this.loadingStrokeWidth = 2.0,
    this.animateOnTap = true,
    this.iconColor = Colors.white,
    this.borderRadius = 35,
    this.elevation = 2,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeInOutCirc,
    this.failedColor = Colors.red,
    this.successColor,
    this.resetDuration = const Duration(seconds: 15),
    this.resetAfterDuration = false,
    this.successIcon = Icons.check,
    this.failedIcon = Icons.close,
    this.completionCurve = Curves.elasticOut,
    this.completionDuration = const Duration(milliseconds: 1000),
    this.disabledColor,
  });

  @override
  State<StatefulWidget> createState() => RoundedLoadingButtonState();
}

class RoundedLoadingButtonState extends State<RoundedLoadingButton>
    with TickerProviderStateMixin {
  late AnimationController _buttonController;
  late AnimationController _borderController;
  late AnimationController _checkButtonController;

  late Animation _squeezeAnimation;
  late Animation _bounceAnimation;
  late Animation _borderAnimation;

  final _state = StreamController<ButtonState>()..add(ButtonState.idle);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      child: StreamBuilder<ButtonState>(
        stream: _state.stream,
        builder: (context, snapshot) {
          final state = snapshot.data;
          switch (state) {
            case ButtonState.success:
              return _check(context);
            case ButtonState.error:
              return _cross(context);
            default:
              return _button(state);
          }
        },
      ),
    );
  }

  Widget _check(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      alignment: FractionalOffset.center,
      decoration: BoxDecoration(
        color: widget.successColor ?? theme.primaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(_bounceAnimation.value / 2),
        ),
      ),
      width: _bounceAnimation.value,
      height: _bounceAnimation.value,
      child: _bounceAnimation.value > 20
          ? Icon(widget.successIcon, color: widget.iconColor)
          : null,
    );
  }

  Widget _cross(BuildContext context) {
    return Container(
      alignment: FractionalOffset.center,
      decoration: BoxDecoration(
        color: widget.failedColor,
        borderRadius: BorderRadius.all(
          Radius.circular(_bounceAnimation.value / 2),
        ),
      ),
      width: _bounceAnimation.value,
      height: _bounceAnimation.value,
      child: _bounceAnimation.value > 20
          ? Icon(widget.failedIcon, color: widget.iconColor)
          : null,
    );
  }

  Widget _loading() {
    return SizedBox(
      height: widget.loadingSize,
      width: widget.loadingSize,
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(widget.iconColor),
        strokeWidth: widget.loadingStrokeWidth,
      ),
    );
  }

  Widget _button(ButtonState? state) {
    return ButtonTheme(
      shape: RoundedRectangleBorder(borderRadius: _borderAnimation.value),
      disabledColor: widget.disabledColor,
      padding: EdgeInsets.zero,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(_squeezeAnimation.value, widget.height),
          backgroundColor: widget.background,
          disabledForegroundColor: widget.disabledColor?.withOpacity(0.38),
          disabledBackgroundColor: widget.disabledColor?.withOpacity(0.12),
          shape: RoundedRectangleBorder(borderRadius: _borderAnimation.value),
          elevation: widget.elevation,
          padding: EdgeInsets.zero,
        ),
        onPressed: widget.onPressed == null ? null : _btnPressed,
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: state == ButtonState.loading ? _loading() : widget.child,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    _buttonController =
        AnimationController(duration: widget.duration, vsync: this);

    _checkButtonController =
        AnimationController(duration: widget.completionDuration, vsync: this);

    _borderController =
        AnimationController(duration: widget._borderDuration, vsync: this);

    _bounceAnimation = Tween<double>(begin: 0, end: widget.height).animate(
      CurvedAnimation(
        parent: _checkButtonController,
        curve: widget.completionCurve,
      ),
    );
    _bounceAnimation.addListener(() {
      setState(() {});
    });

    _squeezeAnimation =
        Tween<double>(begin: widget.width, end: widget.height).animate(
      CurvedAnimation(parent: _buttonController, curve: widget.curve),
    );

    _squeezeAnimation.addListener(() {
      setState(() {});
    });

    _squeezeAnimation.addStatusListener((state) {
      if (state == AnimationStatus.completed && widget.animateOnTap) {
        widget.onPressed?.call();
      }
    });

    _borderAnimation = BorderRadiusTween(
      begin: BorderRadius.circular(widget.borderRadius),
      end: BorderRadius.circular(widget.height),
    ).animate(_borderController);

    _borderAnimation.addListener(() {
      setState(() {});
    });

    widget.controller._addListeners(_start, _stop, _success, _error, _reset);
  }

  @override
  void dispose() {
    _buttonController.dispose();
    _checkButtonController.dispose();
    _borderController.dispose();
    _state.close();
    super.dispose();
  }

  void _btnPressed() async {
    if (widget.animateOnTap) {
      _start();
    } else {
      widget.onPressed?.call();
    }
  }

  void _start() {
    if (!mounted) return;
    _state.sink.add(ButtonState.loading);
    _borderController.forward();
    _buttonController.forward();
    if (widget.resetAfterDuration) _reset();
  }

  void _stop() {
    if (!mounted) return;
    _state.sink.add(ButtonState.idle);
    _buttonController.reverse();
    _borderController.reverse();
  }

  void _success() {
    if (!mounted) return;
    _state.sink.add(ButtonState.success);
    _checkButtonController.forward();
  }

  void _error() {
    if (!mounted) return;
    _state.sink.add(ButtonState.error);
    _checkButtonController.forward();
  }

  void _reset() async {
    if (widget.resetAfterDuration) await Future.delayed(widget.resetDuration);
    if (!mounted) return;
    _state.sink.add(ButtonState.idle);
    unawaited(_buttonController.reverse());
    unawaited(_borderController.reverse());
    _checkButtonController.reset();
  }
}

class RoundedLoadingButtonController {
  VoidCallback? _startListener;
  VoidCallback? _stopListener;
  VoidCallback? _successListener;
  VoidCallback? _errorListener;
  VoidCallback? _resetListener;

  void _addListeners(
    VoidCallback startListener,
    VoidCallback stopListener,
    VoidCallback successListener,
    VoidCallback errorListener,
    VoidCallback resetListener,
  ) {
    _startListener = startListener;
    _stopListener = stopListener;
    _successListener = successListener;
    _errorListener = errorListener;
    _resetListener = resetListener;
  }

  void start() {
    _startListener?.call();
  }

  void stop() {
    _stopListener?.call();
  }

  void success() {
    _successListener?.call();
  }

  void error() {
    _errorListener?.call();
  }

  void reset() {
    _resetListener?.call();
  }
}
