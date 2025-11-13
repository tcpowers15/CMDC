const std = @import("std");
const CMDC = @import("CMDC");

pub fn main() !void {
    std.debug.print("Main will just kick things off\n", .{});
    try CMDC.bufferedPrint();
}
