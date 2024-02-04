mod input_0;
mod input_1;
mod output_0;


use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{U32Tensor, U32TensorAdd};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::U32TensorPartialEq;
use orion::operators::tensor::{TensorTrait, Tensor};

#[test]
#[available_gas(2000000000)]
fn test_compress_u32_3d_axis2_2() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let z_0 = output_0::output_0();

    let y_0 = input_0.compress(condition:input_1, axis:Option::Some(2));

    assert_eq(y_0, z_0);
}
