# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libim_process_/include/libim_process_.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const liblibim_process__ = "libim_process_") : (const liblibim_process__ = "liblibim_process_")  # Name of shared lib.


function imProcessUnaryPointOp(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, func::imUnaryPointOpFunc, params::Ptr{Cfloat}, userdata::Ptr{Void}, op_name::Ptr{Uint8})
  ccall( (:imProcessUnaryPointOp, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, imUnaryPointOpFunc, Ptr{Cfloat}, Ptr{Void}, Ptr{Uint8}), src_image, dst_image, func, params, userdata, op_name)
end
function imProcessUnaryPointColorOp(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, func::imUnaryPointColorOpFunc, params::Ptr{Cfloat}, userdata::Ptr{Void}, op_name::Ptr{Uint8})
  ccall( (:imProcessUnaryPointColorOp, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, imUnaryPointColorOpFunc, Ptr{Cfloat}, Ptr{Void}, Ptr{Uint8}), src_image, dst_image, func, params, userdata, op_name)
end
function imProcessMultiPointOp(src_image::Ptr{Ptr{imImage}}, src_count::Cint, dst_image::Ptr{imImage}, func::imMultiPointOpFunc, params::Ptr{Cfloat}, userdata::Ptr{Void}, op_name::Ptr{Uint8})
  ccall( (:imProcessMultiPointOp, libim_process_), Cint, (Ptr{Ptr{imImage}}, Cint, Ptr{imImage}, imMultiPointOpFunc, Ptr{Cfloat}, Ptr{Void}, Ptr{Uint8}), src_image, src_count, dst_image, func, params, userdata, op_name)
end
function imProcessMultiPointColorOp(src_image::Ptr{Ptr{imImage}}, src_count::Cint, dst_image::Ptr{imImage}, func::imMultiPointColorOpFunc, params::Ptr{Cfloat}, userdata::Ptr{Void}, op_name::Ptr{Uint8})
  ccall( (:imProcessMultiPointColorOp, libim_process_), Cint, (Ptr{Ptr{imImage}}, Cint, Ptr{imImage}, imMultiPointColorOpFunc, Ptr{Cfloat}, Ptr{Void}, Ptr{Uint8}), src_image, src_count, dst_image, func, params, userdata, op_name)
end
function imProcessUnArithmeticOp(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, op::Cint)
  ccall( (:imProcessUnArithmeticOp, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, op)
end
function imProcessArithmeticOp(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage}, op::Cint)
  ccall( (:imProcessArithmeticOp, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint), src_image1, src_image2, dst_image, op)
end
function imProcessArithmeticConstOp(src_image::Ptr{imImage}, src_const::Cfloat, dst_image::Ptr{imImage}, op::Cint)
  ccall( (:imProcessArithmeticConstOp, libim_process_), Void, (Ptr{imImage}, Cfloat, Ptr{imImage}, Cint), src_image, src_const, dst_image, op)
end
function imProcessBlendConst(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage}, alpha::Cfloat)
  ccall( (:imProcessBlendConst, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cfloat), src_image1, src_image2, dst_image, alpha)
end
function imProcessBlend(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, alpha_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessBlend, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image1, src_image2, alpha_image, dst_image)
end
function imProcessCompose(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessCompose, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image1, src_image2, dst_image)
end
function imProcessSplitComplex(src_image::Ptr{imImage}, dst_image1::Ptr{imImage}, dst_image2::Ptr{imImage}, polar::Cint)
  ccall( (:imProcessSplitComplex, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image1, dst_image2, polar)
end
function imProcessMergeComplex(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage}, polar::Cint)
  ccall( (:imProcessMergeComplex, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint), src_image1, src_image2, dst_image, polar)
end
function imProcessMultipleMean(src_image_list::Ptr{Ptr{imImage}}, src_image_count::Cint, dst_image::Ptr{imImage})
  ccall( (:imProcessMultipleMean, libim_process_), Void, (Ptr{Ptr{imImage}}, Cint, Ptr{imImage}), src_image_list, src_image_count, dst_image)
