mod input_0;
mod input_1;
mod input_2;
mod output_0;


use orion::operators::tensor::{TensorTrait, Tensor};
use core::array::{ArrayTrait, SpanTrait};
use orion::utils::{assert_eq, assert_seq_eq};
use orion::operators::tensor::U32TensorPartialEq;
use orion::operators::tensor::{U32Tensor, U32TensorSub};

#[test]
#[available_gas(2000000000)]
fn test_scatter_u32_default() {
    let input_0 = input_0::input_0();
    let input_1 = input_1::input_1();
    let input_2 = input_2::input_2();
    let z = output_0::output_0();

    let y = input_0.scatter(updates:input_1, indices:input_2, axis:Option::Some(0), reduction:Option::Some('none'));

    assert_eq(y, z);
}
