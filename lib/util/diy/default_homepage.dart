import 'dart:convert';

import 'package:components/model/diy_models.dart';

PageJsonModel provideCustomHomepage() {
  const jsonStr = '''
  {
			"homePage": true,
			"mainColor": "FF624626",
			"resources": [{
			    "index": 1,
			    "width": 347.5,
					"height": 128,
					"positionType": "ratio",
					"x": -1,
					"y": 0.145,
					"align": "bottomCenter",
					"margin": [14, 0, 14, 0],
					"padding": [0, 0, 0, 54],
					"data": {
						"resourceType": "text",
						"text": "宝贝相册",
						"color": "FFC85E11",
						"hint": "相册标题",
						"hintColor": "FFBCBCBC",
						"fontSize": 20,
						"fontWeight": 500
					}
				},
				{
			    "index": 2,
					"width": 273,
					"height": 273,
					"padding": [7.5, 7.5, 7.5, 7.5],
					"positionType": "ratio",
					"x": -1,
					"y": 0.3725,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 273,
						"borderColor": "FFA865AB",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel provideHomepage1() {
  const jsonStr = '''
  {
			"homePage": true,
			"mainColor": "FFBF832F",
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template2_homepage_background.png",
				"fit": "cover"
			},
			"resources": [{
			    "index": 1,
					"height": 120,
					"positionType": "ratio",
					"x": -1,
					"y": 0.158,
					"align": "bottomCenter",
					"margin": [14, 0, 14, 0],
					"padding": [0, 0, 0, 54],
					"background": {
						"resourceType": "image",
						"type": "url",
						"fit": "cover",
						"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template2_title_background.png"
					},
					"data": {
						"resourceType": "text",
						"text": "宝贝相册",
						"color": "FF8D6646",
						"hint": "相册标题",
						"hintColor": "FFBCBCBC",
						"fontSize": 20,
						"fontWeight": 400
					}
				},
				{
			    "index": 2,
					"width": 273,
					"height": 273,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": -1,
					"y": 0.35,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "FFA865AB",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel provideHomepage2() {
  const jsonStr = '''
  {
			"homePage": true,
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template3_homepage_background.png",
				"fit": "cover"
			},
			"resources": [{
			    "index": 1,
			    "width": 291,
					"height": 163,
					"positionType": "ratio",
					"x": -1,
					"y": 0.125,
					"align": "bottomCenter",
					"margin": [35, 0, 35, 0],
					"padding": [0, 0, 0, 70],
					"background": {
						"resourceType": "image",
						"type": "url",
						"fit": "fill",
						"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template3_title_background.png"
					},
					"data": {
						"resourceType": "text",
						"text": "宝贝相册",
						"color": "FF2B4475",
						"hint": "相册标题",
						"hintColor": "FFBCBCBC",
						"fontSize": 20,
						"fontWeight": 500
					}
				},
				{
			    "index": 2,
					"width": 313,
					"height": 272,
					"positionType": "ratio",
					"x": -1,
					"y": 0.35,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 27.5
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel provideHomepage3() {
  const jsonStr = '''
  {
			"homePage": true,
			"mainColor": "FF624626",
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template4_homepage_background.png",
				"fit": "cover"
			},
			"resources": [{
			    "index": 1,
			    "width": 347.5,
					"height": 128,
					"positionType": "ratio",
					"x": -1,
					"y": 0.145,
					"align": "bottomCenter",
					"margin": [14, 0, 14, 0],
					"padding": [0, 0, 0, 54],
					"background": {
						"resourceType": "image",
						"type": "url",
						"fit": "fill",
						"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template4_title_background.png"
					},
					"data": {
						"resourceType": "text",
						"text": "宝贝相册",
						"color": "FFC85E11",
						"hint": "相册标题",
						"hintColor": "FFBCBCBC",
						"fontSize": 20,
						"fontWeight": 500
					}
				},
				{
			    "index": 2,
					"width": 273,
					"height": 273,
					"padding": [7.5, 7.5, 7.5, 7.5],
					"positionType": "ratio",
					"x": -1,
					"y": 0.3725,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 273,
						"borderColor": "FFA865AB",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel provideHomepage4() {
  const jsonStr = '''
  {
			"homePage": true,
			"mainColor": "FFBF832F",
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template5_homepage_background.png",
				"fit": "cover"
			},
			"resources": [{
			    "index": 1,
			    "width": 347.5,
					"height": 128,
					"positionType": "ratio",
					"x": -1,
					"y": 0.07,
					"align": "bottomCenter",
					"margin": [14, 0, 14, 0],
					"padding": [0, 0, 0, 30],
					"background": {
						"resourceType": "image",
						"type": "url",
						"fit": "fill",
						"value": "https://bxs-1304305658.cos.ap-guangzhou.myqcloud.com/static/diy/templates/template5_title_background.png"
					},
					"data": {
						"resourceType": "text",
						"text": "宝贝相册",
						"color": "FFFE6C79",
						"hint": "相册标题",
						"hintColor": "FFBCBCBC",
						"fontSize": 20,
						"fontWeight": 700
					}
				},
				{
			    "index": 2,
					"width": 273,
					"height": 273,
					"padding": [7.5, 7.5, 7.5, 7.5],
					"positionType": "ratio",
					"x": -1,
					"y": 0.3575,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 273,
						"borderColor": "FFBF832F",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel? parseHomepage(HomepageStyle style) {
  return switch (style) {
    HomepageStyle.custom => provideCustomHomepage(),
    HomepageStyle.style1 => provideHomepage1(),
    HomepageStyle.style2 => provideHomepage2(),
    HomepageStyle.style3 => provideHomepage3(),
    HomepageStyle.style4 => provideHomepage4(),
    _ => null,
  };
}
