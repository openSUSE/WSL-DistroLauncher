#!/usr/bin/env bash

# Update ChangeLog file
git log '--pretty=format:%cd %an  <%ae>%n%n%s%n%b%n' --date=short > ChangeLog
sed -i '/(cherry picked/d' ChangeLog

# Update AUTHORS
git log --pretty=format:'%aN <%aE>' | sort | uniq > AUTHORS

