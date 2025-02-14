load("@io_bazel_rules_scala//scala/private:coverage_replacements_provider.bzl", "CoverageReplacements")

def _print_coverage_replacements_impl(ctx):
    target = ctx.attr.target_rule[CoverageReplacements]
    print("======= REPLACEMENTS ======= " + str(target.replacements))

print_coverage_replacements = rule(
    implementation = _print_coverage_replacements_impl,
    attrs = {"target_rule": attr.label()},
)
