mod input_0;
mod input_1;
mod output_0;


use orion::operators::sequence::SequenceTrait;
use orion::operators::sequence::I32Sequence;
use orion::utils::{assert_eq, assert_seq_eq};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::I32TensorPartialEq;
use orion::operators::sequence::I8Sequence;
use orion::operators::tensor::I8TensorPartialEq;

#[test]
#[available_gas(2000000000)]
fn test_sequence_at_i8_positive() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let z_0 = output_0::output_0();

    let y_0 = SequenceTrait::sequence_at(input_0, input_1);

    assert_eq(y_0, z_0);
}
