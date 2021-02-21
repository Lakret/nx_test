rsync -azP \
  --exclude=deps \
  --exclude=.elixir_ls \
  --exclude=.bazelversion \
  --exclude=_build \
  . gpu:~/nx_test
