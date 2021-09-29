function git-rebase-to -d 'Rebase to a branch. Good for squashing 🥒' -a branch
    if test -n "$branch"
        set -l current_branch (git rev-parse --abbrev-ref HEAD)
        switch $current_branch
            case $branch
                echo "You are already on $branch"
                return 1
            case ''
                echo "Not a git repo"
                return 1
            case '*'
                git reset (git merge-base $branch (git rev-parse --abbrev-ref HEAD))
                echo Rebased all commits to $branch. Now run git add
        end
    else
        echo Missing branch name! Example usage: git-rebase-to master
        return 1
    end
end
