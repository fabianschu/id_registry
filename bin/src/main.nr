use dep::smt_bn254;

fn main(
    new_entry: [Field; 2],
    old_root: Field,
    siblings: [Field; smt_bn254::TREE_DEPTH],
    expected_new_root: Field
) {
    assert(smt_bn254::add(new_entry, old_root, siblings) == expected_new_root);
}
