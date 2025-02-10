```
$ bazel aquery --collect_code_coverage 'outputs(".*-offline.jar", :java_test)'
$ bazel aquery --collect_code_coverage 'inputs(".*-offline.jar", :java_test)'
```