end
function imProcessMultipleStdDev(src_image_list::Ptr{Ptr{imImage}}, src_image_count::Cint, mean_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessMultipleStdDev, libim_process_), Void, (Ptr{Ptr{imImage}}, Cint, Ptr{imImage}, Ptr{imImage}), src_image_list, src_image_count, mean_image, dst_image)
end
function imProcessAutoCovariance(src_image::Ptr{imImage}, mean_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessAutoCovariance, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, mean_image, dst_image)
end
function imProcessMultiplyConj(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessMultiplyConj, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image1, src_image2, dst_image)
end
function imProcessQuantizeRGBUniform(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, do_dither::Cint)
  ccall( (:imProcessQuantizeRGBUniform, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, do_dither)
end
function imProcessQuantizeGrayUniform(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, grays::Cint)
  ccall( (:imProcessQuantizeGrayUniform, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, grays)
end
function imProcessExpandHistogram(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, percent::Cfloat)
  ccall( (:imProcessExpandHistogram, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cfloat), src_image, dst_image, percent)
end
function imProcessEqualizeHistogram(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessEqualizeHistogram, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessSplitYChroma(src_image::Ptr{imImage}, y_image::Ptr{imImage}, chroma_image::Ptr{imImage})
  ccall( (:imProcessSplitYChroma, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, y_image, chroma_image)
end
function imProcessSplitHSI(src_image::Ptr{imImage}, h_image::Ptr{imImage}, s_image::Ptr{imImage}, i_image::Ptr{imImage})
  ccall( (:imProcessSplitHSI, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, h_image, s_image, i_image)
end
function imProcessMergeHSI(h_image::Ptr{imImage}, s_image::Ptr{imImage}, i_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessMergeHSI, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), h_image, s_image, i_image, dst_image)
end
function imProcessSplitComponents(src_image::Ptr{imImage}, dst_image_list::Ptr{Ptr{imImage}})
  ccall( (:imProcessSplitComponents, libim_process_), Void, (Ptr{imImage}, Ptr{Ptr{imImage}}), src_image, dst_image_list)
end
function imProcessMergeComponents(src_image_list::Ptr{Ptr{imImage}}, dst_image::Ptr{imImage})
  ccall( (:imProcessMergeComponents, libim_process_), Void, (Ptr{Ptr{imImage}}, Ptr{imImage}), src_image_list, dst_image)
end
function imProcessNormalizeComponents(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessNormalizeComponents, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessReplaceColor(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, src_color::Ptr{Cfloat}, dst_color::Ptr{Cfloat})
  ccall( (:imProcessReplaceColor, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{Cfloat}, Ptr{Cfloat}), src_image, dst_image, src_color, dst_color)
end
function imProcessSetAlphaColor(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, src_color::Ptr{Cfloat}, dst_alpha::Cfloat)
  ccall( (:imProcessSetAlphaColor, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{Cfloat}, Cfloat), src_image, dst_image, src_color, dst_alpha)
end
function imProcessBitwiseOp(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage}, op::Cint)
  ccall( (:imProcessBitwiseOp, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint), src_image1, src_image2, dst_image, op)
end
function imProcessBitwiseNot(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessBitwiseNot, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessBitMask(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, mask::Cuchar, op::Cint)
  ccall( (:imProcessBitMask, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cuchar, Cint), src_image, dst_image, mask, op)
end
function imProcessBitPlane(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, plane::Cint, do_reset::Cint)
  ccall( (:imProcessBitPlane, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, plane, do_reset)
end
function imProcessRenderOp(image::Ptr{imImage}, render_func::imRenderFunc, render_name::Ptr{Uint8}, params::Ptr{Cfloat}, plus::Cint)
  ccall( (:imProcessRenderOp, libim_process_), Cint, (Ptr{imImage}, imRenderFunc, Ptr{Uint8}, Ptr{Cfloat}, Cint), image, render_func, render_name, params, plus)
end
function imProcessRenderCondOp(image::Ptr{imImage}, render_cond_func::imRenderCondFunc, render_name::Ptr{Uint8}, params::Ptr{Cfloat})
  ccall( (:imProcessRenderCondOp, libim_process_), Cint, (Ptr{imImage}, imRenderCondFunc, Ptr{Uint8}, Ptr{Cfloat}), image, render_cond_func, render_name, params)
end
function imProcessRenderAddSpeckleNoise(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, percent::Cfloat)
  ccall( (:imProcessRenderAddSpeckleNoise, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat), src_image, dst_image, percent)
end
function imProcessRenderAddGaussianNoise(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, mean::Cfloat, stddev::Cfloat)
  ccall( (:imProcessRenderAddGaussianNoise, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat), src_image, dst_image, mean, stddev)
end
function imProcessRenderAddUniformNoise(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, mean::Cfloat, stddev::Cfloat)
  ccall( (:imProcessRenderAddUniformNoise, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat), src_image, dst_image, mean, stddev)
end
function imProcessRenderRandomNoise(image::Ptr{imImage})
  ccall( (:imProcessRenderRandomNoise, libim_process_), Cint, (Ptr{imImage},), image)
end
function imProcessRenderConstant(image::Ptr{imImage}, value::Ptr{Cfloat})
  ccall( (:imProcessRenderConstant, libim_process_), Cint, (Ptr{imImage}, Ptr{Cfloat}), image, value)
end
function imProcessRenderWheel(image::Ptr{imImage}, internal_radius::Cint, external_radius::Cint)
  ccall( (:imProcessRenderWheel, libim_process_), Cint, (Ptr{imImage}, Cint, Cint), image, internal_radius, external_radius)
end
function imProcessRenderCone(image::Ptr{imImage}, radius::Cint)
  ccall( (:imProcessRenderCone, libim_process_), Cint, (Ptr{imImage}, Cint), image, radius)
end
function imProcessRenderTent(image::Ptr{imImage}, tent_width::Cint, tent_height::Cint)
  ccall( (:imProcessRenderTent, libim_process_), Cint, (Ptr{imImage}, Cint, Cint), image, tent_width, tent_height)
end
function imProcessRenderRamp(image::Ptr{imImage}, start::Cint, _end::Cint, vert_dir::Cint)
  ccall( (:imProcessRenderRamp, libim_process_), Cint, (Ptr{imImage}, Cint, Cint, Cint), image, start, _end, vert_dir)
end
function imProcessRenderBox(image::Ptr{imImage}, box_width::Cint, box_height::Cint)
  ccall( (:imProcessRenderBox, libim_process_), Cint, (Ptr{imImage}, Cint, Cint), image, box_width, box_height)
end
function imProcessRenderSinc(image::Ptr{imImage}, x_period::Cfloat, y_period::Cfloat)
  ccall( (:imProcessRenderSinc, libim_process_), Cint, (Ptr{imImage}, Cfloat, Cfloat), image, x_period, y_period)
end
function imProcessRenderGaussian(image::Ptr{imImage}, stddev::Cfloat)
  ccall( (:imProcessRenderGaussian, libim_process_), Cint, (Ptr{imImage}, Cfloat), image, stddev)
end
function imProcessRenderLapOfGaussian(image::Ptr{imImage}, stddev::Cfloat)
  ccall( (:imProcessRenderLapOfGaussian, libim_process_), Cint, (Ptr{imImage}, Cfloat), image, stddev)
end
function imProcessRenderCosine(image::Ptr{imImage}, x_period::Cfloat, y_period::Cfloat)
  ccall( (:imProcessRenderCosine, libim_process_), Cint, (Ptr{imImage}, Cfloat, Cfloat), image, x_period, y_period)
end
function imProcessRenderGrid(image::Ptr{imImage}, x_space::Cint, y_space::Cint)
  ccall( (:imProcessRenderGrid, libim_process_), Cint, (Ptr{imImage}, Cint, Cint), image, x_space, y_space)
end
function imProcessRenderChessboard(image::Ptr{imImage}, x_space::Cint, y_space::Cint)
  ccall( (:imProcessRenderChessboard, libim_process_), Cint, (Ptr{imImage}, Cint, Cint), image, x_space, y_space)
end
function imProcessToneGamut(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, op::Cint, params::Ptr{Cfloat})
  ccall( (:imProcessToneGamut, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint, Ptr{Cfloat}), src_image, dst_image, op, params)
end
function imProcessUnNormalize(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessUnNormalize, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessDirectConv(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessDirectConv, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessNegative(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessNegative, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessCalcAutoGamma(image::Ptr{imImage})
  ccall( (:imProcessCalcAutoGamma, libim_process_), Cfloat, (Ptr{imImage},), image)
end
function imProcessShiftHSI(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, h_shift::Cfloat, s_shift::Cfloat, i_shift::Cfloat)
  ccall( (:imProcessShiftHSI, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat, Cfloat), src_image, dst_image, h_shift, s_shift, i_shift)
end
function imProcessThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, level::Cfloat, value::Cint)
  ccall( (:imProcessThreshold, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cint), src_image, dst_image, level, value)
end
function imProcessThresholdByDiff(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessThresholdByDiff, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image1, src_image2, dst_image)
end
function imProcessHysteresisThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, low_thres::Cint, high_thres::Cint)
  ccall( (:imProcessHysteresisThreshold, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, low_thres, high_thres)
end
function imProcessHysteresisThresEstimate(image::Ptr{imImage}, low_level::Ptr{Cint}, high_level::Ptr{Cint})
  ccall( (:imProcessHysteresisThresEstimate, libim_process_), Void, (Ptr{imImage}, Ptr{Cint}, Ptr{Cint}), image, low_level, high_level)
end
function imProcessUniformErrThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessUniformErrThreshold, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessDifusionErrThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, level::Cint)
  ccall( (:imProcessDifusionErrThreshold, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, level)
end
function imProcessPercentThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, percent::Cfloat)
  ccall( (:imProcessPercentThreshold, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat), src_image, dst_image, percent)
end
function imProcessOtsuThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessOtsuThreshold, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessMinMaxThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessMinMaxThreshold, libim_process_), Cfloat, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessLocalMaxThresEstimate(image::Ptr{imImage}, level::Ptr{Cint})
  ccall( (:imProcessLocalMaxThresEstimate, libim_process_), Void, (Ptr{imImage}, Ptr{Cint}), image, level)
end
function imProcessSliceThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, start_level::Cfloat, end_level::Cfloat)
  ccall( (:imProcessSliceThreshold, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat), src_image, dst_image, start_level, end_level)
end
function imProcessPixelate(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, box_size::Cint)
  ccall( (:imProcessPixelate, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, box_size)
end
function imProcessPosterize(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, level::Cint)
  ccall( (:imProcessPosterize, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, level)
end
function imProcessNormDiffRatio(image1::Ptr{imImage}, image2::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessNormDiffRatio, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), image1, image2, dst_image)
end
function imProcessAbnormalHyperionCorrection(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, threshold_consecutive::Cint, threshold_percent::Cint, image_abnormal::Ptr{imImage})
  ccall( (:imProcessAbnormalHyperionCorrection, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint, Cint, Ptr{imImage}), src_image, dst_image, threshold_consecutive, threshold_percent, image_abnormal)
end
function imProcessConvertDataType(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, cpx2real::Cint, gamma::Cfloat, abssolute::Cint, cast_mode::Cint)
  ccall( (:imProcessConvertDataType, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cfloat, Cint, Cint), src_image, dst_image, cpx2real, gamma, abssolute, cast_mode)
end
function imProcessConvertColorSpace(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessConvertColorSpace, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessConvertToBitmap(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, cpx2real::Cint, gamma::Cfloat, abssolute::Cint, cast_mode::Cint)
  ccall( (:imProcessConvertToBitmap, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cfloat, Cint, Cint), src_image, dst_image, cpx2real, gamma, abssolute, cast_mode)
end
function imProcessReduce(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, order::Cint)
  ccall( (:imProcessReduce, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, order)
end
function imProcessResize(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, order::Cint)
  ccall( (:imProcessResize, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, order)
end
function imProcessReduceBy4(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessReduceBy4, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessCrop(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, xmin::Cint, ymin::Cint)
  ccall( (:imProcessCrop, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, xmin, ymin)
end
function imProcessInsert(src_image::Ptr{imImage}, region_image::Ptr{imImage}, dst_image::Ptr{imImage}, xmin::Cint, ymin::Cint)
  ccall( (:imProcessInsert, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, region_image, dst_image, xmin, ymin)
end
function imProcessAddMargins(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, xmin::Cint, ymin::Cint)
  ccall( (:imProcessAddMargins, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, xmin, ymin)
end
function imProcessCalcRotateSize(width::Cint, height::Cint, new_width::Ptr{Cint}, new_height::Ptr{Cint}, cos0::Cdouble, sin0::Cdouble)
  ccall( (:imProcessCalcRotateSize, libim_process_), Void, (Cint, Cint, Ptr{Cint}, Ptr{Cint}, Cdouble, Cdouble), width, height, new_width, new_height, cos0, sin0)
end
function imProcessRotate(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, cos0::Cdouble, sin0::Cdouble, order::Cint)
  ccall( (:imProcessRotate, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cdouble, Cdouble, Cint), src_image, dst_image, cos0, sin0, order)
end
function imProcessRotateRef(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, cos0::Cdouble, sin0::Cdouble, x::Cint, y::Cint, to_origin::Cint, order::Cint)
  ccall( (:imProcessRotateRef, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cdouble, Cdouble, Cint, Cint, Cint, Cint), src_image, dst_image, cos0, sin0, x, y, to_origin, order)
end
function imProcessRotate90(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, dir_clockwise::Cint)
  ccall( (:imProcessRotate90, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, dir_clockwise)
end
function imProcessRotate180(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessRotate180, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessMirror(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessMirror, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessFlip(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessFlip, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessRadial(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, k1::Cfloat, order::Cint)
  ccall( (:imProcessRadial, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cint), src_image, dst_image, k1, order)
end
function imProcessSwirl(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, k1::Cfloat, order::Cint)
  ccall( (:imProcessSwirl, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cint), src_image, dst_image, k1, order)
end
function imProcessInterlaceSplit(src_image::Ptr{imImage}, dst_image1::Ptr{imImage}, dst_image2::Ptr{imImage})
  ccall( (:imProcessInterlaceSplit, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, dst_image1, dst_image2)
end
function imProcessGrayMorphConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel::Ptr{imImage}, ismax::Cint)
  ccall( (:imProcessGrayMorphConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel, ismax)
end
function imProcessGrayMorphErode(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessGrayMorphErode, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessGrayMorphDilate(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessGrayMorphDilate, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessGrayMorphOpen(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessGrayMorphOpen, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessGrayMorphClose(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessGrayMorphClose, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessGrayMorphTopHat(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessGrayMorphTopHat, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessGrayMorphWell(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessGrayMorphWell, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessGrayMorphGradient(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessGrayMorphGradient, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessBinMorphConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel::Ptr{imImage}, hit_white::Cint, iter::Cint)
  ccall( (:imProcessBinMorphConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel, hit_white, iter)
end
function imProcessBinMorphErode(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint, iter::Cint)
  ccall( (:imProcessBinMorphErode, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel_size, iter)
end
function imProcessBinMorphDilate(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint, iter::Cint)
  ccall( (:imProcessBinMorphDilate, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel_size, iter)
end
function imProcessBinMorphOpen(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint, iter::Cint)
  ccall( (:imProcessBinMorphOpen, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel_size, iter)
end
function imProcessBinMorphClose(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint, iter::Cint)
  ccall( (:imProcessBinMorphClose, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel_size, iter)
end
function imProcessBinMorphOutline(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint, iter::Cint)
  ccall( (:imProcessBinMorphOutline, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel_size, iter)
end
function imProcessBinMorphThin(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessBinMorphThin, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessMedianConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessMedianConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessRangeConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessRangeConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessRankClosestConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessRankClosestConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessRankMaxConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessRankMaxConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessRankMinConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessRankMinConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessRangeContrastThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint, min_range::Cint)
  ccall( (:imProcessRangeContrastThreshold, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel_size, min_range)
end
function imProcessLocalMaxThreshold(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint, min_level::Cint)
  ccall( (:imProcessLocalMaxThreshold, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, kernel_size, min_level)
end
function imProcessConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel::Ptr{imImage})
  ccall( (:imProcessConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, dst_image, kernel)
end
function imProcessConvolveSep(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel::Ptr{imImage})
  ccall( (:imProcessConvolveSep, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, dst_image, kernel)
end
function imProcessConvolveDual(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel1::Ptr{imImage}, kernel2::Ptr{imImage})
  ccall( (:imProcessConvolveDual, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, dst_image, kernel1, kernel2)
end
function imProcessConvolveRep(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel::Ptr{imImage}, count::Cint)
  ccall( (:imProcessConvolveRep, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel, count)
end
function imProcessCompassConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel::Ptr{imImage})
  ccall( (:imProcessCompassConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, dst_image, kernel)
end
function imProcessRotateKernel(kernel::Ptr{imImage})
  ccall( (:imProcessRotateKernel, libim_process_), Void, (Ptr{imImage},), kernel)
end
function imProcessDiffOfGaussianConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, stddev1::Cfloat, stddev2::Cfloat)
  ccall( (:imProcessDiffOfGaussianConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat), src_image, dst_image, stddev1, stddev2)
end
function imProcessLapOfGaussianConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, stddev::Cfloat)
  ccall( (:imProcessLapOfGaussianConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat), src_image, dst_image, stddev)
end
function imProcessMeanConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessMeanConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessGaussianConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, stddev::Cfloat)
  ccall( (:imProcessGaussianConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat), src_image, dst_image, stddev)
end
function imProcessBarlettConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, kernel_size::Cint)
  ccall( (:imProcessBarlettConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, kernel_size)
end
function imProcessSobelConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessSobelConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessPrewittConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessPrewittConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessSplineEdgeConvolve(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessSplineEdgeConvolve, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessZeroCrossing(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessZeroCrossing, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessCanny(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, stddev::Cfloat)
  ccall( (:imProcessCanny, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cfloat), src_image, dst_image, stddev)
end
function imGaussianStdDev2KernelSize(stddev::Cfloat)
  ccall( (:imGaussianStdDev2KernelSize, libim_process_), Cint, (Cfloat,), stddev)
end
function imGaussianKernelSize2StdDev(kernel_size::Cint)
  ccall( (:imGaussianKernelSize2StdDev, libim_process_), Cfloat, (Cint,), kernel_size)
end
function imProcessUnsharp(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, stddev::Cfloat, amount::Cfloat, threshold::Cfloat)
  ccall( (:imProcessUnsharp, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat, Cfloat), src_image, dst_image, stddev, amount, threshold)
end
function imProcessSharp(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, amount::Cfloat, threshold::Cfloat)
  ccall( (:imProcessSharp, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat), src_image, dst_image, amount, threshold)
end
function imProcessSharpKernel(src_image::Ptr{imImage}, kernel::Ptr{imImage}, dst_image::Ptr{imImage}, amount::Cfloat, threshold::Cfloat)
  ccall( (:imProcessSharpKernel, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Cfloat, Cfloat), src_image, kernel, dst_image, amount, threshold)
end
function imProcessHoughLines(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessHoughLines, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessHoughLinesDraw(src_image::Ptr{imImage}, hough::Ptr{imImage}, hough_points::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessHoughLinesDraw, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image, hough, hough_points, dst_image)
end
function imProcessCrossCorrelation(src_image1::Ptr{imImage}, src_image2::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessCrossCorrelation, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Ptr{imImage}), src_image1, src_image2, dst_image)
end
function imProcessAutoCorrelation(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessAutoCorrelation, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessDistanceTransform(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessDistanceTransform, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessRegionalMaximum(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessRegionalMaximum, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessFFT(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessFFT, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessIFFT(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessIFFT, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessFFTraw(image::Ptr{imImage}, inverse::Cint, center::Cint, normalize::Cint)
  ccall( (:imProcessFFTraw, libim_process_), Void, (Ptr{imImage}, Cint, Cint, Cint), image, inverse, center, normalize)
end
function imProcessSwapQuadrants(image::Ptr{imImage}, center2origin::Cint)
  ccall( (:imProcessSwapQuadrants, libim_process_), Void, (Ptr{imImage}, Cint), image, center2origin)
end
function imProcessOpenMPSetMinCount(min_count::Cint)
  ccall( (:imProcessOpenMPSetMinCount, libim_process_), Cint, (Cint,), min_count)
end
function imProcessOpenMPSetNumThreads(count::Cint)
  ccall( (:imProcessOpenMPSetNumThreads, libim_process_), Cint, (Cint,), count)
end
function imCalcRMSError(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imCalcRMSError, libim_process_), Cfloat, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imCalcSNR(src_image::Ptr{imImage}, noise_image::Ptr{imImage})
  ccall( (:imCalcSNR, libim_process_), Cfloat, (Ptr{imImage}, Ptr{imImage}), src_image, noise_image)
end
function imCalcCountColors(image::Ptr{imImage})
  ccall( (:imCalcCountColors, libim_process_), Culong, (Ptr{imImage},), image)
end
function imCalcGrayHistogram(image::Ptr{imImage}, histo::Ptr{Culong}, cumulative::Cint)
  ccall( (:imCalcGrayHistogram, libim_process_), Void, (Ptr{imImage}, Ptr{Culong}, Cint), image, histo, cumulative)
end
function imCalcHistogram(image::Ptr{imImage}, histo::Ptr{Culong}, plane::Cint, cumulative::Cint)
  ccall( (:imCalcHistogram, libim_process_), Void, (Ptr{imImage}, Ptr{Culong}, Cint, Cint), image, histo, plane, cumulative)
end
function imCalcByteHistogram(data::Ptr{Cuchar}, count::Cint, histo::Ptr{Culong}, cumulative::Cint)
  ccall( (:imCalcByteHistogram, libim_process_), Void, (Ptr{Cuchar}, Cint, Ptr{Culong}, Cint), data, count, histo, cumulative)
end
function imCalcUShortHistogram(data::Ptr{Uint16}, count::Cint, histo::Ptr{Culong}, cumulative::Cint)
  ccall( (:imCalcUShortHistogram, libim_process_), Void, (Ptr{Uint16}, Cint, Ptr{Culong}, Cint), data, count, histo, cumulative)
end
function imCalcShortHistogram(data::Ptr{Int16}, count::Cint, histo::Ptr{Culong}, cumulative::Cint)
  ccall( (:imCalcShortHistogram, libim_process_), Void, (Ptr{Int16}, Cint, Ptr{Culong}, Cint), data, count, histo, cumulative)
end
function imHistogramNew(data_type::Cint, hcount::Ptr{Cint})
  ccall( (:imHistogramNew, libim_process_), Ptr{Culong}, (Cint, Ptr{Cint}), data_type, hcount)
end
function imHistogramRelease(histo::Ptr{Culong})
  ccall( (:imHistogramRelease, libim_process_), Void, (Ptr{Culong},), histo)
end
function imHistogramShift(data_type::Cint)
  ccall( (:imHistogramShift, libim_process_), Cint, (Cint,), data_type)
end
function imHistogramCount(data_type::Cint)
  ccall( (:imHistogramCount, libim_process_), Cint, (Cint,), data_type)
end
function imCalcImageStatistics(image::Ptr{imImage}, stats::Ptr{imStats})
  ccall( (:imCalcImageStatistics, libim_process_), Void, (Ptr{imImage}, Ptr{imStats}), image, stats)
end
function imCalcHistogramStatistics(image::Ptr{imImage}, stats::Ptr{imStats})
  ccall( (:imCalcHistogramStatistics, libim_process_), Void, (Ptr{imImage}, Ptr{imStats}), image, stats)
end
function imCalcHistoImageStatistics(image::Ptr{imImage}, median::Ptr{Cint}, mode::Ptr{Cint})
  ccall( (:imCalcHistoImageStatistics, libim_process_), Void, (Ptr{imImage}, Ptr{Cint}, Ptr{Cint}), image, median, mode)
end
function imCalcPercentMinMax(image::Ptr{imImage}, percent::Cfloat, ignore_zero::Cint, min::Ptr{Cint}, max::Ptr{Cint})
  ccall( (:imCalcPercentMinMax, libim_process_), Void, (Ptr{imImage}, Cfloat, Cint, Ptr{Cint}, Ptr{Cint}), image, percent, ignore_zero, min, max)
end
function imAnalyzeFindRegions(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, connect::Cint, touch_border::Cint)
  ccall( (:imAnalyzeFindRegions, libim_process_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cint), src_image, dst_image, connect, touch_border)
end
function imAnalyzeMeasureArea(image::Ptr{imImage}, area::Ptr{Cint}, region_count::Cint)
  ccall( (:imAnalyzeMeasureArea, libim_process_), Void, (Ptr{imImage}, Ptr{Cint}, Cint), image, area, region_count)
end
function imAnalyzeMeasurePerimArea(image::Ptr{imImage}, perimarea::Ptr{Cfloat})
  ccall( (:imAnalyzeMeasurePerimArea, libim_process_), Void, (Ptr{imImage}, Ptr{Cfloat}), image, perimarea)
end
function imAnalyzeMeasureCentroid(image::Ptr{imImage}, area::Ptr{Cint}, region_count::Cint, cx::Ptr{Cfloat}, cy::Ptr{Cfloat})
  ccall( (:imAnalyzeMeasureCentroid, libim_process_), Void, (Ptr{imImage}, Ptr{Cint}, Cint, Ptr{Cfloat}, Ptr{Cfloat}), image, area, region_count, cx, cy)
end
function imAnalyzeMeasurePrincipalAxis(image::Ptr{imImage}, area::Ptr{Cint}, cx::Ptr{Cfloat}, cy::Ptr{Cfloat}, region_count::Cint, major_slope::Ptr{Cfloat}, major_length::Ptr{Cfloat}, minor_slope::Ptr{Cfloat}, minor_length::Ptr{Cfloat})
  ccall( (:imAnalyzeMeasurePrincipalAxis, libim_process_), Void, (Ptr{imImage}, Ptr{Cint}, Ptr{Cfloat}, Ptr{Cfloat}, Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), image, area, cx, cy, region_count, major_slope, major_length, minor_slope, minor_length)
end
function imAnalyzeMeasureHoles(image::Ptr{imImage}, connect::Cint, holes_count::Ptr{Cint}, area::Ptr{Cint}, perim::Ptr{Cfloat})
  ccall( (:imAnalyzeMeasureHoles, libim_process_), Void, (Ptr{imImage}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cfloat}), image, connect, holes_count, area, perim)
end
function imAnalyzeMeasurePerimeter(image::Ptr{imImage}, perim::Ptr{Cfloat}, region_count::Cint)
  ccall( (:imAnalyzeMeasurePerimeter, libim_process_), Void, (Ptr{imImage}, Ptr{Cfloat}, Cint), image, perim, region_count)
end
function imProcessPerimeterLine(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imProcessPerimeterLine, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imProcessRemoveByArea(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, connect::Cint, start_size::Cint, end_size::Cint, inside::Cint)
  ccall( (:imProcessRemoveByArea, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint, Cint, Cint, Cint), src_image, dst_image, connect, start_size, end_size, inside)
end
function imProcessFillHoles(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, connect::Cint)
  ccall( (:imProcessFillHoles, libim_process_), Void, (Ptr{imImage}, Ptr{imImage}, Cint), src_image, dst_image, connect)
end

