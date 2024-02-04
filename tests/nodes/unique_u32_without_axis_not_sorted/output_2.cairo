use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{I32Tensor, I32TensorAdd};
use orion::numbers::NumberTrait;

fn output_2() -> Tensor<i32> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(27);

    let mut data = ArrayTrait::new();
    data.append(0);
    data.append(1);
    data.append(1);
    data.append(2);
    data.append(2);
    data.append(3);
    data.append(3);
    data.append(0);
    data.append(4);
    data.append(4);
    data.append(3);
    data.append(0);
    data.append(0);
    data.append(3);
    data.append(2);
    data.append(0);
    data.append(0);
    data.append(3);
    data.append(0);
    data.append(2);
    data.append(1);
    data.append(3);
    data.append(0);
    data.append(0);
    data.append(2);
    data.append(0);
    data.append(2);
    TensorTrait::new(shape.span(), data.span())
}
