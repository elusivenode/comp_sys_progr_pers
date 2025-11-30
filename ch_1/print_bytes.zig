const std = @import("std");

pub fn main() !void {
    const gpa = std.heap.page_allocator;
    const file: std.fs.File = try openHelloFile(gpa);
    defer file.close();

    var buffer: [1]u8 = undefined;
    while (true) {
        const bytes_read = try file.read(buffer[0..]);
        if (bytes_read == 0) break;
        const ch = buffer[0];
        std.debug.print("{c}: hex: {x} dec: {d}\n", .{ ch, ch, ch });
    }
}

fn openHelloFile(allocator: std.mem.Allocator) !std.fs.File {
    const primary = "ch_1/hello.c";
    const fallback_from_bin = "../../ch_1/hello.c";

    if (std.fs.cwd().openFile(primary, .{})) |file| {
        return file;
    } else |err| switch (err) {
        error.FileNotFound => {},
        else => return err,
    }

    const exe_path = try std.fs.selfExePathAlloc(allocator);
    defer allocator.free(exe_path);

    const exe_dir = std.fs.path.dirname(exe_path) orelse ".";
    const fallback_path = try std.fs.path.join(allocator, &.{ exe_dir, fallback_from_bin });
    defer allocator.free(fallback_path);

    return std.fs.cwd().openFile(fallback_path, .{});
}
