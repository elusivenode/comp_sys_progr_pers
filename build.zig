const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const c_flags = &.{ "-std=c11" };

    const c_programs = [_]struct {
        name: []const u8,
        sources: []const []const u8,
        include_ch2: bool,
    }{
        .{ .name = "hello", .sources = &.{ "ch_1/hello.c" }, .include_ch2 = false },
        .{ .name = "print_bytes", .sources = &.{ "ch_1/print_bytes.c" }, .include_ch2 = false },
        .{ .name = "byte_rep", .sources = &.{ "ch_2/byte_rep.c" }, .include_ch2 = false },
        .{ .name = "pp_2_5", .sources = &.{ "ch_2/pp_2_5.c" }, .include_ch2 = false },
        .{ .name = "pp_2_7", .sources = &.{ "ch_2/pp_2_7.c" }, .include_ch2 = false },
        .{ .name = "pp_2_10", .sources = &.{ "ch_2/pp_2_10.c" }, .include_ch2 = false },
        .{ .name = "pp_2_11_bug", .sources = &.{ "ch_2/utils.c", "ch_2/pp_2_11_bug.c" }, .include_ch2 = true },
        .{ .name = "pp_2_11_fix", .sources = &.{ "ch_2/utils.c", "ch_2/pp_2_11_fix.c" }, .include_ch2 = true },
        .{ .name = "pp_2_12", .sources = &.{ "ch_2/pp_2_12.c" }, .include_ch2 = false },
    };

    for (c_programs) |program| {
        const exe = b.addExecutable(.{
            .name = program.name,
            .target = target,
            .optimize = optimize,
        });
        exe.addCSourceFiles(.{ .files = program.sources, .flags = c_flags });
        exe.linkLibC();
        if (program.include_ch2) {
            exe.addIncludePath(.{ .path = "ch_2" });
        }
        b.installArtifact(exe);
    }

    const zig_exe = b.addExecutable(.{
        .name = "print_bytes_zig",
        .root_source_file = .{ .path = "ch_1/print_bytes.zig" },
        .target = target,
        .optimize = optimize,
    });
    b.installArtifact(zig_exe);
}
