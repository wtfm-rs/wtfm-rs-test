cargo new --lib --name tet-wtfm-rs /tmp/test-wtfm-rs
cd /tmp/test-wtfm-rs && cargo add --git https://github.com/wtfm-rs/wtfm-rs.github.io wtfm-rs && cd -
mkdir /tmp/test-wtfm-rs/tests
cat > /tmp/test-wtfm-rs/tests/it-works <<EOF
#[test]
fn it_works() {
    use wtfm_rs::add;
    assert_eq!(add(2, 2), 4);
}
EOF
cd /tmp/test-wtfm-rs && cargo test --tests && cd -
rm -rf /tmp/test-wtfm-rs
