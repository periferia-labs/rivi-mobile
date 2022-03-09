# rivi-mobile

rivi-mobile is a proof-of-concept mobile application which runs [rivi-loader](https://github.com/periferia-labs/rivi-loader) on a mobile device, currently only iOS. This acts as an entrypoint to run Vulkan Compute programs (i.e., SPIR-V kernels) on an iOS device, which uses the Rust Vulkan wrapper [ash](https://github.com/MaikKlein/ash) under the hood.