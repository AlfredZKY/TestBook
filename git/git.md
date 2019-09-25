## Git是什么
 官方话：Git是一个免费的开源分布式版本控制系统，旨在快速高效地处理从小型到大型项目的所有事务。
引用廖雪峰老师的话，它能自动帮我记录每次文件的改动，还可以让同事协作编辑，这样就不用自己管理一堆类似的文件了，也不需要把文件传来传去。如果想查看某次改动，只需要在软件里瞄一眼就可以。

# 为什么要学习Git
* 面试要被问。
* 很多公司开发都用Git来处理项目，现在不学，以后也要学。
* git是程序员必备的技能，与同事的协同开发项目，提高开发效率。

## 仓库
### 本地仓库
  本地仓库是针对远程仓库而言的。本地仓库=工作区 + 版本区
  - 工作区即磁盘上的文件集合。
  - 版本去(版本库)即.git文件。
  - 版本库 = 暂存区(stage) + 分支(master) + 指针HEAD。

## 提交到GitHub 
- git init 初始化，表示把这个文件变成Git可以管理的仓库。初始化后打开隐藏的文件可以看到有一个.git文件夹。
- git add . 后面一个.表示把这个文件全部提交到暂存区
- git add ./ream.me/ 表示把这个文件下面的read.me文件提交到暂存区。
- git commit -m "commit content" 把暂存区中全部文件提交到本地仓库。-m后接评论。
- git remote add origin https://github.com/name/name_cangku.git表示把你本地的仓库与GitHub上的远程仓库连接起来。只需要连接一次，以后提交的时候就可以不用谢这条命令了。name是你的github名字，name_cangku是你的仓库名。
- git push origin master 把本地仓库提交到远程仓库
  
## 版本回溯
  提交一个文件，有时候我们会提交很多次，在提交历史中，这样就产生了不同的版本。每次提交，Git会把他们串成一条时间线。如何回溯到我们提交的上一个版本，用git reset --hard + 版本号即可。版本号可以用git log来查看，每一次的版本都会产生不一样的版本号

## 撤销
- 在工作区时，你修改了一个东西，你想撤销修改，git checkout -- file。出撤销修改就回到和版本库一模一样的状态，即用版本库里的版本替换工作区的版本。
- 你修改了一个内容，并且已经git add到暂存区了。想撤销怎么办？回溯版本，git reset --hard + 版本号,再git checkout -- file,替换工作区的版本。
- 你修改了一个内容，并且已经git commit到了master。跟场景2一样，版本回溯，再进行撤销。
  
## 删除
  如果你git add一个文件到暂存区，然后在工作区又把文件删除了，Git会知道你删除了文件。如果你要把版本库里的文件删除，git rm 并且git commit -m "xxx"。

## 分支
### 创建分支
`git branch other`  
`git checkout other`

### 查看当前所有分支
`git branch` 当前分支会有一个*

### 分之合并
`git merge other`

### 删除分支
`git branch -d other`

## 创建标签
1. git branch查看当前分支,git checkout master切换到master分支。
2. git tag <name> 打标签，默认为HEAD。比如git tag v1.0
3. 默认标签是打在最新提交的commit上的。如果想要打标签在以前的commit上，要git log找到历史提交的commit id.
4. 如果一个commt id是du2n2d9,执行git tag v1.0 du2n2d9就把这个版本打上了v1.0的标签了。
5. git tag 查看所有标签，可以知道历史版本的tag
6. 标签不是按时间顺序列出，而是按字母排序的。
7. git show <tagname> 查看标签信息。
8. git tag -a <标签名> -m "<说明>",创建带说明的标签。-a指定标签名，-m指定说明文字。用show可以查看说明
### 操作标签
- git tag -d v1.0 删除标签。因为创建的标签都只存储在本地，不会自动推送到远程。所以，打错的标签可以在本地安全删除。
- git push origin <tagname> 推送某个标签到远程
- git push origin --tags 一次性推送全部尚未推送到远程的本地标签
- 如果标签推送到远程。git tag -d v1.0 先删除本地标签v1.0。git push origin :refs/tags/v1.0删除远程标签v1.0

