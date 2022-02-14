CUR_TIME := $(shell date +"%Y-%m-%d_%H:%M:%S")

.PHONY: commit push fetch history

commit:
	git add .
	git commit -m "$(CUR_TIME)"

push:
	git push origin main
	
fetch:
	git stash
	git fetch origin main:tmp
	git merge tmp
	git branch -d tmp
	git stash pop

history:
	git log --graph --pretty=oneline --abbrev-commit
