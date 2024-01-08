// 模板json定义
```json
{
  // 页面背景(可选)
  "background": {
    // 固定
    "resourceType": "image",
    // 资源类型(必选) url => 网络地址 assets => app内嵌资源 file => 设备本地文件 color => 颜色
    "type": "url",
    // 资源值(必选)
    "value": "",
    // 图片显示模式(仅image可选) fill contain cover fitWidth fitHeight scaleDown 默认为cover
    "fit": "cover"
  },
  // 是否首页(可选), 只有第一页为true即可, 标记属性, 默认为false
  "homePage": false,
  // 页面资源(必选)
  "resources": [
    {
      // 资源顺序
      "index": 0,
      // 资源宽度(可选), 为空时占满页面宽度
      "width": 0.0,
      // 资源高度(可选), 为空时占满页面高度
      "height": 0.0,
      // 资源对齐位置(可选), topLeft topCenter topRight centerLeft center centerRight bottomLeft bottomCenter bottomRight, 为空时默认center
      "align": "center",
      // 资源外边距(可选)
      "margin": [
        0.0,
        0.0,
        0.0,
        0.0
      ],
      // 资源内边距(可选)
      "padding": [
        0.0,
        0.0,
        0.0,
        0.0
      ],
      // 资源页面定位类型(可选), value => 值 ratio => 百分比, 默认为value
      "positionType": "value",
      // 资源x坐标, position为 ratio时, -1时为水平居中(可选)
      "x": 0.0,
      // 资源y坐标, position为 ratio时, -1时为垂直居中(可选)
      "y": 0.0,
      // 资源旋转角度(可选), 单位(度)
      "rotate": 0,
      // 资源修饰(可选)
      "box": {
        // 边框颜色(可选)
        "borderColor": "FF333333",
        // 边框宽度(可选)
        "borderWidth": 0.0,
        // 边框圆角半径(可选)
        "borderRadius": 0.0,
        // 边框类型(可选) dash => 虚线 line => 实线, 默认为line
        "borderType": "line"
      },
      // 资源值
      "data": {
        // 资源类型(必选) image => 图片 text => 文字
        "resourceType": "image",
        // 未输入文字时提示值(仅text可选)
        "hint": "",
        // hint字体颜色(仅text可选)
        "hintColor": "FF333333",
        // 字体颜色(仅text可选)
        "color": "FF333333",
        // 字体大小(仅text可选)
        "fontSize": 0.0,
        // 字重大小(仅text可选)
        "fontWeight": 100.0,
        // 图片宽度(仅image可选)
        "width": 0.0,
        // 图片高度(仅image可选)
        "height": 0.0,
        // 图片显示模式(仅image可选) fill contain cover fitWidth fitHeight scaleDown 默认为cover
        "fit": "contain",
        // 资源类型(仅image必选) url => 网络地址 assets => app内嵌资源 file => 设备本地文件
        "type": "url",
        // 资源值(必选)
        "value": ""
      }
    }
  ]
}
```