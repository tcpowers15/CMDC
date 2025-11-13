const std = @import("std");
const carbon = @cImport(@cInclude("Carbon/Carbon.h"));
const appServices = @cImport(@cInclude("ApplicationServices/ApplicationsServices.h"));

pub fn run() !void {
    // 1) allocate resources
    // 2) register hot keys
    // 3) set up event spec
    // 4) run event listening loop
    var stdout_buffer: [1024]u8 = undefined;
    var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
    const stdout = &stdout_writer.interface;

    try stdout.print("in run function \n", .{});
    try stdout.flush();

    var general_purpose_allocator = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = general_purpose_allocator.deinit();
}
