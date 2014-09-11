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

The purpose of _hello-world_ is to test the functions of _git_ and *github*

* git init
* git clone <url-of-remote-repository>.git
* git add .
* git push origin remote
* git pull origin master

## 2.0 Methodology

### 2.1 Updating files on local repo and pushing

After editing a file, run the following git commands in the local repo

1. git add _filename_
2. git commit -m "_message"
3. git push origin master
_note: you will have to enter your github username and password_

If yo refresh the repo page on github, you will see the updates. YOu have sync'd the remote repo to the local repo.

### 2.2 Updating files on the remote github repo and pulling

After editing files on githib (using github's editor), run rhw followinf git commands in the local repo

1. git pull origin master
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



