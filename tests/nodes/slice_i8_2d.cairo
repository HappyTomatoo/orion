mod input_0;
mod output_0;


use core::array::{ArrayTrait, SpanTrait};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::{I8Tensor, I8TensorSub};
use orion::operators::tensor::I8TensorPartialEq;
use orion::operators::tensor::{TensorTrait, Tensor};

#[test]
#[available_gas(2000000000)]
fn test_slice_i8_2d() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.slice(array![0, 2].span(), array![2, 4].span(), Option::Some(array![0, 1].span()), Option::Some(array![1, 1].span()));

    assert_eq(y, z);
}
