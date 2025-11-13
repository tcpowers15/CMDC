const std = @import("std");

pub fn bufferedPrint() !void {
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;

    try stdout.print("Root will have all of the logic. Register hot keys + listenr loop\n", .{});

    try stdout.flush();
}
