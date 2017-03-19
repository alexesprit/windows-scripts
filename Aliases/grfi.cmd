@echo off
git commit --fixup=%1 && git rebase -i %1~