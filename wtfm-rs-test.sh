cargo new --lib --name wtfm-test /tmp/wtfm-test
cd /tmp/wtfm-test && cargo add --git https://github.com/wtfm-rs/wtfm-rs.github.io  && cd -
mkdir /tmp/wtfm-test/tests
cat > /tmp/wtfm-test/tests/it-works <<EOF
#[test]
fn it_works() {
    use wtfm_rs::add;
    assert_eq!(add(2, 2), 4);
}
EOF
cd /tmp/wtfm-test && cargo test --tests && cd -
rm -rf /tmp/wtfm-test
