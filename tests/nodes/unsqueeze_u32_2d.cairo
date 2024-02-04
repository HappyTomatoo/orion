mod input_0;
mod output_0;


use orion::operators::tensor::U32TensorPartialEq;
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{U32Tensor, U32TensorSub};
use orion::utils::{assert_eq, assert_seq_eq};
use core::array::{ArrayTrait, SpanTrait};

#[test]
#[available_gas(2000000000)]
fn test_unsqueeze_u32_2d() {
    let input_0 = input_0::input_0();
    let z = output_0::output_0();

    let y = input_0.unsqueeze(array![1, 4, 0].span());

    assert_eq(y, z);
}
