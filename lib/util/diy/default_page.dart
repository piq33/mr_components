import 'dart:convert';
import 'dart:ui';

import 'package:bsl/model/diy/diy_json_model.dart';
import 'package:bsl/util/ui_utils.dart';

PageJsonModel providePage1({String? background, Color? borderColor}) {
  final jsonStr = '''
  	{
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "${background ?? ''}",
				"fit": "cover"
			},
			"resources": [{
  	      "index": 1,
					"width": 241,
					"height": 160.5,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": -1,
					"y": 0.21,
					"rotate": 5,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 20,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
  	      "index": 2,
					"width": 241,
					"height": 160.5,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": -1,
					"y": 0.49,
					"rotate": -14,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 20,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel providePage2({String? background, Color? borderColor}) {
  final jsonStr = '''
  	{
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "${background ?? ''}",
				"fit": "cover"
			},
			"resources": [{
  	      "index": 1,
					"width": 227,
					"height": 227,
					"padding": [6.5, 6.5, 6.5, 6.5],
					"positionType": "ratio",
					"x": -1,
					"y": 0.162,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 227,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
  	      "index": 2,
					"width": 241,
					"height": 160.5,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": -1,
					"y": 0.524,
					"rotate": 5,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 20,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel providePage3({String? background, Color? borderColor}) {
  final jsonStr = '''
  	{
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "${background ?? ''}",
				"fit": "cover"
			},
			"resources": [{
  	      "index": 1,
					"width": 263.5,
					"height": 175.5,
					"padding": [7, 7, 7, 7],
					"positionType": "ratio",
					"x": -1,
					"y": 0.1536,
					"rotate": 7,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 20,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
  	      "index": 2,
					"width": 152,
					"height": 213,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": 0.065,
					"y": 0.44,
					"rotate": -7,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
  	      "index": 3,
					"width": 143.5,
					"height": 95.5,
					"padding": [3.5, 3.5, 3.5, 3.5],
					"positionType": "ratio",
					"x": 0.525,
					"y": 0.478,
					"rotate": 7,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
  	      "index": 4,
					"width": 143.5,
					"height": 95.5,
					"padding": [3.5, 3.5, 3.5, 3.5],
					"positionType": "ratio",
					"x": 0.535,
					"y": 0.638,
					"rotate": 14,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel providePage4({String? background, Color? borderColor}) {
  final jsonStr = '''
  	{
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "${background ?? ''}",
				"fit": "cover"
			},
			"resources": [{
  	      "index": 1,
					"width": 172,
					"height": 172,
					"padding": [5, 5, 5, 5],
					"positionType": "ratio",
					"x": 0.123,
					"y": 0.134,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 172,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
  	      "index": 2,
					"width": 195,
					"height": 195,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": 0.308,
					"y": 0.311,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 195,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
  	      "index": 3,
					"width": 263.5,
					"height": 175.5,
					"padding": [7.5, 7.5, 7.5, 7.5],
					"positionType": "ratio",
					"x": 0.134,
					"y": 0.555,
					"rotate": 10,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 20,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel providePage5({String? background, Color? borderColor}) {
  final jsonStr = '''
  	{
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "${background ?? ''}",
				"fit": "cover"
			},
			"resources": [{
          "index": 2,
					"width": 158,
					"height": 158,
					"padding": [5, 5, 5, 5],
					"positionType": "ratio",
					"x": 0.508,
					"y": 0.365,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 158,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 1,
					"width": 221,
					"height": 221,
					"padding": [7, 7, 7, 7],
					"positionType": "ratio",
					"x": 0.173,
					"y": 0.128,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 221,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 3,
					"width": 158,
					"height": 158,
					"padding": [5, 5, 5, 5],
					"positionType": "ratio",
					"x": 0.092,
					"y": 0.440,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 158,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 4,
					"width": 158,
					"height": 158,
					"padding": [5, 5, 5, 5],
					"positionType": "ratio",
					"x": 0.439,
					"y": 0.580,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 158,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel providePage6({String? background, Color? borderColor}) {
  final jsonStr = '''
  	{
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "${background ?? ''}",
				"fit": "cover"
			},
			"resources": [{
          "index": 2,
					"width": 144.5,
					"height": 202.5,
					"padding": [5.5, 5.5, 5.5, 5.5],
					"positionType": "ratio",
					"x": 0.512,
					"y": 0.2,
					"rotate": 5,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 1,
					"width": 144.5,
					"height": 202.5,
					"padding": [5.5, 5.5, 5.5, 5.5],
					"positionType": "ratio",
					"x": 0.117,
					"y": 0.163,
					"rotate": -7,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 3,
					"width": 144.5,
					"height": 202.5,
					"padding": [5.5, 5.5, 5.5, 5.5],
					"positionType": "ratio",
					"x": 0.087,
					"y": 0.474,
					"rotate": 5,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 4,
					"width": 144.5,
					"height": 202.5,
					"padding": [5.5, 5.5, 5.5, 5.5],
					"positionType": "ratio",
					"x": 0.474,
					"y": 0.533,
					"rotate": -7,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}

PageJsonModel providePage7({String? background, Color? borderColor}) {
  final jsonStr = '''
  	{
			"background": {
				"resourceType": "image",
				"type": "url",
				"value": "${background ?? ''}",
				"fit": "cover"
			},
			"resources": [{
          "index": 1,
					"width": 253,
					"height": 142.5,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": 0.163,
					"y": 0.139,
					"rotate": 7,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 2,
					"width": 253,
					"height": 142.5,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": 0.095,
					"y": 0.364,
					"rotate": -7,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				},
				{
          "index": 3,
					"width": 253,
					"height": 142.5,
					"padding": [6, 6, 6, 6],
					"positionType": "ratio",
					"x": 0.260,
					"y": 0.592,
					"rotate": 5,
					"background": {
						"resourceType": "image",
						"type": "color",
						"value": "FFFFFFFF"
					},
					"box": {
						"borderRadius": 10,
						"borderColor": "${borderColor?.toHex(leadingHashSign: false) ?? ''}",
						"borderWidth": 3,
						"borderType": "dash"
					}
				}
			]
		}
  ''';
  return PageJsonModel.fromJson(json.decode(jsonStr));
}
