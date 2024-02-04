use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::{FP8x23Tensor, FP8x23TensorAdd};
use orion::numbers::{FixedTrait, FP8x23};

fn input_1() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);
    shape.append(4);
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 4525518, sign: false });
    data.append(FP8x23 { mag: 5259039, sign: true });
    data.append(FP8x23 { mag: 4902294, sign: true });
    data.append(FP8x23 { mag: 7215282, sign: false });
    data.append(FP8x23 { mag: 6105136, sign: true });
    data.append(FP8x23 { mag: 11225632, sign: false });
    data.append(FP8x23 { mag: 8302024, sign: false });
    data.append(FP8x23 { mag: 16591307, sign: true });
    data.append(FP8x23 { mag: 1674214, sign: true });
    data.append(FP8x23 { mag: 6789284, sign: false });
    data.append(FP8x23 { mag: 4502548, sign: true });
    data.append(FP8x23 { mag: 7462902, sign: true });
    data.append(FP8x23 { mag: 4320235, sign: true });
    data.append(FP8x23 { mag: 3190392, sign: true });
    data.append(FP8x23 { mag: 1740484, sign: false });
    data.append(FP8x23 { mag: 1557919, sign: false });
    data.append(FP8x23 { mag: 1374899, sign: false });
    data.append(FP8x23 { mag: 9363886, sign: true });
    data.append(FP8x23 { mag: 12480922, sign: false });
    data.append(FP8x23 { mag: 20130672, sign: true });
    data.append(FP8x23 { mag: 3971236, sign: true });
    data.append(FP8x23 { mag: 7092766, sign: true });
    data.append(FP8x23 { mag: 4235542, sign: false });
    data.append(FP8x23 { mag: 6999284, sign: true });
    data.append(FP8x23 { mag: 4524231, sign: false });
    data.append(FP8x23 { mag: 1031761, sign: false });
    data.append(FP8x23 { mag: 14527510, sign: true });
    data.append(FP8x23 { mag: 15157414, sign: true });
    data.append(FP8x23 { mag: 13849730, sign: true });
    data.append(FP8x23 { mag: 7325780, sign: true });
    data.append(FP8x23 { mag: 19150614, sign: true });
    data.append(FP8x23 { mag: 3085445, sign: false });
    data.append(FP8x23 { mag: 10552206, sign: true });
    data.append(FP8x23 { mag: 7890319, sign: true });
    data.append(FP8x23 { mag: 1390200, sign: false });
    data.append(FP8x23 { mag: 7338448, sign: false });
    data.append(FP8x23 { mag: 9865018, sign: false });
    data.append(FP8x23 { mag: 5836528, sign: true });
    data.append(FP8x23 { mag: 257489, sign: true });
    data.append(FP8x23 { mag: 3419194, sign: false });
    data.append(FP8x23 { mag: 4815813, sign: true });
    data.append(FP8x23 { mag: 5451730, sign: true });
    data.append(FP8x23 { mag: 5357836, sign: true });
    data.append(FP8x23 { mag: 13437259, sign: true });
    data.append(FP8x23 { mag: 12776456, sign: false });
    data.append(FP8x23 { mag: 1040500, sign: false });
    data.append(FP8x23 { mag: 6347629, sign: false });
    data.append(FP8x23 { mag: 768580, sign: true });
    data.append(FP8x23 { mag: 1856652, sign: false });
    data.append(FP8x23 { mag: 9727590, sign: true });
    data.append(FP8x23 { mag: 1163720, sign: true });
    data.append(FP8x23 { mag: 19893312, sign: false });
    data.append(FP8x23 { mag: 6670710, sign: false });
    data.append(FP8x23 { mag: 12627989, sign: true });
    data.append(FP8x23 { mag: 5925065, sign: true });
    data.append(FP8x23 { mag: 2064145, sign: true });
    data.append(FP8x23 { mag: 2921622, sign: true });
    data.append(FP8x23 { mag: 6036185, sign: false });
    data.append(FP8x23 { mag: 6012981, sign: true });
    data.append(FP8x23 { mag: 8142272, sign: true });
    data.append(FP8x23 { mag: 22916826, sign: false });
    data.append(FP8x23 { mag: 9351772, sign: true });
    data.append(FP8x23 { mag: 16524275, sign: true });
    data.append(FP8x23 { mag: 2438246, sign: false });
    data.append(FP8x23 { mag: 20169540, sign: true });
    data.append(FP8x23 { mag: 134078, sign: true });
    data.append(FP8x23 { mag: 2713766, sign: false });
    data.append(FP8x23 { mag: 16188388, sign: false });
    data.append(FP8x23 { mag: 3589682, sign: true });
    data.append(FP8x23 { mag: 1063762, sign: true });
    data.append(FP8x23 { mag: 7815083, sign: true });
    data.append(FP8x23 { mag: 6348636, sign: false });
    data.append(FP8x23 { mag: 4530695, sign: true });
    data.append(FP8x23 { mag: 7469298, sign: false });
    data.append(FP8x23 { mag: 7325134, sign: true });
    data.append(FP8x23 { mag: 2692019, sign: false });
    data.append(FP8x23 { mag: 874681, sign: true });
    data.append(FP8x23 { mag: 6650540, sign: false });
    data.append(FP8x23 { mag: 10089647, sign: false });
    data.append(FP8x23 { mag: 4923024, sign: true });
    data.append(FP8x23 { mag: 3315151, sign: false });
    data.append(FP8x23 { mag: 1457470, sign: false });
    data.append(FP8x23 { mag: 5470786, sign: false });
    data.append(FP8x23 { mag: 2868822, sign: true });
    data.append(FP8x23 { mag: 4246805, sign: true });
    data.append(FP8x23 { mag: 18505256, sign: true });
    data.append(FP8x23 { mag: 3936190, sign: true });
    data.append(FP8x23 { mag: 8093713, sign: true });
    data.append(FP8x23 { mag: 16349175, sign: false });
    data.append(FP8x23 { mag: 11068122, sign: false });
    data.append(FP8x23 { mag: 3749413, sign: false });
    data.append(FP8x23 { mag: 17441864, sign: true });
    data.append(FP8x23 { mag: 1883478, sign: false });
    data.append(FP8x23 { mag: 9263616, sign: false });
    data.append(FP8x23 { mag: 7243952, sign: true });
    data.append(FP8x23 { mag: 405480, sign: false });
    data.append(FP8x23 { mag: 7575996, sign: false });
    data.append(FP8x23 { mag: 10759260, sign: false });
    data.append(FP8x23 { mag: 2551835, sign: true });
    data.append(FP8x23 { mag: 856625, sign: true });
    data.append(FP8x23 { mag: 7553555, sign: false });
    data.append(FP8x23 { mag: 1352994, sign: false });
    data.append(FP8x23 { mag: 208875, sign: true });
    data.append(FP8x23 { mag: 8348104, sign: true });
    data.append(FP8x23 { mag: 491335, sign: true });
    data.append(FP8x23 { mag: 11149267, sign: true });
    data.append(FP8x23 { mag: 5898778, sign: false });
    data.append(FP8x23 { mag: 4338052, sign: false });
    data.append(FP8x23 { mag: 11249455, sign: true });
    data.append(FP8x23 { mag: 756821, sign: true });
    data.append(FP8x23 { mag: 3970259, sign: false });
    data.append(FP8x23 { mag: 5989580, sign: true });
    data.append(FP8x23 { mag: 11286085, sign: true });
    data.append(FP8x23 { mag: 3635279, sign: false });
    data.append(FP8x23 { mag: 3133278, sign: true });
    data.append(FP8x23 { mag: 20313782, sign: false });
    data.append(FP8x23 { mag: 13736921, sign: true });
    data.append(FP8x23 { mag: 6854841, sign: true });
    data.append(FP8x23 { mag: 14518657, sign: false });
    data.append(FP8x23 { mag: 16244271, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
