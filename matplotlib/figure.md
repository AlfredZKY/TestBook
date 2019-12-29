## figure

matplotlib.pyplot.figure(num=None, figsize=None, dpi=None, facecolor=None, edgecolor=None, frameon=True, FigureClass=<class 'matplotlib.figure.Figure'>, clear=False, **kwargs)
 	num:这个参数是一个可选参数，即可以给参数也可以不给参数。可以将该num理解理解为窗口的属性id,即该窗口的身份标识。如果不提供该参数，则创建窗口的时候该参数会自增，如果提供的话，则该窗口会以该num为id。

​	figsize:可选参数。整数元组，默认是无。提供整数元组则会给该元组为长宽，若不提供，默认为rc figure.figsize。(4,4)即以长4英寸，宽4英寸的大小创建一个窗口.

​	dpi：可选参数，整数。表示该窗口的分辨率，如果没有提供则默认为figure.dpi

​	facecolor:可选参数，表示窗口的背景颜色，如果没有提供则默认为figure.facecolor，其中颜色的设置是通过RGB.

​	edgecolor：可选参数，表示窗口的变宽颜色，如果没有提供则默认为figure.edgecolor

​	frameon:可选参数，表示是否绘制窗口的图框

​	clear:可选参数，默认是false，如果提供参数为true，并且该窗口存在的话，则该窗口内容会被清除