import 'package:flutter/material.dart';

class ChildtaskTheme extends ThemeExtension<ChildtaskTheme> {
  final Color? dividerColor;
  final Color? cardBackground;
  final Color? cardBoxShadow;
  final Color? sectionTitleColor;
  final Color? finishMarkerColor;
  final Color? notFinishMarkerColor;

  // 亲子作业信息
  final Color? infoButtonTextColor;
  final Color? infoButtonBackground;

  // 作业列表
  final Color? finishCountTextColor;
  final Color? detailButtonBackground;
  final Color? detailButtonTextColor;
  final Color? finishButtonBackground;
  final Color? finishButtonTextColor;
  final Color? notFinishButtonBackground;
  final Color? notFinishButtonTextColor;

  // 作业详情
  final Color? likeCountTextColor;
  final Color? detailCardBackground1;
  final Color? detailCardBackground2;
  final Color? detailCardBackground3;

  // 发布者卡片
  final Color? publisherCardBackground;
  final Color? publisherNameColor;
  final Color? publisherPublishColor;

  // 作业进度
  final Color? mediaOuterBackground;
  final Color? resultCardBoxShadow;

  // 点赞
  final Color? likeColor;
  final Color? normalColor;

  // 讨论
  final Color? replyBackground;
  final Color? mainTextColor;
  final Color? subTextColor;
  final Color? countHighlightTextColor;
  final Color? replyButtonBorderColor;
  final Color? replyButtonTextColor;
  final Color? commentButtonBackground;
  final Color? commentButtonTextColor;

  // 回复
  final Color? replyContainerBoxShadow;
  final Color? replyTextFieldBackground;
  final Color? replyTextFieldInputTextColor;
  final Color? replyTextFieldHintTextColor;

  // 作业附件
  final Color? attachmentAddBorderColor;
  final Color? attachmentAddIconColor;
  final Color? attachmentButtonBorderColor;
  final Color? attachmentButtonBoxShadow;
  final Color? attachmentButtonBackground;

  const ChildtaskTheme({
    this.dividerColor,
    this.cardBackground,
    this.cardBoxShadow,
    this.sectionTitleColor,
    this.finishMarkerColor,
    this.notFinishMarkerColor,

    // 亲子作业信息
    this.infoButtonTextColor,
    this.infoButtonBackground,

    // 作业列表
    this.finishCountTextColor,
    this.detailButtonBackground,
    this.detailButtonTextColor,
    this.finishButtonBackground,
    this.finishButtonTextColor,
    this.notFinishButtonBackground,
    this.notFinishButtonTextColor,

    // 作业详情
    this.likeCountTextColor,
    this.detailCardBackground1,
    this.detailCardBackground2,
    this.detailCardBackground3,

    // 发布者卡片
    this.publisherCardBackground,
    this.publisherNameColor,
    this.publisherPublishColor,

    // 作业进度
    this.mediaOuterBackground,
    this.resultCardBoxShadow,

    // 点赞
    this.likeColor,
    this.normalColor,

    // 讨论
    this.replyBackground,
    this.mainTextColor,
    this.subTextColor,
    this.countHighlightTextColor,
    this.replyButtonBorderColor,
    this.replyButtonTextColor,
    this.commentButtonBackground,
    this.commentButtonTextColor,

    // 回复
    this.replyContainerBoxShadow,
    this.replyTextFieldBackground,
    this.replyTextFieldInputTextColor,
    this.replyTextFieldHintTextColor,

    // 作业附件
    this.attachmentAddBorderColor,
    this.attachmentAddIconColor,
    this.attachmentButtonBorderColor,
    this.attachmentButtonBoxShadow,
    this.attachmentButtonBackground,
  });

