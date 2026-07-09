# Git & GitHub Commands Practice

This document contains all the Git commands practiced during our collaborative GitHub workflow.

---

# 1. Clone Repository

Clone an existing GitHub repository to your local machine.

```bash
git clone <repository-url>
```

Example:

```bash
git clone https://github.com/username/repository.git
```

---

# 2. Check Remote Repository

Displays the remote repository connected to your local repository.

```bash
git remote -v
```

---

# 3. Check Current Branch

Shows all local branches and highlights the current branch.

```bash
git branch
```

---

# 4. Create a New Branch

Creates a new branch without switching to it.

```bash
git branch <branch-name>
```

Example:

```bash
git branch feature/login
```

---

# 5. Create and Switch to a Branch

Creates a new branch and immediately switches to it.

```bash
git switch -c <branch-name>
```

or

```bash
git checkout -b <branch-name>
```

Example:

```bash
git switch -c feature/navbar
```

---

# 6. Switch Branch

Switch to an existing branch.

```bash
git switch <branch-name>
```

Example:

```bash
git switch main
```

---

# 7. Check Repository Status

Shows modified, staged, deleted, and untracked files.

```bash
git status
```

---

# 8. View File Differences

Displays unstaged changes.

```bash
git diff
```

---

# 9. Stage All Changes

Adds all modified files to the staging area.

```bash
git add .
```

---

# 10. Stage a Specific File

Adds only one file to the staging area.

```bash
git add <file-name>
```

Example:

```bash
git add README.md
```

---

# 11. Commit Changes

Creates a snapshot of staged changes.

```bash
git commit -m "Commit message"
```

Example:

```bash
git commit -m "Update README"
```

---

# 12. Push Branch to GitHub

Uploads a local branch to GitHub.

```bash
git push origin <branch-name>
```

Example:

```bash
git push origin feature/navbar
```

---

# 13. Push and Set Upstream

Used when pushing a branch for the first time.

```bash
git push -u origin <branch-name>
```

or

```bash
git push --set-upstream origin <branch-name>
```

After this, future pushes only require:

```bash
git push
```

---

# 14. Pull Latest Changes

Downloads and merges the latest changes from GitHub.

```bash
git pull origin main
```

---

# 15. Fetch Latest Changes

Downloads changes without merging them.

```bash
git fetch origin
```

or

```bash
git fetch
```

---

# 16. Merge Another Branch

Merge another branch into the current branch.

```bash
git merge origin/main
```

During merge conflicts, Git pauses and asks for manual resolution.

---

# 17. View Commit History

Shows complete commit history.

```bash
git log
```

---

# 18. Compact Commit History

Shows commits in one-line format.

```bash
git log --oneline
```

---

# 19. Graph View

Displays the commit graph.

```bash
git log --oneline --graph --all
```

---

# 20. Compare Branches

Shows commits present in one branch but not another.

```bash
git log --oneline main..feature-branch
```

---

# 21. Resolve Merge Conflict

After editing conflicted files:

Stage resolved files:

```bash
git add .
```

Commit resolution:

```bash
git commit -m "Resolve merge conflict"
```

Push updated branch:

```bash
git push
```

---

# 22. Delete Local Branch (Safe)

Deletes a branch only if it has been merged into the current branch.

```bash
git branch -d <branch-name>
```

Example:

```bash
git branch -d feature/navbar
```

---

# 23. Force Delete Local Branch

Deletes a branch even if it has not been merged.

```bash
git branch -D <branch-name>
```

Use with caution.

---

# 24. Delete Remote Branch

Deletes a branch from GitHub.

```bash
git push origin --delete <branch-name>
```

Example:

```bash
git push origin --delete feature/navbar
```

---

# 25. View Branch Tracking Information

Displays which remote branch each local branch tracks.

```bash
git branch -vv
```

---

# VS Code Shortcut

Open the current repository in VS Code.

```bash
code .
```

---

# GitHub Workflow Practiced

1. Clone Repository
2. Create Feature Branch
3. Make Changes
4. Check Status
5. View Differences
6. Stage Changes
7. Commit Changes
8. Push Branch
9. Create Pull Request
10. Review Pull Request
11. Merge Pull Request
12. Pull Latest Changes
13. Resolve Merge Conflict
14. Push Resolved Changes
15. Delete Local Branch
16. Delete Remote Branch

---

# Commands Summary

| Command | Purpose |
|---------|---------|
| `git clone` | Clone repository |
| `git remote -v` | View remote repository |
| `git branch` | List branches |
| `git switch -c` | Create & switch branch |
| `git switch` | Switch branch |
| `git status` | Check repository status |
| `git diff` | View file changes |
| `git add` | Stage changes |
| `git commit -m` | Commit staged changes |
| `git push` | Push commits |
| `git push -u` | Push & set upstream |
| `git pull` | Fetch and merge latest changes |
| `git fetch` | Download latest changes |
| `git merge` | Merge branches |
| `git log` | View commit history |
| `git log --oneline` | Compact commit history |
| `git log --graph --all` | View commit graph |
| `git branch -d` | Delete merged branch |
| `git branch -D` | Force delete branch |
| `git push origin --delete` | Delete remote branch |
| `git branch -vv` | View tracking information |
| `code .` | Open project in VS Code |

---

## Contributors

- **Aditya**
- **Aayush**

This repository was used to practice Git and GitHub collaboration, including branching, pull requests, merge conflict resolution, and branch management.