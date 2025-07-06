#![no_std]
#![no_main]

use core::panic::PanicInfo;
use vga::colors::{Color, ColorCode};
use vga::buffer::WRITER;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

#[no_mangle]
pub extern "C" fn _start() -> ! {
    use core::fmt::Write;

    let color_code = ColorCode::new(Color::White, Color::Black);


    WRITER.lock().set_color_code(color_code);
    writeln!(WRITER.lock(), "Hello, SaillOS!").unwrap();

    loop {}
}