  static const light = ChildtaskTheme(
    dividerColor: Color(0xFFC2E8FF),
    cardBackground: Colors.white,
    cardBoxShadow: Color(0x1A021B25),
    sectionTitleColor: Color(0xFF009DFF),
    finishMarkerColor: Color(0xFF40CB72),
    notFinishMarkerColor: Color(0xFFFB3B54),

    // 亲子作业信息
    infoButtonTextColor: Color(0xFF009DFF),
    infoButtonBackground: Color(0x1A009DFF),

    // 作业列表
    finishCountTextColor: Color(0xFF009DFF),
    detailButtonBackground: Color(0x1AFFB247),
    detailButtonTextColor: Color(0xFFFFB247),
    finishButtonBackground: Color(0x1A25CD68),
    finishButtonTextColor: Color(0xFF25CD68),
    notFinishButtonBackground: Color(0x1AFF9B92),
    notFinishButtonTextColor: Color(0xFFFF796D),

    // 作业详情
    likeCountTextColor: Color(0xFFFB3B54),
    detailCardBackground1: Color(0xFFE4F8FF),
    detailCardBackground2: Color(0xFFF7FCFF),
    detailCardBackground3: Color(0xFFF8FCFF),

    // 发布者卡片
    publisherCardBackground: Color(0x1A76CAFF),
    publisherNameColor: Color(0xFF2E333E),
    publisherPublishColor: Color(0xFF9EA3BC),

    // 作业进度
    mediaOuterBackground: Color(0xFFFFDF7F),
    resultCardBoxShadow: Color(0x0F072D4D),

    // 点赞
    likeColor: Color(0xFFFB3B54),
    normalColor: Color(0xFF999999),

    // 讨论
    replyBackground: Color(0xFFFAFBFF),
    mainTextColor: Color(0xFF2E333E),
    subTextColor: Color(0xFF9EA3BC),
    countHighlightTextColor: Color(0xFF548DF3),
    replyButtonBorderColor: Color(0xFFD0D3E1),
    replyButtonTextColor: Color(0xFF548DF3),
    commentButtonBackground: Color(0x1AFFB247),
    commentButtonTextColor: Color(0xFFFFB247),

    // 回复
    replyContainerBoxShadow: Color(0x0A041B2D),
    replyTextFieldBackground: Color(0xFFE9F6FF),
    replyTextFieldInputTextColor: Color(0xFF2E333E),
    replyTextFieldHintTextColor: Color(0xFF009DFF),

    // 作业附件
    attachmentAddBorderColor: Color(0xFFE6E6E6),
    attachmentAddIconColor: Color(0xFFD0D3E1),
    attachmentButtonBorderColor: Color(0xFF0BB59B),
    attachmentButtonBoxShadow: Color(0x1A0B3758),
    attachmentButtonBackground: Colors.white,
  );
  static const dark = light;

  @override
  ThemeExtension<ChildtaskTheme> copyWith() {
    return light;
  }

