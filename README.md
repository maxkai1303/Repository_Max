# week1
## Max Week1 Assignment

2. Here are a few git and GitHub commands we usually use in software development, please explain the meanings and use cases of them.
	  * git status
	    * 查詢現在這個目錄的狀態，Untracked files 表示我的 welcome.html尚未被 git追蹤

					maxkai@MaxdeMacBook-Pro git % git status
					On branch master
					Your branch is up to date with 'origin/master'.

					Untracked files:
					(use "git add <file>..." to include in what will be committed)

					welcome.html

					nothing added to commit but untracked files present (use "git add" to track)


	  * git add
	    * 將 Untracked加入 git讓 git追蹤，方法是 git add + 檔案名稱

				maxkai@MaxdeMacBook-Pro git % git add welcome.html
				maxkai@MaxdeMacBook-Pro git % git status
				On branch master
				Your branch is up to date with 'origin/master'.

				Changes to be committed:
				  (use "git reset HEAD <file>..." to unstage)

					new file:   welcome.html
	  * git commit
	    * 將存到暫存區的檔案提交存檔 （-m "init commit"備註commit內容）

				maxkai@MaxdeMacBook-Pro git % git commit -m "測試commit"
				[master e3dcc25232] 測試commit
				 1 file changed, 1 insertion(+)
				 create mode 100644 welcome.html

	  * git log
	    * 檢視 git commit紀錄

				maxkai@MaxdeMacBook-Pro ~ % git log
				commit eef8f6d12d821079558e8d2d5c81fdb43cac199f (HEAD -> master)
				Author: Max <k1071303@gmail.com>
				Date:   Mon Sep 7 19:43:04 2020 +0800

				    測試git

	  * git push [ Repo_name ] [ Branch_name ]
	    * 將本機檔案推上 github
	    
			  maxkai@MaxdeMacBook-Pro ~ % git remote add origin https://github.com/maxkai1303/testCommit.git
			  maxkai@MaxdeMacBook-Pro ~ % git push -u origin master
			  Username for 'https://github.com': maxkai1303
			  Password for 'https://maxkai1303@github.com': 
			  Counting objects: 6, done.
			  Delta compression using up to 8 threads.
			  Compressing objects: 100% (3/3), done.
			  Writing objects: 100% (6/6), 481 bytes | 481.00 KiB/s, done.
			  Total 6 (delta 0), reused 0 (delta 0)
			  To https://github.com/maxkai1303/testCommit.git
			   * [new branch]      master -> master
			  Branch 'master' set up to track remote branch 'master' from 'origin'.

	  * git remote -v
	    * git remote 命令可以檢視你已經設定好的遠端版本庫
	    * 指定 -v 選項來顯示 Git 用來讀寫遠端簡稱時所用的網址

				maxkai@MaxdeMacBook-Pro ~ % git remote -v
				origin	https://github.com/maxkai1303/testCommit.git (fetch)
				origin	https://github.com/maxkai1303/testCommit.git (push)
	  * git branch
	    * 通過 branch命令來建立分支 git branch <branchname>
	    * 用 git branch查詢分支列表，星號表示現在處在哪個分支

				maxkai@MaxdeMacBook-Pro ~ % git branch issue1	
				maxkai@MaxdeMacBook-Pro ~ % git branch
				  issue1
				* master
	  * fork
	    * 複製他人項目的副本在個人帳號下，建立後在名稱下會有 forked from提示此專案是從哪裡複製過來的

3. Please describe how to establish a github repo and how to upload the local projects to github. Try to explain it as detail as possible.

 > 創建   
 >> 右上角頭像旁邊的＋號選擇「 New repository 」創建一個新的 repo  
 >> 填寫專案名稱（Repository name）  
 >> 點擊「Create repository」完成新增  

> 上傳
>> 在終端機中進入檔案所在目錄  
>> 執行 git init (初始化資料夾）  
>> 執行 git add <檔案名稱> （使檔案讓 git追蹤）  
>> 執行 git commit (將檔案加入暫存區） 
>> 填寫commit訊息  
>>> 第一次用 git push 指令將本機檔案推上 github   
>>> 用add 設定一個遠端節點 origin  
*（origin 是一個代名詞，指的是後面那串 GitHub 伺服器的位置）  
    $ git remote add origin <github上傳的位置>  
>>> Username的部分填寫 github帳號，Password 輸入 github的登入密碼  
>>> 已設定過origin後，可以直接git push -u origin master

