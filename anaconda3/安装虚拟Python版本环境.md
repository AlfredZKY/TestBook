## 安装Python3.x版本的环境

选择3.6版本的Python环境

### 创建Python版本环境

conda create --name py3.6 python=3.6

### 安装对应版本的ipykernel

python -m ipykernel install --name py3.6

# conda命令使用

`conda info -e` 查看虚拟环境

`source activate 激活虚拟环境名`

`source deactivate` 退出虚拟环境

`conda remove -n 虚拟环境名 --all` 删除虚拟环境

`remove /root/anaconda3` 删除anaconda环境

conda install -c conda-forge jupyter_contrib_nbextensions 安装插件扩展

`jupyter kernelspec list` 列出jupyter的内核

`jupyter kernelspec remove name` 删除指定名字的内核

conda install -c conda-forge jupyter_nbextensions_configurator

jupyter contrib nbextensions install --user 激活插件扩展

## 当conda出错时

1. 当出现*PackagesNotFoundError: The following packages are not available from current channels:*

   解决方法：

   ​	anaconda search -t conda Pydap(包名)

   ​    anaconda show conda-forge/pydap(包名)查看包名的详细信息

   ​	conda install --channel https://conda.anaconda.org/conda-forge pydap(包名)进行安装

   ​	在命令行中进行验证操作。

