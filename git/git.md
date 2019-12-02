# 为什么要学习Git  
* 面试要被问。  
* 很多公司开发都用Git来处理项目，现在不学，以后也要学。  
* git是程序员必备的技能，与同事的协同开发项目，提高开发效率。  

## Git是什么
 官方话：Git是一个免费的开源分布式版本控制系统，旨在快速高效地处理从小型到大型项目的所有事务。  
引用廖雪峰老师的话，它能自动帮我记录每次文件的改动，还可以让同事协作编辑，这样就不用自己管理一堆类似的文件了，也不需要把文件传来传去。如果想查看某次改动，只需要在软件里瞄一眼就可以。  

## 仓库  
### 本地仓库  
  本地仓库是针对远程仓库而言的。本地仓库=工作区 + 版本区  
  - 工作区即磁盘上的文件集合。  
  - 版本去(版本库)即.git文件。  
  - 版本库 = 暂存区(stage) + 分支(master) + 指针HEAD。  

### 探索.git文件夹
- HEAD文件 指向当前分支
- config文件 存储git的配置信息
- refs 意味着git可以有很多的标签和分支
- object文件夹 里面一些哈希值，可能是tree,也可能是一个blob文件(保证了文件的唯一性)
- object/pack  

### 分离头指针(detach head)

## 提交到GitHub 
- `git init` 初始化，表示把这个文件变成Git可以管理的仓库。初始化后打开隐藏的文件可以看到有一个.git文件夹。  
- `git add .` 后面一个.表示把这个文件全部提交到暂存区  
- `git add ./ream.me/` 表示把这个文件下面的read.me文件提交到暂存区。  
- `git commit -m "commit content` 把暂存区中全部文件提交到本地仓库。-m后接评论。  
- `git remote add origin https://github.com/name/name_cangku.git`表示把你本地的仓库与GitHub上的远程仓库连接起来。只需要连接一次，以后提交的时候就可以不用谢这条命令了。name是你的github名字，name_cangku是你的仓库名。  
- `git push origin master` 把本地仓库提交到远程仓库  

## git的命令操作

### 配置自己的git
- `git config --global user.name` "你的名字" 让你全部的Git仓库绑定你的名字  
- `git config --global user.email` "你的邮箱" 让你全部的Git仓库绑定你的邮箱 
其中local的优先级是高于global的,system是基本上不使用的，也就不在介绍了。  

### 查看版本日志
`git log`  查看日志
`git log --oneline` 一行信息简介的方式显示  
`git log -n3` 查看最近的三次提交信息  
`git log --all` 查看所有的版本  
`git log --all --graph` 图形化的查看版本历史  
上面的命令是可以组合在一起的进行调用，但是要注意下优先级  

### 通过图形界面查看
`gitk` 图形界面查看版本信息  


### 用git查看对象
`git cat-file -t hash` 查看哈希值对象的类型  
`git cat-file -p hash` 查看哈希值生成的具体信息 

### 删除分支
`git branch -d/-D 分支名字或者hash` 删除不要的分支 

### 更新commit的信息
`git commit --amend` 更新最近的一次提交的message做变更  
`git rebase -i hash` 对某一次提交的hash进行提交信息的变更(交互式的)  
