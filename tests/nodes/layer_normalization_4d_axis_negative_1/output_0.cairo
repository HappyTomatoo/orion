use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::{FixedTrait, FP8x23};

fn output_0() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(2);
    shape.append(3);
    shape.append(4);
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 19016228, sign: false });
    data.append(FP8x23 { mag: 15560107, sign: false });
    data.append(FP8x23 { mag: 8897166, sign: true });
    data.append(FP8x23 { mag: 14628724, sign: false });
    data.append(FP8x23 { mag: 14054839, sign: false });
    data.append(FP8x23 { mag: 3259770, sign: true });
    data.append(FP8x23 { mag: 5376533, sign: false });
    data.append(FP8x23 { mag: 12620596, sign: true });
    data.append(FP8x23 { mag: 4605447, sign: false });
    data.append(FP8x23 { mag: 11836714, sign: false });
    data.append(FP8x23 { mag: 14989397, sign: false });
    data.append(FP8x23 { mag: 4350642, sign: false });
    data.append(FP8x23 { mag: 3512472, sign: false });
    data.append(FP8x23 { mag: 14095496, sign: false });
    data.append(FP8x23 { mag: 13134362, sign: false });
    data.append(FP8x23 { mag: 15037165, sign: false });
    data.append(FP8x23 { mag: 15250170, sign: false });
    data.append(FP8x23 { mag: 9352358, sign: true });
    data.append(FP8x23 { mag: 324961, sign: false });
    data.append(FP8x23 { mag: 11596276, sign: false });
    data.append(FP8x23 { mag: 19902878, sign: false });
    data.append(FP8x23 { mag: 10482114, sign: false });
    data.append(FP8x23 { mag: 13144152, sign: true });
    data.append(FP8x23 { mag: 1302801, sign: true });
    data.append(FP8x23 { mag: 13099238, sign: false });
    data.append(FP8x23 { mag: 24340960, sign: false });
    data.append(FP8x23 { mag: 15614434, sign: false });
    data.append(FP8x23 { mag: 4978514, sign: true });
    data.append(FP8x23 { mag: 9473866, sign: false });
    data.append(FP8x23 { mag: 13340405, sign: false });
    data.append(FP8x23 { mag: 23952576, sign: false });
    data.append(FP8x23 { mag: 8237391, sign: false });
    data.append(FP8x23 { mag: 6954001, sign: true });
    data.append(FP8x23 { mag: 5484904, sign: false });
    data.append(FP8x23 { mag: 13952376, sign: false });
    data.append(FP8x23 { mag: 17846270, sign: false });
    data.append(FP8x23 { mag: 1468006, sign: false });
    data.append(FP8x23 { mag: 4739795, sign: true });
    data.append(FP8x23 { mag: 9379485, sign: false });
    data.append(FP8x23 { mag: 14359034, sign: false });
    data.append(FP8x23 { mag: 18100568, sign: false });
    data.append(FP8x23 { mag: 10909375, sign: false });
    data.append(FP8x23 { mag: 2551079, sign: true });
    data.append(FP8x23 { mag: 16702075, sign: false });
    data.append(FP8x23 { mag: 13922604, sign: false });
    data.append(FP8x23 { mag: 19848816, sign: false });
    data.append(FP8x23 { mag: 14230550, sign: false });
    data.append(FP8x23 { mag: 7037550, sign: true });
    data.append(FP8x23 { mag: 14728206, sign: false });
    data.append(FP8x23 { mag: 14066155, sign: false });
    data.append(FP8x23 { mag: 16967740, sign: false });
    data.append(FP8x23 { mag: 6793223, sign: false });
    data.append(FP8x23 { mag: 10913412, sign: true });
    data.append(FP8x23 { mag: 10575819, sign: false });
    data.append(FP8x23 { mag: 14648582, sign: false });
    data.append(FP8x23 { mag: 1155626, sign: false });
    data.append(FP8x23 { mag: 10504639, sign: false });
    data.append(FP8x23 { mag: 20023544, sign: true });
    data.append(FP8x23 { mag: 7287742, sign: false });
    data.append(FP8x23 { mag: 13170037, sign: false });
    data.append(FP8x23 { mag: 14179070, sign: false });
    data.append(FP8x23 { mag: 5821802, sign: false });
    data.append(FP8x23 { mag: 4012642, sign: false });
    data.append(FP8x23 { mag: 8750452, sign: false });
    data.append(FP8x23 { mag: 11991543, sign: false });
    data.append(FP8x23 { mag: 8412352, sign: false });
    data.append(FP8x23 { mag: 20903656, sign: false });
    data.append(FP8x23 { mag: 16068864, sign: true });
    data.append(FP8x23 { mag: 12406173, sign: false });
    data.append(FP8x23 { mag: 12847563, sign: false });
    data.append(FP8x23 { mag: 10204216, sign: false });
    data.append(FP8x23 { mag: 8083285, sign: false });
    data.append(FP8x23 { mag: 12385102, sign: true });
    data.append(FP8x23 { mag: 3065106, sign: true });
    data.append(FP8x23 { mag: 11903450, sign: false });
    data.append(FP8x23 { mag: 771882, sign: true });
    data.append(FP8x23 { mag: 13004755, sign: false });
    data.append(FP8x23 { mag: 10846875, sign: true });
    data.append(FP8x23 { mag: 7766379, sign: false });
    data.append(FP8x23 { mag: 11346216, sign: false });
    data.append(FP8x23 { mag: 5571666, sign: false });
    data.append(FP8x23 { mag: 1781663, sign: false });
    data.append(FP8x23 { mag: 1482105, sign: false });
    data.append(FP8x23 { mag: 7581305, sign: false });
    data.append(FP8x23 { mag: 11704950, sign: false });
    data.append(FP8x23 { mag: 4209335, sign: true });
    data.append(FP8x23 { mag: 8664081, sign: false });
    data.append(FP8x23 { mag: 10616503, sign: true });
    data.append(FP8x23 { mag: 17022648, sign: false });
    data.append(FP8x23 { mag: 12829325, sign: false });
    data.append(FP8x23 { mag: 6763571, sign: false });
    data.append(FP8x23 { mag: 6646343, sign: false });
    data.append(FP8x23 { mag: 2934484, sign: false });
    data.append(FP8x23 { mag: 15788190, sign: false });
    data.append(FP8x23 { mag: 12207490, sign: false });
    data.append(FP8x23 { mag: 10437236, sign: false });
    data.append(FP8x23 { mag: 4144833, sign: false });
    data.append(FP8x23 { mag: 4175960, sign: false });
    data.append(FP8x23 { mag: 14053320, sign: false });
    data.append(FP8x23 { mag: 12524378, sign: false });
    data.append(FP8x23 { mag: 20845660, sign: false });
    data.append(FP8x23 { mag: 9557670, sign: false });
    data.append(FP8x23 { mag: 2554248, sign: false });
    data.append(FP8x23 { mag: 8887601, sign: false });
    data.append(FP8x23 { mag: 12523447, sign: false });
    data.append(FP8x23 { mag: 20309456, sign: false });
    data.append(FP8x23 { mag: 8370136, sign: false });
    data.append(FP8x23 { mag: 12990704, sign: true });
    data.append(FP8x23 { mag: 138738, sign: true });
    data.append(FP8x23 { mag: 13568132, sign: false });
    data.append(FP8x23 { mag: 1148653, sign: true });
    data.append(FP8x23 { mag: 3110274, sign: false });
    data.append(FP8x23 { mag: 14795777, sign: true });
    data.append(FP8x23 { mag: 12267317, sign: false });
    data.append(FP8x23 { mag: 13820206, sign: false });
    data.append(FP8x23 { mag: 3820888, sign: true });
    data.append(FP8x23 { mag: 1683436, sign: false });
    data.append(FP8x23 { mag: 5287384, sign: true });
    data.append(FP8x23 { mag: 14839339, sign: false });
    data.append(FP8x23 { mag: 12675249, sign: false });
    TensorTrait::new(shape.span(), data.span())
}
