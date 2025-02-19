mod input_0;
mod input_1;
mod input_2;
mod output_0;


use orion::utils::{assert_eq, assert_seq_eq};
use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorSub};
use orion::operators::tensor::FP8x23TensorPartialEq;

#[test]
#[available_gas(2000000000)]
fn test_where_fp8x23_broadcast() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let input_2 = input_2::input_2();
    let z = output_0::output_0();

    let y = input_0.where(@input_1,@input_2);

    assert_eq(y, z);
}
