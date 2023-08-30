use array::ArrayTrait;
use option::OptionTrait;
use array::SpanTrait;

use orion::operators::tensor::core::{Tensor, TensorTrait};
use orion::numbers::NumberTrait;

/// Cf: TensorTrait::abs docstring
fn abs<
    T,
    F,
    MAG,
    impl TTensor: TensorTrait<T, F>,
    impl TNumberTrait: NumberTrait<T, MAG>,
    impl TCopy: Copy<T>,
    impl TDrop: Drop<T>
>(
    mut z: Tensor<T>
) -> Tensor<T> {
    let mut data_result = ArrayTrait::<T>::new();
    loop {
        match z.data.pop_front() {
            Option::Some(item) => {
                data_result.append((*item).abs());
            },
            Option::None(_) => {
                break;
            }
        };
    };

    return TensorTrait::<T>::new(z.shape, data_result.span(), z.extra);
}
