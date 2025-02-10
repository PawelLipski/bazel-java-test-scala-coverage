After patching io.bazel.rulesscala.coverage.instrumenter.JacocoInstrumenter.main() in rules_scala to add some `throw new RuntimeException("lolxd")`:

```
$ bazel coverage ...

ERROR: /Users/pawel_lipski/.virtuslab-commons/test_coverage_scala/BUILD.bazel:32:14: JacocoInstrumenter main-offline.jar failed: Worker process did not return a WorkResponse:

---8<---8<--- Start of log, file at /private/var/tmp/_bazel_pawel_lipski/a10caa736bcbdc136a681c3400f0740a/bazel-workers/worker-13-JacocoInstrumenter.log ---8<---8<---
Exception in thread "main" java.lang.RuntimeException: lolxd
	at io.bazel.rulesscala.coverage.instrumenter.JacocoInstrumenter.main(JacocoInstrumenter.java:27)
---8<---8<--- End of log ---8<---8<---
```

Also check:

```
$ bazel aquery --collect_code_coverage 'outputs(".*-offline.jar", ...)'
$ bazel aquery --collect_code_coverage 'inputs(".*-offline.jar", ...)'
```
