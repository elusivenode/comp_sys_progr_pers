const std = @import("std");

pub fn main() !void {
    const file: std.fs.File = try std.fs.cwd().openFile("hello.c", .{});
    defer file.close();

    var buffer: [1]u8 = undefined;
    while (true) {
        const bytes_read = try file.read(buffer[0..]);
        if (bytes_read == 0) break;
        const ch = buffer[0];
        std.debug.print("{c}: hex: {x} dec: {d}\n", .{ ch, ch, ch });
    }
}
