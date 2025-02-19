use core::debug::PrintTrait;
use core::array::{ArrayTrait, SpanTrait};

use orion::operators::tensor::{
    TensorTrait, Tensor, I8Tensor, I32Tensor, U32Tensor, FP16x16Tensor, FP32x32Tensor
};
use orion::numbers::{FP16x16, FP16x16Impl, FP32x32, FP32x32Impl, FixedTrait};
use orion::numbers::{NumberTrait};

#[test]
#[available_gas(200000000000)]
fn qlinearmul_test() {
    let a = TensorTrait::<
        i8
    >::new(
        shape: array![4, 3].span(),
        data: array![
            1_i8,
            2_i8,
            3_i8,
            4_i8,
            5_i8,
            6_i8,
            7_i8,
            8_i8,
            9_i8,
            10_i8,
            11_i8,
            12_i8
        ]
            .span(),
    );
    let b = TensorTrait::<
        i8
    >::new(
        shape: array![4, 3].span(),
        data: array![
            2_i8,
            4_i8,
            6_i8,
            8_i8,
            10_i8,
            12_i8,
            14_i8,
            16_i8,
            18_i8,
            20_i8,
            22_i8,
            24_i8
        ]
            .span(),
    );

    let a_scale = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(2000, false)].span(),);
    let a_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(0, false)].span(),);
    let b_scale = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(2500, false)].span(),);
    let b_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(0, false)].span(),);

    let y_scale = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(3000, false)].span(),);
    let y_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(0, false)].span(),);

    let actual_output = a
        .qlinear_mul(@a_scale, @a_zero_point, @b, @b_scale, @b_zero_point, @y_scale, @y_zero_point);

    assert((*actual_output.data[0]).into() == 0, '*result[0] == 0');
    assert((*actual_output.data[1]).into() == 0, '*result[1] == 0');
    assert((*actual_output.data[2]).into() == 0, '*result[2] == 0');
    assert((*actual_output.data[3]).into() == 0, '*result[3] == 0');
    assert((*actual_output.data[4]).into() == 1, '*result[4] == 1');
    assert((*actual_output.data[5]).into() == 1, '*result[5] == 1');
    assert((*actual_output.data[6]).into() == 2, '*result[6] == 2');
    assert((*actual_output.data[7]).into() == 3, '*result[7] == 3');
    assert((*actual_output.data[8]).into() == 4, '*result[8] == 4');
    assert((*actual_output.data[9]).into() == 5, '*result[9] == 5');
    assert((*actual_output.data[10]).into() == 6, '*result[10] == 6');
    assert((*actual_output.data[11]).into() == 7, '*result[11] == 7');
}


#[test]
#[available_gas(200000000000)]
fn qlinear_mul_broadcast_test() {
    let a = TensorTrait::<
        i8
    >::new(
        shape: array![2, 4].span(),
        data: array![
            1_i8,
            2_i8,
            3_i8,
            4_i8,
            5_i8,
            6_i8,
            7_i8,
            8_i8
        ]
            .span(),
    );
    let b = TensorTrait::<
        i8
    >::new(
        shape: array![1, 4].span(),
        data: array![
            2_i8,
            4_i8,
            6_i8,
            8_i8,
        ]
            .span(),
    );

    let a_scale = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(20000, false)].span(),);
    let a_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(0, false)].span(),);
    let b_scale = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(25000, false)].span(),);
    let b_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(0, false)].span(),);

    let y_scale = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(30000, false)].span(),);
    let y_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(0, false)].span(),);

    let actual_output = a
        .qlinear_mul(@a_scale, @a_zero_point, @b, @b_scale, @b_zero_point, @y_scale, @y_zero_point);

    assert((*actual_output.data[0]).into() == 0, '*result[0] == 0');
    assert((*actual_output.data[1]).into() == 2, '*result[1] == 2');
    assert((*actual_output.data[2]).into() == 4, '*result[2] == 4');
    assert((*actual_output.data[3]).into() == 8, '*result[3] == 8');
    assert((*actual_output.data[4]).into() == 2, '*result[4] == 2');
    assert((*actual_output.data[5]).into() == 6, '*result[5] == 6');
    assert((*actual_output.data[6]).into() == 10, '*result[6] == 10');
    assert((*actual_output.data[7]).into() == 16, '*result[7] == 16');
}


#[test]
#[available_gas(200000000000)]
fn test_example_doc() {
    let a = TensorTrait::<
        i8
    >::new(
        shape: array![2, 3].span(),
        data: array![
            21_i8,
            21_i8,
            21_i8,
            41_i8,
            41_i8,
            41_i8
        ]
            .span(),
    );
    let b = TensorTrait::<
        i8
    >::new(
        shape: array![1, 3].span(),
        data: array![
            4_i8,
            8_i8,
            12_i8
        ]
            .span(),
    );

    let a_scale = TensorTrait::<
        FP16x16
    >::new(
        shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(131072, false)].span(),
    );
    let a_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(65536, false)].span(),);
    let b_scale = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(16384, false)].span(),);
    let b_zero_point = TensorTrait::<
        FP16x16
    >::new(shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(0, false)].span(),);

    let y_scale = TensorTrait::<
        FP16x16
    >::new(
        shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(393216, false)].span(),
    );
    let y_zero_point = TensorTrait::<
        FP16x16
    >::new(
        shape: array![1].span(), data: array![FixedTrait::<FP16x16>::new(655360, false)].span(),
    );

    let actual_output = a
        .qlinear_mul(@a_scale, @a_zero_point, @b, @b_scale, @b_zero_point, @y_scale, @y_zero_point);

    assert((*actual_output.data[0]).into() == 16, '*result[0] == 16');
    assert((*actual_output.data[1]).into() == 23, '*result[1] == 23');
    assert((*actual_output.data[2]).into() == 30, '*result[2] == 30');
    assert((*actual_output.data[3]).into() == 23, '*result[3] == 23');
    assert((*actual_output.data[4]).into() == 36, '*result[4] == 36');
    assert((*actual_output.data[5]).into() == 50, '*result[5] == 50');
}