  @override
  ThemeExtension<ChildtaskTheme> lerp(
      ThemeExtension<ChildtaskTheme>? other, double t) {
    if (other is! ChildtaskTheme) {
      return this;
    }
    return ChildtaskTheme(
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t),
      cardBackground: Color.lerp(cardBackground, other.cardBackground, t),
      cardBoxShadow: Color.lerp(cardBoxShadow, other.cardBoxShadow, t),
      sectionTitleColor:
          Color.lerp(sectionTitleColor, other.sectionTitleColor, t),
      finishMarkerColor:
          Color.lerp(finishMarkerColor, other.finishMarkerColor, t),
      notFinishMarkerColor:
          Color.lerp(notFinishMarkerColor, other.notFinishMarkerColor, t),

      // 亲子作业信息
      infoButtonTextColor:
          Color.lerp(infoButtonTextColor, other.infoButtonTextColor, t),
      infoButtonBackground:
          Color.lerp(infoButtonBackground, other.infoButtonBackground, t),

      // 作业列表
      finishCountTextColor:
          Color.lerp(finishCountTextColor, other.finishCountTextColor, t),
      detailButtonBackground:
          Color.lerp(detailButtonBackground, other.detailButtonBackground, t),
      detailButtonTextColor:
          Color.lerp(detailButtonTextColor, other.detailButtonTextColor, t),
      finishButtonBackground:
          Color.lerp(finishButtonBackground, other.finishButtonBackground, t),
      finishButtonTextColor:
          Color.lerp(finishButtonTextColor, other.finishButtonTextColor, t),
      notFinishButtonBackground: Color.lerp(
          notFinishButtonBackground, other.notFinishButtonBackground, t),
      notFinishButtonTextColor: Color.lerp(
          notFinishButtonTextColor, other.notFinishButtonTextColor, t),

      // 作业详情
      likeCountTextColor:
          Color.lerp(likeCountTextColor, other.likeCountTextColor, t),
      detailCardBackground1:
          Color.lerp(detailCardBackground1, other.detailCardBackground1, t),
      detailCardBackground2:
          Color.lerp(detailCardBackground2, other.detailCardBackground2, t),
      detailCardBackground3:
          Color.lerp(detailCardBackground3, other.detailCardBackground3, t),

      // 发布者卡片
      publisherCardBackground:
          Color.lerp(publisherCardBackground, other.publisherCardBackground, t),
      publisherNameColor:
          Color.lerp(publisherNameColor, other.publisherNameColor, t),
      publisherPublishColor:
          Color.lerp(publisherPublishColor, other.publisherPublishColor, t),

      // 作业进度
      mediaOuterBackground:
          Color.lerp(mediaOuterBackground, other.mediaOuterBackground, t),
      resultCardBoxShadow:
          Color.lerp(resultCardBoxShadow, other.resultCardBoxShadow, t),

      // 点赞
      likeColor: Color.lerp(likeColor, other.likeColor, t),
      normalColor: Color.lerp(normalColor, other.normalColor, t),

      // 讨论
      replyBackground: Color.lerp(replyBackground, other.replyBackground, t),
      mainTextColor: Color.lerp(mainTextColor, other.mainTextColor, t),
      subTextColor: Color.lerp(subTextColor, other.subTextColor, t),
      countHighlightTextColor:
          Color.lerp(countHighlightTextColor, other.countHighlightTextColor, t),
      replyButtonBorderColor:
          Color.lerp(replyButtonBorderColor, other.replyButtonBorderColor, t),
      replyButtonTextColor:
          Color.lerp(replyButtonTextColor, other.replyButtonTextColor, t),
      commentButtonBackground:
          Color.lerp(commentButtonBackground, other.commentButtonBackground, t),
      commentButtonTextColor:
          Color.lerp(commentButtonTextColor, other.commentButtonTextColor, t),

      // 回复
      replyContainerBoxShadow:
          Color.lerp(replyContainerBoxShadow, other.replyContainerBoxShadow, t),
      replyTextFieldBackground: Color.lerp(
          replyTextFieldBackground, other.replyTextFieldBackground, t),
      replyTextFieldInputTextColor: Color.lerp(
          replyTextFieldInputTextColor, other.replyTextFieldInputTextColor, t),
      replyTextFieldHintTextColor: Color.lerp(
          replyTextFieldHintTextColor, other.replyTextFieldHintTextColor, t),

      // 作业附件
      attachmentAddBorderColor: Color.lerp(
          attachmentAddBorderColor, other.attachmentAddBorderColor, t),
      attachmentAddIconColor:
          Color.lerp(attachmentAddIconColor, other.attachmentAddIconColor, t),
      attachmentButtonBorderColor: Color.lerp(
          attachmentButtonBorderColor, other.attachmentButtonBorderColor, t),
      attachmentButtonBoxShadow: Color.lerp(
          attachmentButtonBoxShadow, other.attachmentButtonBoxShadow, t),
      attachmentButtonBackground: Color.lerp(
          attachmentButtonBackground, other.attachmentButtonBackground, t),
    );
  }
}
