# 为什么要学习 Git

- 面试要被问。
- 很多公司开发都用 Git 来处理项目，现在不学，以后也要学。
- git 是程序员必备的技能，与同事的协同开发项目，提高开发效率。

## Git 是什么

官方话：Git 是一个免费的开源分布式版本控制系统，旨在快速高效地处理从小型到大型项目的所有事务。  
引用廖雪峰老师的话，它能自动帮我记录每次文件的改动，还可以让同事协作编辑，这样就不用自己管理一堆类似的文件了，也不需要把文件传来传去。如果想查看某次改动，只需要在软件里瞄一眼就可以。

## 仓库

### 本地仓库

本地仓库是针对远程仓库而言的。本地仓库=工作区 + 版本区

- 工作区即磁盘上的文件集合。
- 版本去(版本库)即.git 文件。
- 版本库 = 暂存区(stage) + 分支(master) + 指针 HEAD。

### 探索.git 文件夹

- HEAD 文件 指向当前分支
- config 文件 存储 git 的配置信息
- refs 意味着 git 可以有很多的标签和分支
- object 文件夹 里面一些哈希值，可能是 tree,也可能是一个 blob 文件(保证了文件的唯一性)
- object/pack

### 分离头指针(detach head)

## 提交到 GitHub

- `git init` 初始化，表示把这个文件变成 Git 可以管理的仓库。初始化后打开隐藏的文件可以看到有一个.git 文件夹。
- `git add .` 后面一个.表示把这个文件全部提交到暂存区
- `git add ./ream.me/` 表示把这个文件下面的 read.me 文件提交到暂存区。
- `git commit -m "commit content` 把暂存区中全部文件提交到本地仓库。-m 后接评论。
- `git remote add origin https://github.com/name/name_cangku.git`表示把你本地的仓库与 GitHub 上的远程仓库连接起来。只需要连接一次，以后提交的时候就可以不用谢这条命令了。name 是你的 github 名字，name_cangku 是你的仓库名。
- `git push origin master` 把本地仓库提交到远程仓库

## git 的命令操作

### 配置自己的 git

- `git config --global user.name` "你的名字" 让你全部的 Git 仓库绑定你的名字
- `git config --global user.email` "你的邮箱" 让你全部的 Git 仓库绑定你的邮箱
	其中 local 的优先级是高于 global 的,system 是基本上不使用的，也就不在介绍了。

### 查看版本日志

`git log` 查看日志
`git log --oneline` 一行信息简介的方式显示  
`git log -n3` 查看最近的三次提交信息  
`git log --all` 查看所有的版本  
`git log --all --graph` 图形化的查看版本历史  
上面的命令是可以组合在一起的进行调用，但是要注意下优先级

### 通过图形界面查看

`gitk --all` 图形界面查看版本信息

### 用 git 查看对象

`git cat-file -t hash` 查看哈希值对象的类型  
`git cat-file -p hash` 查看哈希值生成的具体信息

### 删除分支

`git branch -d/-D 分支名字或者hash` 删除不要的分支

### 更新 commit 的信息

`git commit --amend` 更新最近的一次提交的 message 做变更  
`git rebase -i hash` 对某一次提交的 hash 进行提交信息的变更(交互式的 reword)  
`git rebase -i hash` 合并多个 commit 信息(squash)

### 比较暂存区和 head 的文件差异

`git diff --cached` 比较 head 和暂存区的文件差异  
`git diff` 工作区和暂存区的文件差异  
`git diff -- filename` 比较具体的文件的差异  
`git reset HEAD` 取消暂存区的所有文件  
`git checkout -- filename` 取消工作区的文件更改  
`git reset HEAD -- filename` 取消暂存区中具体的文件的更改  
`git reset --hard hash` 变更头指针到指定的 hash  
`git diff hash hash -- filename` 比较两个提交的对应的文件的差异

### 备份工作状态

`git stash` 保存工作状态  
`git stash list` 查看存储工作区列表  
`git stash apply` 把之前存储的工作区进行恢复(不删除)
`git stash pop`

### 配置 ssh 协议

`ssh-keygen -t rsa -b 4096 -C "your_email@example.com"` 生成一个 ssh 公司钥对,邮箱地址要写成自己的 github 绑定的邮箱名  
`ssh -T git@github.com` 测试自己配置的 github 账户的公司钥对是否正确

### git remote 设置远端配置,注意用户权限

`git remote -v` 查看远端分支模式(https/ssh)  
`git remote add 远端名字 github的ssh链接` 添加一个远端的 github 链接
`git remote remove 远端名字` 删除一个远端链接
`git push -u master origin`推送分支

### git fetch

`git fetch` 拉取远端分支到本地

### git pull

`git pull` 拉取远端分支到本地和归并分支(多人协作时，提交冲突时，要协商)

### 快速搜索

`in:readme starts > 1000` 快速高效的检索，其他请参考 github 的帮助说明文档

### github 的 help

多查看 github 的帮助说明文档。

### 合并特性分支

`pull requests` 通过 github 上的 pull requests 请求进行合并  
`squash rebase`特性分支归并到分支  
`merge commit` 多个分支进行集成  
当存在多个特性分支，采用 rebase 方式进行合并时,请查看 git 的帮助文档中的 Git 工具-Rerere


# Git代理
	- 配置代理
		- `git config --global http.proxy http://127.0.0.1:7890`
		- `git config --global https.proxy http://127.0.0.1:7890`
	- 取消代理
		- `git config --global --unset http.proxy `
		- `git config --global --unset https.proxy`

# Git更换远端的协议
	- git 更换为https  
		- 1.修改命令  
			git remote set-url origin [url]  
			我这里使用 git remote set-url origin [url]命令，直接修改远程仓库为https的地址  

		- 2.先删后加  
			git remote rm origin  
			git remote add origin [url]  

		3.直接修改config文件  
  
	- https 更换为git
		- 同上操作既可
	
# Git设置免密操作  
	- 新建一个文件并保存密码  
		`vim .git-credentials`  
	- 添加内容  
		`https://{username}:{passwd}@github.com`  
	- 添加配置  
		git config --global credentials.helper storeD  