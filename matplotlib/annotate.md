## 基本标注

在该示例中，`xy`（箭头尖端）和`xytext`位置（文本位置）都以数据坐标为单位。 有多种可以选择的其他坐标系 - 你可以使用`xycoords`和`textcoords`以及下列字符串之一（默认为`data`）指定`xy`和`xytext`的坐标系。

| 参数 | 坐标系 | 
| `'figure points'` | 距离图形左下角的点数量 | 
| `'figure pixels'` | 距离图形左下角的像素数量 | 
| `'figure fraction'` | 0,0 是图形左下角，1,1 是右上角 | 
| `'axes points'` | 距离轴域左下角的点数量 | 
| `'axes pixels'` | 距离轴域左下角的像素数量 | 
| `'axes fraction'` | 0,0 是轴域左下角，1,1 是右上角 | 
| `'data'` | 使用轴域数据坐标系 |

| `arrowprops`键 | 描述                                                  |
| :------------- | :---------------------------------------------------- |
| `width`        | 箭头宽度，以点为单位                                  |
| `frac`         | 箭头头部所占据的比例                                  |
| `headwidth`    | 箭头的底部的宽度，以点为单位                          |
| `shrink`       | 移动提示，并使其离注释点和文本一些距离                |
| `**kwargs`     | `matplotlib.patches.Polygon`的任何键，例如`facecolor` |

## 高级标注

设置set_boxstyle方法:

| 类         | 名称         | 属性                         |
| :--------- | :----------- | :--------------------------- |
| Circle     | `circle`     | `pad=0.3`                    |
| DArrow     | `darrow`     | `pad=0.3`                    |
| LArrow     | `larrow`     | `pad=0.3`                    |
| RArrow     | `rarrow`     | `pad=0.3`                    |
| Round      | `round`      | `pad=0.3,rounding_size=None` |
| Round4     | `round4`     | `pad=0.3,rounding_size=None` |
| Roundtooth | `roundtooth` | `pad=0.3,tooth_size=None`    |
| Sawtooth   | `sawtooth`   | `pad=0.3,tooth_size=None`    |
| Square     | `square`     | `pad=0.3`                    |