## 自定义Git
- git config --global color.ui true让Git显示颜色，会让命令输出看起来更醒目
- 忽略特殊文件 创建一个.gitignore文件，把需要忽略的文件名填进去。Git就会自动忽略这些文件。我也在学习中遇到过这样的问题，比如node_modules文件就可以忽略。
- 强制提交已忽略的的文件。git add -f <file>
- git check-ignore -v <file>检查为什么Git会忽略该文件。
- 给Git命令配别名,这个有点骚，就是你以后想输入git rebase时,你给它一个“外号”，就叫它git nb。以后你可以通过git nb来代替git rebase。
  
## 常用Git命令总结
- git config --global user.name "你的名字" 让你全部的Git仓库绑定你的名字

- git config --global user.email "你的邮箱" 让你全部的Git仓库绑定你的邮箱

- git init 初始化你的仓库

- git add . 把工作区的文件全部提交到暂存区

- git add ./<file>/ 把工作区的<file>文件提交到暂存区

- git commit -m "xxx" 把暂存区的所有文件提交到仓库区，暂存区空空荡荡

- git remote add origin https://github.com/name/name_cangku.git 把本地仓库与远程仓库连接起来

- git push -u origin master 把仓库区的主分支master提交到远程仓库里

- git push -u origin <其他分支> 把其他分支提交到远程仓库

- git status查看当前仓库的状态

- git diff 查看文件修改的具体内容

- git log 显示从最近到最远的提交历史

- git clone + 仓库地址下载克隆文件

- git reset --hard + 版本号 回溯版本，版本号在commit的时候与master跟随在一起

- git reflog 显示命令历史

- git checkout -- <file> 撤销命令，用版本库里的文件替换掉工作区的文件。我觉得就像是Git世界的ctrl + z

- git rm 删除版本库的文件

- git branch 查看当前所有分支

- git branch <分支名字> 创建分支

- git checkout <分支名字> 切换到分支

- git merge <分支名字> 合并分支

- git branch -d <分支名字> 删除分支,有可能会删除失败，因为Git会保护没有被合并的分支

- git branch -D + <分支名字> 强行删除，丢弃没被合并的分支

- git log --graph 查看分支合并图

- git merge --no-ff <分支名字> 合并分支的时候禁用Fast forward模式,因为这个模式会丢失分支历史信息

- git stash 当有其他任务插进来时，把当前工作现场“存储”起来,以后恢复后继续工作

- git stash list 查看你刚刚“存放”起来的工作去哪里了

- git stash apply 恢复却不删除stash内容

- git stash drop 删除stash内容

- git stash pop 恢复的同时把stash内容也删了

- git remote 查看远程库的信息，会显示origin，远程仓库默认名称为origin

- git remote -v 显示更详细的信息

- git pull 把最新的提交从远程仓库中抓取下来，在本地合并,和git push相反

- git rebase 把分叉的提交历史“整理”成一条直线，看上去更直观

- git tag 查看所有标签，可以知道历史版本的tag

- git tag <name> 打标签，默认为HEAD。比如git tag v1.0

- git tag <tagName> <版本号> 把版本号打上标签，版本号就是commit时，跟在旁边的一串字母数字

- git show <tagName> 查看标签信息

- git tag -a <tagName> -m "<说明>" 创建带说明的标签。-a指定标签名，-m指定说明文字

- git tag -d <tagName> 删除标签

- git push origin <tagname> 推送某个标签到远程

- git push origin --tags 一次性推送全部尚未推送到远程的本地标签

- git push origin :refs/tags/<tagname> 删除远程标签<tagname>

- git config --global color.ui true 让Git显示颜色，会让命令输出看起来更醒目

- git add -f <file> 强制提交已忽略的的文件

- git check-ignore -v <file> 检查为什么Git会忽略该文件

