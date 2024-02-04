mod input_0;
mod output_0;


use orion::operators::tensor::{U32Tensor, U32TensorSub};
use orion::utils::{assert_eq, assert_seq_eq};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::I8TensorPartialEq;
use orion::operators::tensor::U32TensorPartialEq;
use orion::operators::tensor::{I8Tensor, I8TensorSub};
use orion::operators::tensor::{TensorTrait, Tensor};

#[test]
#[available_gas(2000000000)]
fn test_nonzero_i8_2d() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.nonzero();

    assert_eq(y, z);
}
