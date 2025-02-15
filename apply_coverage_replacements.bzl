load("@io_bazel_rules_scala//scala/private:coverage_replacements_provider.bzl", "CoverageReplacements")

JAVA_INFO_CTOR_PARAMS = [
    "output_jar",
    "compile_jar",
    "source_jar",
    "compile_jdeps",
    "generated_class_jar",
    "generated_source_jar",
    "native_headers_jar",
    "manifest_proto",
    "neverlink",
    "deps",
    "runtime_deps",
    "exports",
    "exported_plugins",
    "jdeps",
    "native_libraries",
]

def _apply_coverage_replacements_impl(ctx):
    coverage_replacements = ctx.attr.target_rule[CoverageReplacements]
    print("======= REPLACEMENTS ======= " + str(coverage_replacements.replacements))
    java_info = ctx.attr.target_rule[JavaInfo]
    print("======= JAVA_INFO ======= " + str(java_info))

#    return JavaInfo(
#        java_info.out,
#    )

apply_coverage_replacements = rule(
    implementation = _apply_coverage_replacements_impl,
    attrs = {"target_rule": attr.label()},
)
