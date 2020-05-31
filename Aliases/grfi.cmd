@echo off
git commit --fixup=%1 && git rebase --interactive --autosquash %1~