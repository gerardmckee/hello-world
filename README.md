hello-world
===========

![Vltava River Prague](http://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Prague_Vltava_pano_-_Oct_2010.jpg/640px-Prague_Vltava_pano_-_Oct_2010.jpg "Vltava River in Prague")

GitHub Guide repo
-----------------

> For all we have and are
>
> For all out children's fate
>
> Stand up and meet the war
>
> The hun is at the gate
>
>          -- Rudyard Kipling

## 1.0 Purpose

The purpose of _hello-world_ is to document the functions of _git_ and *github* and to show some common operations.

* git init
* git clone <url-of-remote-repository>.git
* git add .
* git push origin remote
* git pull origin master

## 2.0 Methodology

Use git on the local machine to track changes and versions of source code. Use github webservice to store a copy of the local repo and to share code with others and allow others to collaborate on the project.

## 3.0 Common Operations

### 3.1 Creating a new repo on github and cloning

When you start a new project, you can create the new repo right on github.

1. On github, click the + button on the upper right next to your username. Then choose New Repository. Fill in the Repository Name and Desccription. Then check Initialize this repository with a README. When everything is looks right, click Create Repository button. Guthib will create the new repository.
2. On github, in the repo page, click the Copy to Clipboard button under clone url. The buton is bear the bottom of the righthand column.
3. On your local machine, `cd` into the working directory where you want the repo.
4. Type `git clone` and paste in the the url from the clipboard. Your local git will create the clone repo in your working directory. 

### 3.2 Forking a repo and cloning

Forking is a github operation and only happens on github. After forking a repo, if you want that repo on your local machine, you can clone the repo.

1. On github, go to the repo you wish to fork and click teh fork button in the upper right. Github will create the fork under your username.
2. Follow instruction 2, 3, and 4 above.

### 3.3 Create a new repo on your local machine and push to github

1. Create a new directory for the repo using `mkdir` and `cd` to that directory.
2. Run `git init` to create the repo
3. Add new source files to the repo.
4. `git add .` to add all the new files
5. `git commit -m "message"` to commit the changes
6. `git push origin master` to push the files to github

### 3.4 Updating files on local repo and pushing

After editing a file, run the following git commands in the local repo

1. `git status` to see which files are not being tracked by git
2. `git add _filename_` to tell git that there is a new file to track
3. `git commit -m "_message"` to commit the changes
4. `git push origin master` to push the files to github. _note: you will have to enter your github username and password_
5. Optionally, `git log` to see the change history.

When you refresh the repo page on github, you will see the updates. You have sync'd the remote repo to the local repo.

### 3.5 Updating files on the remote github repo and pulling

After editing files on github (using github's editor), run the following git commands in the local repo

1. `git pull origin master` to fetch and merge the files into your local repo.
2. That's it!

Now you can check and see that the file has been updated in the local repo. In other words, you have sync'd the local repo with the remote repo.

Here is the link: [google.com](http://google.com)

Links to finance pages on [Google][1] and [Yahoo][2] using reference-style link

[1]: http://finance.google.com/ "Google Finance"
[2]: http://finance.yahoo.com/ "Yahoo Finance"

![Vltaca River Basin][id1]

[id1]: http://upload.wikimedia.org/wikipedia/commons/thumb/e/ef/Vltava_River_%28CZE%29_-_location_and_watershed.svg/500px-Vltava_River_%28CZE%29_-_location_and_watershed.svg.png "Map of Vltava River Basin"

## 3.0 Code

Use the command `lsof -i | grep ESTABLISHED` to show the internet connections

Here is the sample code:

	    xx <- if (class(x) == "character")
	        paste('"', x, '"', sep = "")
	    yy <- if (class(y) == "character")
	        paste('"', y, '"', sep = "")
	    zz <- if (class(z) == "character")
	        paste('"', z, '"', sep = "")
	
	    cat("list(x = ", xx, ", y = ", yy, ", z = ", zz, ")", sep = "")
	}



