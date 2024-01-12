use core::array::{ArrayTrait, SpanTrait};
use orion::operators::tensor::{TensorTrait, Tensor};
use orion::operators::tensor::FP8x23Tensor;
use orion::numbers::{FixedTrait, FP8x23};

fn input_2() -> Tensor<FP8x23> {
    let mut shape = ArrayTrait::<usize>::new();
    shape.append(3);
    shape.append(4);
    shape.append(5);

    let mut data = ArrayTrait::new();
    data.append(FP8x23 { mag: 9802310, sign: true });
    data.append(FP8x23 { mag: 18025368, sign: false });
    data.append(FP8x23 { mag: 17682696, sign: true });
    data.append(FP8x23 { mag: 7029352, sign: true });
    data.append(FP8x23 { mag: 2764347, sign: true });
    data.append(FP8x23 { mag: 7626198, sign: true });
    data.append(FP8x23 { mag: 7957030, sign: false });
    data.append(FP8x23 { mag: 7354525, sign: false });
    data.append(FP8x23 { mag: 2783866, sign: false });
    data.append(FP8x23 { mag: 3333849, sign: true });
    data.append(FP8x23 { mag: 906374, sign: true });
    data.append(FP8x23 { mag: 6164127, sign: true });
    data.append(FP8x23 { mag: 4297991, sign: true });
    data.append(FP8x23 { mag: 5427655, sign: false });
    data.append(FP8x23 { mag: 18113416, sign: true });
    data.append(FP8x23 { mag: 2255928, sign: false });
    data.append(FP8x23 { mag: 1389584, sign: false });
    data.append(FP8x23 { mag: 4815558, sign: false });
    data.append(FP8x23 { mag: 2817187, sign: true });
    data.append(FP8x23 { mag: 440217, sign: false });
    data.append(FP8x23 { mag: 190737, sign: false });
    data.append(FP8x23 { mag: 8139391, sign: false });
    data.append(FP8x23 { mag: 11498979, sign: true });
    data.append(FP8x23 { mag: 4351939, sign: true });
    data.append(FP8x23 { mag: 5194729, sign: false });
    data.append(FP8x23 { mag: 1153310, sign: true });
    data.append(FP8x23 { mag: 2229956, sign: true });
    data.append(FP8x23 { mag: 4621022, sign: true });
    data.append(FP8x23 { mag: 1791765, sign: false });
    data.append(FP8x23 { mag: 6755727, sign: false });
    data.append(FP8x23 { mag: 3423500, sign: true });
    data.append(FP8x23 { mag: 4643245, sign: true });
    data.append(FP8x23 { mag: 343398, sign: true });
    data.append(FP8x23 { mag: 18973418, sign: true });
    data.append(FP8x23 { mag: 22705418, sign: false });
    data.append(FP8x23 { mag: 4003045, sign: false });
    data.append(FP8x23 { mag: 14684607, sign: true });
    data.append(FP8x23 { mag: 9470858, sign: false });
    data.append(FP8x23 { mag: 4521178, sign: true });
    data.append(FP8x23 { mag: 8692518, sign: true });
    data.append(FP8x23 { mag: 5888156, sign: false });
    data.append(FP8x23 { mag: 7325508, sign: true });
    data.append(FP8x23 { mag: 10220334, sign: true });
    data.append(FP8x23 { mag: 408916, sign: true });
    data.append(FP8x23 { mag: 2895708, sign: true });
    data.append(FP8x23 { mag: 8610215, sign: false });
    data.append(FP8x23 { mag: 11150253, sign: true });
    data.append(FP8x23 { mag: 5360206, sign: false });
    data.append(FP8x23 { mag: 674939, sign: false });
    data.append(FP8x23 { mag: 11169360, sign: true });
    data.append(FP8x23 { mag: 4025671, sign: false });
    data.append(FP8x23 { mag: 9509782, sign: false });
    data.append(FP8x23 { mag: 5718525, sign: true });
    data.append(FP8x23 { mag: 8584055, sign: false });
    data.append(FP8x23 { mag: 5100969, sign: true });
    data.append(FP8x23 { mag: 13275665, sign: true });
    data.append(FP8x23 { mag: 14069922, sign: true });
    data.append(FP8x23 { mag: 9485429, sign: true });
    data.append(FP8x23 { mag: 3613096, sign: false });
    data.append(FP8x23 { mag: 11158159, sign: true });
    TensorTrait::new(shape.span(), data.span())
}
