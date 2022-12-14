# To Create and Initialize a GitHub Repo
**Step 1: Create a New Repo on GitHub.com**.  

**Step 2: Terminal Side**

```
cd the_working_directory
touch Readme.md
git init (create a place)
git add Readme.md (add the amend file)
git commit -m "First Commit"
git remote add origin https://github.com/user_name/repo_name.git
git push -u origin master
```

# To Push a Cloned Repo to Your Own Repo
**Step 1: Git Clone a Repo**.   
```
git clone https://github.com/user2/repo_name
```
**Step 2: On Your Terminal**
```
cd the_working_directory/git_cloned_repo
rm -rf .git
cd .. (back to main working directory)
git status (check is there any new un-pushed files)
git add cloned_repo/
git status (check red turn green?)
git commit -m "Pushing a Cloned Repo"
git push origin master
```

**If anything crashed**.  
```
cd the_working_directory
rm -f .git/index
```


For more information about the Working Mechanism of GitHub, can visit:
http://rogerdudler.github.io/git-guide/index.zh.html

GITHUB PULL REQUEST, Branching, Merging & Team Workflow
https://youtu.be/oFYyTZwMyAg
