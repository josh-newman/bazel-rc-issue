Run repro.sh:

```lang=text
  $ ./repro.sh
  +++ dirname ./repro.sh
  ++ cd .
  ++ pwd
  + ROOT=/Users/joshnewman/p/src/github.com/josh-newman/bazel-rc-issue
  + cd /Users/joshnewman/p/src/github.com/josh-newman/bazel-rc-issue/workspace-with-bazelrc
  + HOME=/Users/joshnewman/p/src/github.com/josh-newman/bazel-rc-issue/home-with-bad-bazelrc
  + bazel build //:noop
  INFO: Analysed target //:noop (0 packages loaded).
  INFO: Found 1 target...
  Target //:noop up-to-date:
    bazel-genfiles/hello.txt
  INFO: Elapsed time: 0.118s, Critical Path: 0.00s
  INFO: 0 processes.
  INFO: Build completed successfully, 1 total action
  + cd /Users/joshnewman/p/src/github.com/josh-newman/bazel-rc-issue/workspace-without-bazelrc
  + HOME=/Users/joshnewman/p/src/github.com/josh-newman/bazel-rc-issue/home-with-bad-bazelrc
  + bazel build //:noop
  INFO: Options provided by the client:
    Inherited 'common' options: --isatty=1 --terminal_columns=361
  INFO: Reading rc options for 'build' from /Users/joshnewman/p/src/github.com/josh-newman/bazel-rc-issue/home-with-bad-bazelrc/.bazelrc:
    'build' options: --bad_option
  ERROR: Unrecognized option: --bad_option
```
