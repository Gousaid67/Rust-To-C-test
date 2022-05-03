cargo build -r
cbindgen --config cbindgen.toml --crate rust_to_c --output ./C/lib/parse_json.h --lang c
Copy-Item ./target/release/parse_json.lib ./C/lib