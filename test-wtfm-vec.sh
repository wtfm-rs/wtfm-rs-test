cargo new --lib --name test-wtfm-vec /tmp/test-wtfm-vec
cd /tmp/test-wtfm-vec && cargo add --git https://github.com/wtfm-rs/wtfm-rs.github.io wtfm-vec && cd -
mkdir /tmp/test-wtfm-vec/tests
cat > /tmp/test-wtfm-vec/tests/it-works <<EOF
#[test]
fn it_works() {
    wtfm-vec::vec_extend();
    wtfm-vec::vec_push_pop();
}
EOF
cd /tmp/test-wtfm-vec && cargo test --tests && cd -
rm -rf /tmp/test-wtfm-vec
