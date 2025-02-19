mod input_0;
mod output_0;


use orion::operators::tensor::FP8x23TensorPartialEq;
use core::array::{ArrayTrait, SpanTrait};
use orion::numbers::{FixedTrait, FP8x23};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};

#[test]
#[available_gas(2000000000)]
fn test_shrink_soft_fp8x23() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = TensorTrait::shrink(input_0, Option::Some(FixedTrait::new(8388608, false)), Option::Some(FixedTrait::new(8388608, false)));

    assert_eq(y, z);
}
