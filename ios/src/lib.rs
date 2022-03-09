use std::os::raw::{c_char};
use std::ffi::{CString, CStr};

extern crate rivi_loader;
use rivi_loader::DebugOption;

#[no_mangle]
pub extern fn rust_greeting(to: *const c_char) -> *mut c_char {
    let c_str = unsafe { CStr::from_ptr(to) };
    let recipient = match c_str.to_str() {
        Err(_) => "there",
        Ok(string) => string,
    };

    let vk = rivi_loader::new(DebugOption::None).unwrap();
    let caps = format!("{}", vk);

    CString::new(caps).unwrap().into_raw()
}

#[no_mangle]
pub extern fn rust_greeting_free(s: *mut c_char) {
    unsafe {
        if s.is_null() { return }
        CString::from_raw(s)
    };
}