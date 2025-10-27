# Comandos utiles en git

1. git init
2. git add .
3. git add -f
5. git reset . -hard -soft -mixed
6. git commit
7. git checkout -- . recuperar ultima version de commit
8. git log --online --graph --pretty
9. git commit --amend
10. git checkout -b rama-heroes
11. git checkout main
12. git branch -d rama-heroes
13. git push 
14. git commit -am
15. git status --ignored
16. git diff
17. git reflog
18. git remote add origin
19. git remote remove  origin
20. git pull (--force)
21. git push (--force)
22. git fetch
23. git branch -M
24. git rm
25. git merge
26. git config --global user.name "username"
27. git config --global user.email "userEmail"
28. git alias
29. git show
30. git stash
31. git stash apply
32. git stash pop



### Mini sistema de respaldo inteligente (intermedio-avanzado)

Un script que:

Copie archivos modificados en las últimas 24 h a una carpeta de respaldo.

Registre cada acción en un log con fecha y hora.

Permita restaurar un respaldo anterior.

Extra: incluir opciones como --backup, --restore, --status.
