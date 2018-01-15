# deploy to somewhere servers
# needs fully configured somewhere host in sshconfig
# to be used as post-commit hook

ssh somewhere << EOF
  echo "connected to somewhere.hogwarts.edu"
  cd /teaching/a1234/2018-spring
  git pull
  echo "updated site to git repo"
  exit
EOF

open "http://design.hogwarts.edu/2018-spring/a1234"