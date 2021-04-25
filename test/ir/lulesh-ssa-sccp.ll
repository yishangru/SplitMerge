; ModuleID = '../llvm/lib/Transforms/SplitMerge/test/ir/lulesh-ssa.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%"class.std::allocator.2" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%class.Domain = type { %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", i32, i32, i32*, i32*, i32**, %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", %"class.std::vector.0", double*, double*, double*, double*, double*, double*, double*, double*, double*, %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", %"class.std::vector", double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { i32*, i32*, i32* }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" }
%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl" = type { double*, double*, double* }
%"class.std::move_iterator.5" = type { i32* }
%"class.std::move_iterator" = type { double* }
%struct.cmdLineOpts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }
%"struct.std::_Setprecision" = type { i32 }

$_ZNSt6vectorIdSaIdEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZN6Domain4costEv = comdat any

$_ZN6Domain7numElemEv = comdat any

$_ZN6Domain22AllocateElemPersistentEi = comdat any

$_ZN6Domain7numNodeEv = comdat any

$_ZN6Domain22AllocateNodePersistentEi = comdat any

$_ZN6Domain1eEi = comdat any

$_ZN6Domain1pEi = comdat any

$_ZN6Domain1qEi = comdat any

$_ZN6Domain2ssEi = comdat any

$_ZN6Domain1vEi = comdat any

$_ZN6Domain2xdEi = comdat any

$_ZN6Domain2ydEi = comdat any

$_ZN6Domain2zdEi = comdat any

$_ZN6Domain3xddEi = comdat any

$_ZN6Domain3yddEi = comdat any

$_ZN6Domain3zddEi = comdat any

$_ZN6Domain9nodalMassEi = comdat any

$_ZN6Domain7dtfixedEv = comdat any

$_ZN6Domain8stoptimeEv = comdat any

$_ZN6Domain15deltatimemultlbEv = comdat any

$_ZN6Domain15deltatimemultubEv = comdat any

$_ZN6Domain9dtcourantEv = comdat any

$_ZN6Domain7dthydroEv = comdat any

$_ZN6Domain5dtmaxEv = comdat any

$_ZN6Domain4timeEv = comdat any

$_ZN6Domain5cycleEv = comdat any

$_ZN6Domain8nodelistEi = comdat any

$_ZN6Domain1xEi = comdat any

$_ZN6Domain1yEi = comdat any

$_ZN6Domain1zEi = comdat any

$_ZN6Domain4voloEi = comdat any

$_ZN6Domain8elemMassEi = comdat any

$_ZN6Domain9deltatimeEv = comdat any

$_ZNSt6vectorIdSaIdEED2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiED2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZSt8_DestroyIPddEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIdSaIdEED2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm = comdat any

$_ZN9__gnu_cxx13new_allocatorIdED2Ev = comdat any

$_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm = comdat any

$_ZSt8_DestroyIPdEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_ = comdat any

$_ZNSt6vectorIdSaIdEEixEm = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZN6Domain6elemBCEi = comdat any

$_ZN6Domain5sizeXEv = comdat any

$_ZN6Domain5sizeYEv = comdat any

$_ZN6Domain5sizeZEv = comdat any

$_ZN6Domain6lzetamEi = comdat any

$_ZN6Domain6lzetapEi = comdat any

$_ZN6Domain5letamEi = comdat any

$_ZN6Domain5letapEi = comdat any

$_ZN6Domain4lximEi = comdat any

$_ZN6Domain4lxipEi = comdat any

$_ZN6Domain6numRegEv = comdat any

$_ZN6Domain10regNumListEi = comdat any

$_ZN6Domain11regElemSizeEi = comdat any

$_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ = comdat any

$_ZN6Domain11regElemlistEii = comdat any

$_ZNSt6vectorIiSaIiEE6resizeEm = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_ = comdat any

$_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNKSt13move_iteratorIPiE4baseEv = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZNSt13move_iteratorIPiEC2ES0_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt25__uninitialized_default_nIPimET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZNSt6vectorIdSaIdEE6resizeEm = comdat any

$_ZNKSt6vectorIdSaIdEE4sizeEv = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd = comdat any

$_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm = comdat any

$_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_ = comdat any

$_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_ = comdat any

$_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E = comdat any

$_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_ = comdat any

$_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_ = comdat any

$_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E = comdat any

$_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPdET_S1_ = comdat any

$_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_ = comdat any

$_ZNKSt13move_iteratorIPdE4baseEv = comdat any

$_ZSt12__miter_baseIPdET_S1_ = comdat any

$_ZNSt13move_iteratorIPdEC2ES0_ = comdat any

$_ZNSt16allocator_traitsISaIdEE8allocateERS0_m = comdat any

$_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv = comdat any

$_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv = comdat any

$_ZNKSt6vectorIdSaIdEE8max_sizeEv = comdat any

$_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_ = comdat any

$_ZSt25__uninitialized_default_nIPdmET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_ = comdat any

$_ZSt6fill_nIPdmdET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEEC2Ev = comdat any

$_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev = comdat any

$_ZNSaIdEC2Ev = comdat any

$_ZN9__gnu_cxx13new_allocatorIdEC2Ev = comdat any

$_ZN6Domain4vnewEi = comdat any

$_ZN6Domain4delvEi = comdat any

$_ZN6Domain6arealgEi = comdat any

$_ZN6Domain3dxxEi = comdat any

$_ZN6Domain3dyyEi = comdat any

$_ZN6Domain3dzzEi = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_Z4SQRTd = comdat any

$_ZSt10scientificRSt8ios_base = comdat any

$_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags = comdat any

$_ZStcoSt13_Ios_Fmtflags = comdat any

$_ZStaNRSt13_Ios_FmtflagsS_ = comdat any

$_ZStanSt13_Ios_FmtflagsS_ = comdat any

$_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_ = comdat any

$_ZStoRRSt13_Ios_FmtflagsS_ = comdat any

$_ZStorSt13_Ios_FmtflagsS_ = comdat any

$_ZN6Domain11regElemlistEi = comdat any

$_ZNK6Domain3qqcEv = comdat any

$_ZNK6Domain7dvovmaxEv = comdat any

$_ZN6Domain4vdovEi = comdat any

$_Z4FABSd = comdat any

$_ZNK6Domain5v_cutEv = comdat any

$_ZNK6Domain7eosvminEv = comdat any

$_ZNK6Domain7eosvmaxEv = comdat any

$_Z8AllocateIdEPT_m = comdat any

$_Z7ReleaseIdEvPPT_ = comdat any

$_ZNK6Domain5e_cutEv = comdat any

$_ZNK6Domain5p_cutEv = comdat any

$_ZNK6Domain5ss4o3Ev = comdat any

$_ZNK6Domain5q_cutEv = comdat any

$_ZNK6Domain4pminEv = comdat any

$_ZNK6Domain4eminEv = comdat any

$_ZNK6Domain7refdensEv = comdat any

$_ZN6Domain2qqEi = comdat any

$_ZN6Domain2qlEi = comdat any

$_ZN6Domain17AllocateGradientsEii = comdat any

$_ZN6Domain19DeallocateGradientsEv = comdat any

$_ZNK6Domain5qstopEv = comdat any

$_ZNK6Domain18monoq_limiter_multEv = comdat any

$_ZNK6Domain15monoq_max_slopeEv = comdat any

$_ZNK6Domain9qlc_monoqEv = comdat any

$_ZNK6Domain9qqc_monoqEv = comdat any

$_ZN6Domain7delv_xiEi = comdat any

$_ZN6Domain8delv_etaEi = comdat any

$_ZN6Domain9delv_zetaEi = comdat any

$_ZN6Domain7delx_xiEi = comdat any

$_ZN6Domain8delx_etaEi = comdat any

$_ZN6Domain9delx_zetaEi = comdat any

$_ZN6Domain15AllocateStrainsEi = comdat any

$_ZN6Domain17DeallocateStrainsEv = comdat any

$_ZNK6Domain5u_cutEv = comdat any

$_ZN6Domain10symmXemptyEv = comdat any

$_ZN6Domain5symmXEi = comdat any

$_ZN6Domain10symmYemptyEv = comdat any

$_ZN6Domain5symmYEi = comdat any

$_ZN6Domain10symmZemptyEv = comdat any

$_ZN6Domain5symmZEi = comdat any

$_ZNKSt6vectorIiSaIiEE5emptyEv = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

$_ZN6Domain2fxEi = comdat any

$_ZN6Domain2fyEi = comdat any

$_ZN6Domain2fzEi = comdat any

$_ZNK6Domain6hgcoefEv = comdat any

$_Z4CBRTd = comdat any

$_ZN6Domain13nodeElemCountEi = comdat any

$_ZN6Domain18nodeElemCornerListEi = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_Z8StrToIntIiEiPKcPT_ = comdat any

$_ZSt12setprecisioni = comdat any

$_ZSt4setwi = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNSt8ios_base9precisionEl = comdat any

@.str.3 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [67 x i8] c"AllocateNodeElemIndexes(): nodeElemCornerList entry out of range!\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Num processors must be a cube of an integer (1, 8, 27, ...)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"error -- must have as many domains as procs\0A\00", align 1
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_lulesh.cc, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_lulesh_util.cc, i8* null }]
@_ZStL8__ioinit = internal global %"class.std::allocator.2" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"Running problem size \00", align 1
@.str.1.5 = private unnamed_addr constant [32 x i8] c"^3 per domain until completion\0A\00", align 1
@.str.2.6 = private unnamed_addr constant [17 x i8] c"Num processors: \00", align 1
@.str.3.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4.8 = private unnamed_addr constant [27 x i8] c"Total number of elements: \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" \0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"To run other sizes, use -s <integer>.\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"To run a fixed number of iterations, use -i <integer>.\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"To run a more or less balanced region set, use -b <integer>.\0A\00", align 1
@.str.9 = private unnamed_addr constant [60 x i8] c"To change the relative costs of regions, use -c <integer>.\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"To print out progress, use -p\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"To write an output file for VisIt, use -v\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"See help (-h) for more options\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"cycle = \00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"time = \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"dt=\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Error in switch at %s line %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"lulesh.cc\00", align 1
@_ZStL8__ioinit.11 = internal global %"class.std::allocator.2" zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.1.20 = private unnamed_addr constant [31 x i8] c"Missing integer argument to -i\00", align 1
@.str.2.21 = private unnamed_addr constant [64 x i8] c"Parse Error on option -i integer value required after argument\0A\00", align 1
@.str.3.22 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.4.23 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -s\0A\00", align 1
@.str.5.24 = private unnamed_addr constant [64 x i8] c"Parse Error on option -s integer value required after argument\0A\00", align 1
@.str.6.25 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.7.26 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -r\0A\00", align 1
@.str.8.27 = private unnamed_addr constant [64 x i8] c"Parse Error on option -r integer value required after argument\0A\00", align 1
@.str.9.28 = private unnamed_addr constant [3 x i8] c"-f\00", align 1
@.str.10.29 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -f\0A\00", align 1
@.str.11.30 = private unnamed_addr constant [64 x i8] c"Parse Error on option -f integer value required after argument\0A\00", align 1
@.str.12.31 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.13.32 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@.str.14.33 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.15.34 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -b\0A\00", align 1
@.str.16.35 = private unnamed_addr constant [64 x i8] c"Parse Error on option -b integer value required after argument\0A\00", align 1
@.str.17.36 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.18.37 = private unnamed_addr constant [32 x i8] c"Missing integer argument to -c\0A\00", align 1
@.str.19.38 = private unnamed_addr constant [64 x i8] c"Parse Error on option -c integer value required after argument\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"Use of -v requires compiling with -DVIZ_MESH\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"ERROR: Unknown command line argument: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"Usage: %s [opts]\0A\00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c" where [opts] is one or more of:\0A\00", align 1
@.str.44 = private unnamed_addr constant [53 x i8] c" -q              : quiet mode - suppress all stdout\0A\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c" -i <iterations> : number of cycles to run\0A\00", align 1
@.str.46 = private unnamed_addr constant [51 x i8] c" -s <size>       : length of cube mesh along side\0A\00", align 1
@.str.47 = private unnamed_addr constant [57 x i8] c" -r <numregions> : Number of distinct regions (def: 11)\0A\00", align 1
@.str.48 = private unnamed_addr constant [70 x i8] c" -b <balance>    : Load balance between regions of a domain (def: 1)\0A\00", align 1
@.str.49 = private unnamed_addr constant [66 x i8] c" -c <cost>       : Extra cost of more expensive regions (def: 1)\0A\00", align 1
@.str.50 = private unnamed_addr constant [76 x i8] c" -f <numfiles>   : Number of files to split viz dump into (def: (np+10)/9)\0A\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c" -p              : Print out progress\0A\00", align 1
@.str.52 = private unnamed_addr constant [72 x i8] c" -v              : Output viz file (requires compiling with -DVIZ_MESH\0A\00", align 1
@.str.53 = private unnamed_addr constant [33 x i8] c" -h              : This message\0A\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"Run completed:\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"   Problem size        =  \00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"   MPI tasks           =  \00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"   Iteration count     =  \00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"   Final Origin Energy =  \00", align 1
@.str.30 = private unnamed_addr constant [47 x i8] c"   Testing Plane 0 of Energy Array on rank 0:\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"        MaxAbsDiff   = \00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"        TotalAbsDiff = \00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"        MaxRelDiff   = \00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"\0AElapsed time         = \00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c" (s)\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Grind time (us/z/c)  = \00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c" (per dom)  (\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c" overall)\0A\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"FOM                  = \00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c" (z/s)\0A\0A\00", align 1
@.str.55 = private unnamed_addr constant [59 x i8] c"Must enable -DVIZ_MESH at compile time to call DumpDomain\0A\00", align 1

@_ZN6DomainC1Eiiiiiiiii = dso_local unnamed_addr alias void (%class.Domain*, i32, i32, i32, i32, i32, i32, i32, i32, i32), void (%class.Domain*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_ZN6DomainC2Eiiiiiiiii
@_ZN6DomainD1Ev = dso_local unnamed_addr alias void (%class.Domain*), void (%class.Domain*)* @_ZN6DomainD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN6DomainC2Eiiiiiiiii(%class.Domain* %this, i32 %numRanks, i32 %colLoc, i32 %rowLoc, i32 %planeLoc, i32 %nx, i32 %tp, i32 %nr, i32 %balance, i32 %cost) unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 0
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_x) #14
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 1
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_y) #14
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 2
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_z) #14
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 3
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_xd) #14
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 4
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_yd) #14
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 5
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_zd) #14
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 6
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_xdd) #14
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 7
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_ydd) #14
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 8
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_zdd) #14
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 9
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_fx) #14
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 10
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_fy) #14
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 11
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_fz) #14
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 12
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_nodalMass) #14
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 13
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_symmX) #14
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 14
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_symmY) #14
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 15
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_symmZ) #14
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 18
  store i32* null, i32** %m_regElemSize, align 8, !tbaa !2
  %m_regNumList = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 19
  store i32* null, i32** %m_regNumList, align 8, !tbaa !11
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 20
  store i32** null, i32*** %m_regElemlist, align 8, !tbaa !12
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 21
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_nodelist) #14
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 22
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lxim) #14
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 23
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lxip) #14
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 24
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_letam) #14
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 25
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_letap) #14
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 26
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lzetam) #14
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 27
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_lzetap) #14
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 28
  call void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %m_elemBC) #14
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 38
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_e) #14
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 39
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_p) #14
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 40
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_q) #14
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 41
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_ql) #14
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 42
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_qq) #14
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 43
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_v) #14
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 44
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_volo) #14
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 45
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_vnew) #14
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 46
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_delv) #14
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 47
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_vdov) #14
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 48
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_arealg) #14
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 49
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_ss) #14
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 50
  call void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %m_elemMass) #14
  %m_e_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 51
  store double 0x3E7AD7F29ABCAF48, double* %m_e_cut, align 8, !tbaa !13
  %m_p_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 52
  store double 0x3E7AD7F29ABCAF48, double* %m_p_cut, align 8, !tbaa !14
  %m_q_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 53
  store double 0x3E7AD7F29ABCAF48, double* %m_q_cut, align 8, !tbaa !15
  %m_v_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 54
  store double 1.000000e-10, double* %m_v_cut, align 8, !tbaa !16
  %m_u_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 55
  store double 0x3E7AD7F29ABCAF48, double* %m_u_cut, align 8, !tbaa !17
  %m_hgcoef = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 56
  store double 3.000000e+00, double* %m_hgcoef, align 8, !tbaa !18
  %m_ss4o3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 57
  store double 0x3FF5555555555555, double* %m_ss4o3, align 8, !tbaa !19
  %m_qstop = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 58
  store double 1.000000e+12, double* %m_qstop, align 8, !tbaa !20
  %m_monoq_max_slope = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 59
  store double 1.000000e+00, double* %m_monoq_max_slope, align 8, !tbaa !21
  %m_monoq_limiter_mult = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 60
  store double 2.000000e+00, double* %m_monoq_limiter_mult, align 8, !tbaa !22
  %m_qlc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 61
  store double 5.000000e-01, double* %m_qlc_monoq, align 8, !tbaa !23
  %m_qqc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 62
  store double 0x3FE5555555555555, double* %m_qqc_monoq, align 8, !tbaa !24
  %m_qqc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 63
  store double 2.000000e+00, double* %m_qqc, align 8, !tbaa !25
  %m_eosvmax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 64
  store double 1.000000e+09, double* %m_eosvmax, align 8, !tbaa !26
  %m_eosvmin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 65
  store double 1.000000e-09, double* %m_eosvmin, align 8, !tbaa !27
  %m_pmin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 66
  store double 0.000000e+00, double* %m_pmin, align 8, !tbaa !28
  %m_emin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 67
  store double -1.000000e+15, double* %m_emin, align 8, !tbaa !29
  %m_dvovmax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 68
  store double 1.000000e-01, double* %m_dvovmax, align 8, !tbaa !30
  %m_refdens = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 69
  store double 1.000000e+00, double* %m_refdens, align 8, !tbaa !31
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 92
  store i32* null, i32** %m_nodeElemStart, align 8, !tbaa !32
  %m_nodeElemCornerList = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 93
  store i32* null, i32** %m_nodeElemCornerList, align 8, !tbaa !33
  %add = add nsw i32 %nx, 1
  %call = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %this)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  store i32 %cost, i32* %call, align 4, !tbaa !34
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  store i32 %tp, i32* %m_tp, align 8, !tbaa !35
  %m_numRanks = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 80
  store i32 %numRanks, i32* %m_numRanks, align 8, !tbaa !36
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  store i32 %colLoc, i32* %m_colLoc, align 4, !tbaa !37
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  store i32 %rowLoc, i32* %m_rowLoc, align 8, !tbaa !38
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  store i32 %planeLoc, i32* %m_planeLoc, align 4, !tbaa !39
  %m_sizeX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 85
  store i32 %nx, i32* %m_sizeX, align 4, !tbaa !40
  %m_sizeY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 86
  store i32 %nx, i32* %m_sizeY, align 8, !tbaa !41
  %m_sizeZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 87
  store i32 %nx, i32* %m_sizeZ, align 4, !tbaa !42
  %mul = mul nsw i32 %nx, %nx
  %mul2 = mul nsw i32 %mul, %nx
  %m_numElem = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 88
  store i32 %mul2, i32* %m_numElem, align 8, !tbaa !43
  %mul3 = mul nsw i32 %add, %add
  %mul4 = mul nsw i32 %mul3, %add
  %m_numNode = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 89
  store i32 %mul4, i32* %m_numNode, align 4, !tbaa !44
  %call6 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont
  %0 = load i32, i32* %call6, align 4, !tbaa !34
  %conv = sext i32 %0 to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call8 = invoke noalias nonnull i8* @_Znam(i64 %4) #17
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %5 = bitcast i8* %call8 to i32*
  %m_regNumList9 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 19
  store i32* %5, i32** %m_regNumList9, align 8, !tbaa !11
  %call11 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
          to label %invoke.cont10 unwind label %lpad

invoke.cont10:                                    ; preds = %invoke.cont7
  %6 = load i32, i32* %call11, align 4, !tbaa !34
  invoke void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* %this, i32 %6)
          to label %invoke.cont12 unwind label %lpad

invoke.cont12:                                    ; preds = %invoke.cont10
  %call14 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this)
          to label %invoke.cont13 unwind label %lpad

invoke.cont13:                                    ; preds = %invoke.cont12
  %7 = load i32, i32* %call14, align 4, !tbaa !34
  invoke void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* %this, i32 %7)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont13
  invoke void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* %this, i32 %add)
          to label %invoke.cont16 unwind label %lpad

invoke.cont16:                                    ; preds = %invoke.cont15
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %invoke.cont16
  %i.0 = phi i32 [ 0, %invoke.cont16 ], [ %inc, %for.inc ]
  %call19 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %for.cond
  %8 = load i32, i32* %call19, align 4, !tbaa !34
  %cmp = icmp slt i32 %i.0, %8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %invoke.cont18
  br label %for.end

lpad:                                             ; preds = %invoke.cont107, %invoke.cont105, %invoke.cont103, %invoke.cont101, %invoke.cont99, %invoke.cont97, %invoke.cont95, %invoke.cont93, %invoke.cont92, %invoke.cont91, %invoke.cont90, %invoke.cont89, %invoke.cont88, %for.end87, %invoke.cont15, %invoke.cont13, %invoke.cont12, %invoke.cont10, %invoke.cont7, %invoke.cont5, %invoke.cont, %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  br label %ehcleanup200

lpad17:                                           ; preds = %invoke.cont24, %invoke.cont22, %invoke.cont20, %for.body, %for.cond
  %12 = landingpad { i8*, i32 }
          cleanup
  %13 = extractvalue { i8*, i32 } %12, 0
  %14 = extractvalue { i8*, i32 } %12, 1
  br label %ehcleanup200

for.body:                                         ; preds = %invoke.cont18
  %call21 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this, i32 %i.0)
          to label %invoke.cont20 unwind label %lpad17

invoke.cont20:                                    ; preds = %for.body
  store double 0.000000e+00, double* %call21, align 8, !tbaa !45
  %call23 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %this, i32 %i.0)
          to label %invoke.cont22 unwind label %lpad17

invoke.cont22:                                    ; preds = %invoke.cont20
  store double 0.000000e+00, double* %call23, align 8, !tbaa !45
  %call25 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %this, i32 %i.0)
          to label %invoke.cont24 unwind label %lpad17

invoke.cont24:                                    ; preds = %invoke.cont22
  store double 0.000000e+00, double* %call25, align 8, !tbaa !45
  %call27 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %this, i32 %i.0)
          to label %invoke.cont26 unwind label %lpad17

invoke.cont26:                                    ; preds = %invoke.cont24
  store double 0.000000e+00, double* %call27, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %invoke.cont26
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !46

for.end:                                          ; preds = %for.cond.cleanup
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc38, %for.end
  %i28.0 = phi i32 [ 0, %for.end ], [ %inc39, %for.inc38 ]
  %call32 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
          to label %invoke.cont31 unwind label %lpad30

invoke.cont31:                                    ; preds = %for.cond29
  %15 = load i32, i32* %call32, align 4, !tbaa !34
  %cmp33 = icmp slt i32 %i28.0, %15
  br i1 %cmp33, label %for.body35, label %for.cond.cleanup34

for.cond.cleanup34:                               ; preds = %invoke.cont31
  br label %for.end40

lpad30:                                           ; preds = %for.body35, %for.cond29
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  br label %ehcleanup200

for.body35:                                       ; preds = %invoke.cont31
  %call37 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %this, i32 %i28.0)
          to label %invoke.cont36 unwind label %lpad30

invoke.cont36:                                    ; preds = %for.body35
  store double 1.000000e+00, double* %call37, align 8, !tbaa !45
  br label %for.inc38

for.inc38:                                        ; preds = %invoke.cont36
  %inc39 = add nsw i32 %i28.0, 1
  br label %for.cond29, !llvm.loop !48

for.end40:                                        ; preds = %for.cond.cleanup34
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc55, %for.end40
  %i41.0 = phi i32 [ 0, %for.end40 ], [ %inc56, %for.inc55 ]
  %call45 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this)
          to label %invoke.cont44 unwind label %lpad43

invoke.cont44:                                    ; preds = %for.cond42
  %19 = load i32, i32* %call45, align 4, !tbaa !34
  %cmp46 = icmp slt i32 %i41.0, %19
  br i1 %cmp46, label %for.body48, label %for.cond.cleanup47

for.cond.cleanup47:                               ; preds = %invoke.cont44
  br label %for.end57

lpad43:                                           ; preds = %invoke.cont51, %invoke.cont49, %for.body48, %for.cond42
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  br label %ehcleanup200

for.body48:                                       ; preds = %invoke.cont44
  %call50 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %this, i32 %i41.0)
          to label %invoke.cont49 unwind label %lpad43

invoke.cont49:                                    ; preds = %for.body48
  store double 0.000000e+00, double* %call50, align 8, !tbaa !45
  %call52 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %this, i32 %i41.0)
          to label %invoke.cont51 unwind label %lpad43

invoke.cont51:                                    ; preds = %invoke.cont49
  store double 0.000000e+00, double* %call52, align 8, !tbaa !45
  %call54 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %this, i32 %i41.0)
          to label %invoke.cont53 unwind label %lpad43

invoke.cont53:                                    ; preds = %invoke.cont51
  store double 0.000000e+00, double* %call54, align 8, !tbaa !45
  br label %for.inc55

for.inc55:                                        ; preds = %invoke.cont53
  %inc56 = add nsw i32 %i41.0, 1
  br label %for.cond42, !llvm.loop !49

for.end57:                                        ; preds = %for.cond.cleanup47
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc72, %for.end57
  %i58.0 = phi i32 [ 0, %for.end57 ], [ %inc73, %for.inc72 ]
  %call62 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this)
          to label %invoke.cont61 unwind label %lpad60

invoke.cont61:                                    ; preds = %for.cond59
  %23 = load i32, i32* %call62, align 4, !tbaa !34
  %cmp63 = icmp slt i32 %i58.0, %23
  br i1 %cmp63, label %for.body65, label %for.cond.cleanup64

for.cond.cleanup64:                               ; preds = %invoke.cont61
  br label %for.end74

lpad60:                                           ; preds = %invoke.cont68, %invoke.cont66, %for.body65, %for.cond59
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = extractvalue { i8*, i32 } %24, 0
  %26 = extractvalue { i8*, i32 } %24, 1
  br label %ehcleanup200

for.body65:                                       ; preds = %invoke.cont61
  %call67 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %this, i32 %i58.0)
          to label %invoke.cont66 unwind label %lpad60

invoke.cont66:                                    ; preds = %for.body65
  store double 0.000000e+00, double* %call67, align 8, !tbaa !45
  %call69 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %this, i32 %i58.0)
          to label %invoke.cont68 unwind label %lpad60

invoke.cont68:                                    ; preds = %invoke.cont66
  store double 0.000000e+00, double* %call69, align 8, !tbaa !45
  %call71 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %this, i32 %i58.0)
          to label %invoke.cont70 unwind label %lpad60

invoke.cont70:                                    ; preds = %invoke.cont68
  store double 0.000000e+00, double* %call71, align 8, !tbaa !45
  br label %for.inc72

for.inc72:                                        ; preds = %invoke.cont70
  %inc73 = add nsw i32 %i58.0, 1
  br label %for.cond59, !llvm.loop !50

for.end74:                                        ; preds = %for.cond.cleanup64
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc85, %for.end74
  %i75.0 = phi i32 [ 0, %for.end74 ], [ %inc86, %for.inc85 ]
  %call79 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this)
          to label %invoke.cont78 unwind label %lpad77

invoke.cont78:                                    ; preds = %for.cond76
  %27 = load i32, i32* %call79, align 4, !tbaa !34
  %cmp80 = icmp slt i32 %i75.0, %27
  br i1 %cmp80, label %for.body82, label %for.cond.cleanup81

for.cond.cleanup81:                               ; preds = %invoke.cont78
  br label %for.end87

lpad77:                                           ; preds = %for.body82, %for.cond76
  %28 = landingpad { i8*, i32 }
          cleanup
  %29 = extractvalue { i8*, i32 } %28, 0
  %30 = extractvalue { i8*, i32 } %28, 1
  br label %ehcleanup200

for.body82:                                       ; preds = %invoke.cont78
  %call84 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this, i32 %i75.0)
          to label %invoke.cont83 unwind label %lpad77

invoke.cont83:                                    ; preds = %for.body82
  store double 0.000000e+00, double* %call84, align 8, !tbaa !45
  br label %for.inc85

for.inc85:                                        ; preds = %invoke.cont83
  %inc86 = add nsw i32 %i75.0, 1
  br label %for.cond76, !llvm.loop !51

for.end87:                                        ; preds = %for.cond.cleanup81
  invoke void @_ZN6Domain9BuildMeshEiii(%class.Domain* %this, i32 %nx, i32 %add, i32 %nx)
          to label %invoke.cont88 unwind label %lpad

invoke.cont88:                                    ; preds = %for.end87
  invoke void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* %this, i32 %nr, i32 %balance)
          to label %invoke.cont89 unwind label %lpad

invoke.cont89:                                    ; preds = %invoke.cont88
  invoke void @_ZN6Domain19SetupSymmetryPlanesEi(%class.Domain* %this, i32 %add)
          to label %invoke.cont90 unwind label %lpad

invoke.cont90:                                    ; preds = %invoke.cont89
  invoke void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* %this, i32 %nx)
          to label %invoke.cont91 unwind label %lpad

invoke.cont91:                                    ; preds = %invoke.cont90
  invoke void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* %this, i32 %nx)
          to label %invoke.cont92 unwind label %lpad

invoke.cont92:                                    ; preds = %invoke.cont91
  %call94 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* %this)
          to label %invoke.cont93 unwind label %lpad

invoke.cont93:                                    ; preds = %invoke.cont92
  store double 0xBEB0C6F7A0B5ED8D, double* %call94, align 8, !tbaa !45
  %call96 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %this)
          to label %invoke.cont95 unwind label %lpad

invoke.cont95:                                    ; preds = %invoke.cont93
  store double 1.000000e-02, double* %call96, align 8, !tbaa !45
  %call98 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* %this)
          to label %invoke.cont97 unwind label %lpad

invoke.cont97:                                    ; preds = %invoke.cont95
  store double 1.100000e+00, double* %call98, align 8, !tbaa !45
  %call100 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %this)
          to label %invoke.cont99 unwind label %lpad

invoke.cont99:                                    ; preds = %invoke.cont97
  store double 1.200000e+00, double* %call100, align 8, !tbaa !45
  %call102 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %this)
          to label %invoke.cont101 unwind label %lpad

invoke.cont101:                                   ; preds = %invoke.cont99
  store double 1.000000e+20, double* %call102, align 8, !tbaa !45
  %call104 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %this)
          to label %invoke.cont103 unwind label %lpad

invoke.cont103:                                   ; preds = %invoke.cont101
  store double 1.000000e+20, double* %call104, align 8, !tbaa !45
  %call106 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %this)
          to label %invoke.cont105 unwind label %lpad

invoke.cont105:                                   ; preds = %invoke.cont103
  store double 1.000000e-02, double* %call106, align 8, !tbaa !45
  %call108 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %this)
          to label %invoke.cont107 unwind label %lpad

invoke.cont107:                                   ; preds = %invoke.cont105
  store double 0.000000e+00, double* %call108, align 8, !tbaa !45
  %call110 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %this)
          to label %invoke.cont109 unwind label %lpad

invoke.cont109:                                   ; preds = %invoke.cont107
  store i32 0, i32* %call110, align 4, !tbaa !34
  br label %for.cond112

for.cond112:                                      ; preds = %for.inc168, %invoke.cont109
  %i111.0 = phi i32 [ 0, %invoke.cont109 ], [ %inc169, %for.inc168 ]
  %call115 = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
          to label %invoke.cont114 unwind label %lpad113

invoke.cont114:                                   ; preds = %for.cond112
  %31 = load i32, i32* %call115, align 4, !tbaa !34
  %cmp116 = icmp slt i32 %i111.0, %31
  br i1 %cmp116, label %for.body118, label %for.cond.cleanup117

for.cond.cleanup117:                              ; preds = %invoke.cont114
  br label %for.end171

lpad113:                                          ; preds = %for.cond112
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  %34 = extractvalue { i8*, i32 } %32, 1
  br label %ehcleanup170

for.body118:                                      ; preds = %invoke.cont114
  %35 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %35) #14
  %36 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %36) #14
  %37 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %37) #14
  %call121 = invoke i32* @_ZN6Domain8nodelistEi(%class.Domain* %this, i32 %i111.0)
          to label %invoke.cont120 unwind label %lpad119

invoke.cont120:                                   ; preds = %for.body118
  br label %for.cond122

for.cond122:                                      ; preds = %for.inc139, %invoke.cont120
  %lnode.0 = phi i32 [ 0, %invoke.cont120 ], [ %inc140, %for.inc139 ]
  %cmp123 = icmp slt i32 %lnode.0, 8
  br i1 %cmp123, label %for.body125, label %for.cond.cleanup124

for.cond.cleanup124:                              ; preds = %for.cond122
  br label %for.end141

lpad119:                                          ; preds = %for.body118
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = extractvalue { i8*, i32 } %38, 0
  %40 = extractvalue { i8*, i32 } %38, 1
  br label %ehcleanup164

for.body125:                                      ; preds = %for.cond122
  %idxprom = sext i32 %lnode.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %call121, i64 %idxprom
  %41 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %call128 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this, i32 %41)
          to label %invoke.cont127 unwind label %lpad126

invoke.cont127:                                   ; preds = %for.body125
  %42 = load double, double* %call128, align 8, !tbaa !45
  %idxprom129 = sext i32 %lnode.0 to i64
  %arrayidx130 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 %idxprom129
  store double %42, double* %arrayidx130, align 8, !tbaa !45
  %call132 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this, i32 %41)
          to label %invoke.cont131 unwind label %lpad126

invoke.cont131:                                   ; preds = %invoke.cont127
  %43 = load double, double* %call132, align 8, !tbaa !45
  %idxprom133 = sext i32 %lnode.0 to i64
  %arrayidx134 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 %idxprom133
  store double %43, double* %arrayidx134, align 8, !tbaa !45
  %call136 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this, i32 %41)
          to label %invoke.cont135 unwind label %lpad126

invoke.cont135:                                   ; preds = %invoke.cont131
  %44 = load double, double* %call136, align 8, !tbaa !45
  %idxprom137 = sext i32 %lnode.0 to i64
  %arrayidx138 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 %idxprom137
  store double %44, double* %arrayidx138, align 8, !tbaa !45
  br label %for.inc139

for.inc139:                                       ; preds = %invoke.cont135
  %inc140 = add nsw i32 %lnode.0, 1
  br label %for.cond122, !llvm.loop !52

lpad126:                                          ; preds = %invoke.cont131, %invoke.cont127, %for.body125
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = extractvalue { i8*, i32 } %45, 0
  %47 = extractvalue { i8*, i32 } %45, 1
  br label %ehcleanup164

for.end141:                                       ; preds = %for.cond.cleanup124
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay142 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay143 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %call146 = invoke double @_Z14CalcElemVolumePKdS0_S0_(double* %arraydecay, double* %arraydecay142, double* %arraydecay143)
          to label %invoke.cont145 unwind label %lpad144

invoke.cont145:                                   ; preds = %for.end141
  %call148 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this, i32 %i111.0)
          to label %invoke.cont147 unwind label %lpad144

invoke.cont147:                                   ; preds = %invoke.cont145
  store double %call146, double* %call148, align 8, !tbaa !45
  %call150 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %this, i32 %i111.0)
          to label %invoke.cont149 unwind label %lpad144

invoke.cont149:                                   ; preds = %invoke.cont147
  store double %call146, double* %call150, align 8, !tbaa !45
  br label %for.cond151

for.cond151:                                      ; preds = %for.inc161, %invoke.cont149
  %j.0 = phi i32 [ 0, %invoke.cont149 ], [ %inc162, %for.inc161 ]
  %cmp152 = icmp slt i32 %j.0, 8
  br i1 %cmp152, label %for.body154, label %for.cond.cleanup153

for.cond.cleanup153:                              ; preds = %for.cond151
  br label %for.end163

lpad144:                                          ; preds = %invoke.cont147, %invoke.cont145, %for.end141
  %48 = landingpad { i8*, i32 }
          cleanup
  %49 = extractvalue { i8*, i32 } %48, 0
  %50 = extractvalue { i8*, i32 } %48, 1
  br label %ehcleanup

for.body154:                                      ; preds = %for.cond151
  %idxprom155 = sext i32 %j.0 to i64
  %arrayidx156 = getelementptr inbounds i32, i32* %call121, i64 %idxprom155
  %51 = load i32, i32* %arrayidx156, align 4, !tbaa !34
  %div = fdiv double %call146, 8.000000e+00
  %call159 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this, i32 %51)
          to label %invoke.cont158 unwind label %lpad157

invoke.cont158:                                   ; preds = %for.body154
  %52 = load double, double* %call159, align 8, !tbaa !45
  %add160 = fadd double %52, %div
  store double %add160, double* %call159, align 8, !tbaa !45
  br label %for.inc161

for.inc161:                                       ; preds = %invoke.cont158
  %inc162 = add nsw i32 %j.0, 1
  br label %for.cond151, !llvm.loop !53

lpad157:                                          ; preds = %for.body154
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = extractvalue { i8*, i32 } %53, 0
  %55 = extractvalue { i8*, i32 } %53, 1
  br label %ehcleanup

for.end163:                                       ; preds = %for.cond.cleanup153
  %56 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %56) #14
  %57 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %57) #14
  %58 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %58) #14
  br label %for.inc168

for.inc168:                                       ; preds = %for.end163
  %inc169 = add nsw i32 %i111.0, 1
  br label %for.cond112, !llvm.loop !54

ehcleanup:                                        ; preds = %lpad157, %lpad144
  %exn.slot.0 = phi i8* [ %54, %lpad157 ], [ %49, %lpad144 ]
  %ehselector.slot.0 = phi i32 [ %55, %lpad157 ], [ %50, %lpad144 ]
  br label %ehcleanup164

ehcleanup164:                                     ; preds = %ehcleanup, %lpad126, %lpad119
  %exn.slot.1 = phi i8* [ %46, %lpad126 ], [ %exn.slot.0, %ehcleanup ], [ %39, %lpad119 ]
  %ehselector.slot.1 = phi i32 [ %47, %lpad126 ], [ %ehselector.slot.0, %ehcleanup ], [ %40, %lpad119 ]
  %59 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %59) #14
  %60 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %60) #14
  %61 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %61) #14
  br label %ehcleanup170

ehcleanup170:                                     ; preds = %ehcleanup164, %lpad113
  %exn.slot.2 = phi i8* [ %exn.slot.1, %ehcleanup164 ], [ %33, %lpad113 ]
  %ehselector.slot.2 = phi i32 [ %ehselector.slot.1, %ehcleanup164 ], [ %34, %lpad113 ]
  br label %ehcleanup200

for.end171:                                       ; preds = %for.cond.cleanup117
  %m_tp172 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %62 = load i32, i32* %m_tp172, align 8, !tbaa !35
  %mul173 = mul nsw i32 %nx, %62
  %conv174 = sitofp i32 %mul173 to double
  %div175 = fdiv double %conv174, 4.500000e+01
  %mul176 = fmul double 0x4182D43F20000000, %div175
  %mul177 = fmul double %mul176, %div175
  %mul178 = fmul double %mul177, %div175
  %m_rowLoc179 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %63 = load i32, i32* %m_rowLoc179, align 8, !tbaa !38
  %m_colLoc180 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %64 = load i32, i32* %m_colLoc180, align 4, !tbaa !37
  %add181 = add nsw i32 %63, %64
  %m_planeLoc182 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %65 = load i32, i32* %m_planeLoc182, align 4, !tbaa !39
  %add183 = add nsw i32 %add181, %65
  %cmp184 = icmp eq i32 %add183, 0
  br i1 %cmp184, label %if.then, label %if.end

if.then:                                          ; preds = %for.end171
  %call187 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this, i32 0)
          to label %invoke.cont186 unwind label %lpad185

invoke.cont186:                                   ; preds = %if.then
  store double %mul178, double* %call187, align 8, !tbaa !45
  br label %if.end

lpad185:                                          ; preds = %invoke.cont188, %if.end, %if.then
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  %68 = extractvalue { i8*, i32 } %66, 1
  br label %ehcleanup200

if.end:                                           ; preds = %invoke.cont186, %for.end171
  %call189 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this, i32 0)
          to label %invoke.cont188 unwind label %lpad185

invoke.cont188:                                   ; preds = %if.end
  %69 = load double, double* %call189, align 8, !tbaa !45
  %call190 = call double @cbrt(double %69) #18
  %mul191 = fmul double 5.000000e-01, %call190
  %mul192 = fmul double 2.000000e+00, %mul178
  %call193 = call double @sqrt(double %mul192) #14
  %div194 = fdiv double %mul191, %call193
  %call196 = invoke nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %this)
          to label %invoke.cont195 unwind label %lpad185

invoke.cont195:                                   ; preds = %invoke.cont188
  store double %div194, double* %call196, align 8, !tbaa !45
  ret void

ehcleanup200:                                     ; preds = %lpad185, %ehcleanup170, %lpad77, %lpad60, %lpad43, %lpad30, %lpad17, %lpad
  %exn.slot.3 = phi i8* [ %13, %lpad17 ], [ %17, %lpad30 ], [ %21, %lpad43 ], [ %25, %lpad60 ], [ %29, %lpad77 ], [ %exn.slot.2, %ehcleanup170 ], [ %67, %lpad185 ], [ %10, %lpad ]
  %ehselector.slot.3 = phi i32 [ %14, %lpad17 ], [ %18, %lpad30 ], [ %22, %lpad43 ], [ %26, %lpad60 ], [ %30, %lpad77 ], [ %ehselector.slot.2, %ehcleanup170 ], [ %68, %lpad185 ], [ %11, %lpad ]
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_elemMass) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ss) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_arealg) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vdov) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_delv) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vnew) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_volo) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_v) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_qq) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ql) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_q) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_p) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_e) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_elemBC) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetap) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetam) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letap) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letam) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxip) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxim) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_nodelist) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmZ) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmY) #14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmX) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_nodalMass) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fz) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fy) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fx) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zdd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ydd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xdd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_yd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xd) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_z) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_y) #14
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_x) #14
  br label %eh.resume

eh.resume:                                        ; preds = %ehcleanup200
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn.slot.3, 0
  %lpad.val239 = insertvalue { i8*, i32 } %lpad.val, i32 %ehselector.slot.3, 1
  resume { i8*, i32 } %lpad.val239
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEEC2Ev(%"class.std::vector"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #19
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(%"class.std::vector.0"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* %0)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  ret void

terminate.lpad:                                   ; preds = %entry
  %1 = landingpad { i8*, i32 }
          catch i8* null
  %2 = extractvalue { i8*, i32 } %1, 0
  call void @__clang_call_terminate(i8* %2) #19
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_cost = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 17
  ret i32* %m_cost
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_numElem = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 88
  ret i32* %m_numElem
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6Domain22AllocateElemPersistentEi(%class.Domain* %this, i32 %numElem) #0 comdat align 2 {
entry:
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 21
  %mul = mul nsw i32 8, %numElem
  %conv = sext i32 %mul to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_nodelist, i64 %conv)
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 22
  %conv2 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lxim, i64 %conv2)
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 23
  %conv3 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lxip, i64 %conv3)
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 24
  %conv4 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_letam, i64 %conv4)
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 25
  %conv5 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_letap, i64 %conv5)
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 26
  %conv6 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lzetam, i64 %conv6)
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 27
  %conv7 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_lzetap, i64 %conv7)
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 28
  %conv8 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_elemBC, i64 %conv8)
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 38
  %conv9 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_e, i64 %conv9)
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 39
  %conv10 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_p, i64 %conv10)
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 40
  %conv11 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_q, i64 %conv11)
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 41
  %conv12 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_ql, i64 %conv12)
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 42
  %conv13 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_qq, i64 %conv13)
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 43
  %conv14 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_v, i64 %conv14)
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 44
  %conv15 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_volo, i64 %conv15)
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 46
  %conv16 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_delv, i64 %conv16)
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 47
  %conv17 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_vdov, i64 %conv17)
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 48
  %conv18 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_arealg, i64 %conv18)
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 49
  %conv19 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_ss, i64 %conv19)
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 50
  %conv20 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_elemMass, i64 %conv20)
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 45
  %conv21 = sext i32 %numElem to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_vnew, i64 %conv21)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_numNode = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 89
  ret i32* %m_numNode
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN6Domain22AllocateNodePersistentEi(%class.Domain* %this, i32 %numNode) #0 comdat align 2 {
entry:
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 0
  %conv = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_x, i64 %conv)
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 1
  %conv2 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_y, i64 %conv2)
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 2
  %conv3 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_z, i64 %conv3)
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 3
  %conv4 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_xd, i64 %conv4)
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 4
  %conv5 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_yd, i64 %conv5)
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 5
  %conv6 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_zd, i64 %conv6)
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 6
  %conv7 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_xdd, i64 %conv7)
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 7
  %conv8 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_ydd, i64 %conv8)
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 8
  %conv9 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_zdd, i64 %conv9)
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 9
  %conv10 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_fx, i64 %conv10)
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 10
  %conv11 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_fy, i64 %conv11)
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 11
  %conv12 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_fz, i64 %conv12)
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 12
  %conv13 = sext i32 %numNode to i64
  call void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %m_nodalMass, i64 %conv13)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain16SetupCommBuffersEi(%class.Domain* %this, i32 %edgeNodes) #0 align 2 {
entry:
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %1 = load i32, i32* %call2, align 4, !tbaa !34
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %2 = load i32, i32* %call3, align 4, !tbaa !34
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %3 = load i32, i32* %call4, align 4, !tbaa !34
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %4 = load i32, i32* %call5, align 4, !tbaa !34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ]
  %cmp6 = icmp sgt i32 %0, %cond
  br i1 %cmp6, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.end
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this)
  %5 = load i32, i32* %call8, align 4, !tbaa !34
  br label %cond.end19

cond.false9:                                      ; preds = %cond.end
  %call10 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %6 = load i32, i32* %call10, align 4, !tbaa !34
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %7 = load i32, i32* %call11, align 4, !tbaa !34
  %cmp12 = icmp sgt i32 %6, %7
  br i1 %cmp12, label %cond.true13, label %cond.false15

cond.true13:                                      ; preds = %cond.false9
  %call14 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %8 = load i32, i32* %call14, align 4, !tbaa !34
  br label %cond.end17

cond.false15:                                     ; preds = %cond.false9
  %call16 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %9 = load i32, i32* %call16, align 4, !tbaa !34
  br label %cond.end17

cond.end17:                                       ; preds = %cond.false15, %cond.true13
  %cond18 = phi i32 [ %8, %cond.true13 ], [ %9, %cond.false15 ]
  br label %cond.end19

cond.end19:                                       ; preds = %cond.end17, %cond.true7
  %cond20 = phi i32 [ %5, %cond.true7 ], [ %cond18, %cond.end17 ]
  %add = add nsw i32 %cond20, 1
  %mul = mul nsw i32 %add, %add
  %conv = sext i32 %mul to i64
  %add21 = add i64 %conv, 15
  %and = and i64 %add21, -16
  %conv22 = trunc i64 %and to i32
  %m_maxPlaneSize = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 90
  store i32 %conv22, i32* %m_maxPlaneSize, align 8, !tbaa !55
  %conv23 = sext i32 %add to i64
  %add24 = add i64 %conv23, 15
  %and25 = and i64 %add24, -16
  %conv26 = trunc i64 %and25 to i32
  %m_maxEdgeSize = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 91
  store i32 %conv26, i32* %m_maxEdgeSize, align 4, !tbaa !56
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %10 = load i32, i32* %m_rowLoc, align 8, !tbaa !38
  %cmp27 = icmp eq i32 %10, 0
  %11 = zext i1 %cmp27 to i64
  %cond28 = select i1 %cmp27, i32 0, i32 1
  %m_rowMin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 94
  store i32 %cond28, i32* %m_rowMin, align 8, !tbaa !57
  %m_rowLoc29 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %12 = load i32, i32* %m_rowLoc29, align 8, !tbaa !38
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %13 = load i32, i32* %m_tp, align 8, !tbaa !35
  %sub = sub nsw i32 %13, 1
  %cmp30 = icmp eq i32 %12, %sub
  %14 = zext i1 %cmp30 to i64
  %cond31 = select i1 %cmp30, i32 0, i32 1
  %m_rowMax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 95
  store i32 %cond31, i32* %m_rowMax, align 4, !tbaa !58
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %15 = load i32, i32* %m_colLoc, align 4, !tbaa !37
  %cmp32 = icmp eq i32 %15, 0
  %16 = zext i1 %cmp32 to i64
  %cond33 = select i1 %cmp32, i32 0, i32 1
  %m_colMin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 96
  store i32 %cond33, i32* %m_colMin, align 8, !tbaa !59
  %m_colLoc34 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %17 = load i32, i32* %m_colLoc34, align 4, !tbaa !37
  %m_tp35 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %18 = load i32, i32* %m_tp35, align 8, !tbaa !35
  %sub36 = sub nsw i32 %18, 1
  %cmp37 = icmp eq i32 %17, %sub36
  %19 = zext i1 %cmp37 to i64
  %cond38 = select i1 %cmp37, i32 0, i32 1
  %m_colMax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 97
  store i32 %cond38, i32* %m_colMax, align 4, !tbaa !60
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %20 = load i32, i32* %m_planeLoc, align 4, !tbaa !39
  %cmp39 = icmp eq i32 %20, 0
  %21 = zext i1 %cmp39 to i64
  %cond40 = select i1 %cmp39, i32 0, i32 1
  %m_planeMin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 98
  store i32 %cond40, i32* %m_planeMin, align 8, !tbaa !61
  %m_planeLoc41 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %22 = load i32, i32* %m_planeLoc41, align 4, !tbaa !39
  %m_tp42 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %23 = load i32, i32* %m_tp42, align 8, !tbaa !35
  %sub43 = sub nsw i32 %23, 1
  %cmp44 = icmp eq i32 %22, %sub43
  %24 = zext i1 %cmp44 to i64
  %cond45 = select i1 %cmp44, i32 0, i32 1
  %m_planeMax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 99
  store i32 %cond45, i32* %m_planeMax, align 4, !tbaa !62
  %m_colLoc46 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %25 = load i32, i32* %m_colLoc46, align 4, !tbaa !37
  %cmp47 = icmp eq i32 %25, 0
  br i1 %cmp47, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end19
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 13
  %mul48 = mul nsw i32 %edgeNodes, %edgeNodes
  %conv49 = sext i32 %mul48 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_symmX, i64 %conv49)
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end19
  %m_rowLoc50 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %26 = load i32, i32* %m_rowLoc50, align 8, !tbaa !38
  %cmp51 = icmp eq i32 %26, 0
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 14
  %mul53 = mul nsw i32 %edgeNodes, %edgeNodes
  %conv54 = sext i32 %mul53 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_symmY, i64 %conv54)
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end
  %m_planeLoc56 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %27 = load i32, i32* %m_planeLoc56, align 4, !tbaa !39
  %cmp57 = icmp eq i32 %27, 0
  br i1 %cmp57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end55
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 15
  %mul59 = mul nsw i32 %edgeNodes, %edgeNodes
  %conv60 = sext i32 %mul59 to i64
  call void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %m_symmZ, i64 %conv60)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 38
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_e, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 39
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_p, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 40
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_q, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 49
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ss, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 43
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_v, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 3
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_xd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 4
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_yd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 5
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_zd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 6
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_xdd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 7
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ydd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 8
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_zdd, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 12
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_nodalMass, i64 %conv) #14
  ret double* %call
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain9BuildMeshEiii(%class.Domain* %this, i32 %nx, i32 %edgeNodes, i32 %edgeElems) #0 align 2 {
entry:
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %0 = load i32, i32* %m_tp, align 8, !tbaa !35
  %mul = mul nsw i32 %0, %nx
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %1 = load i32, i32* %m_planeLoc, align 4, !tbaa !39
  %mul2 = mul nsw i32 %1, %nx
  %conv = sitofp i32 %mul2 to double
  %mul3 = fmul double 1.125000e+00, %conv
  %conv4 = sitofp i32 %mul to double
  %div = fdiv double %mul3, %conv4
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %entry
  %plane.0 = phi i32 [ 0, %entry ], [ %inc53, %for.inc52 ]
  %tz.0 = phi double [ %div, %entry ], [ %div51, %for.inc52 ]
  %nidx.0 = phi i32 [ 0, %entry ], [ %nidx.1, %for.inc52 ]
  %cmp = icmp slt i32 %plane.0, %edgeNodes
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end54

for.body:                                         ; preds = %for.cond
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %2 = load i32, i32* %m_rowLoc, align 8, !tbaa !38
  %mul5 = mul nsw i32 %2, %nx
  %conv6 = sitofp i32 %mul5 to double
  %mul7 = fmul double 1.125000e+00, %conv6
  %conv8 = sitofp i32 %mul to double
  %div9 = fdiv double %mul7, %conv8
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc41, %for.body
  %row.0 = phi i32 [ 0, %for.body ], [ %inc42, %for.inc41 ]
  %ty.0 = phi double [ %div9, %for.body ], [ %div40, %for.inc41 ]
  %nidx.1 = phi i32 [ %nidx.0, %for.body ], [ %nidx.2, %for.inc41 ]
  %cmp11 = icmp slt i32 %row.0, %edgeNodes
  br i1 %cmp11, label %for.body13, label %for.cond.cleanup12

for.cond.cleanup12:                               ; preds = %for.cond10
  br label %for.end43

for.body13:                                       ; preds = %for.cond10
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %3 = load i32, i32* %m_colLoc, align 4, !tbaa !37
  %mul14 = mul nsw i32 %3, %nx
  %conv15 = sitofp i32 %mul14 to double
  %mul16 = fmul double 1.125000e+00, %conv15
  %conv17 = sitofp i32 %mul to double
  %div18 = fdiv double %mul16, %conv17
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc, %for.body13
  %tx.0 = phi double [ %div18, %for.body13 ], [ %div31, %for.inc ]
  %nidx.2 = phi i32 [ %nidx.1, %for.body13 ], [ %inc, %for.inc ]
  %col.0 = phi i32 [ 0, %for.body13 ], [ %inc32, %for.inc ]
  %cmp20 = icmp slt i32 %col.0, %edgeNodes
  br i1 %cmp20, label %for.body22, label %for.cond.cleanup21

for.cond.cleanup21:                               ; preds = %for.cond19
  br label %for.end

for.body22:                                       ; preds = %for.cond19
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this, i32 %nidx.2)
  store double %tx.0, double* %call, align 8, !tbaa !45
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this, i32 %nidx.2)
  store double %ty.0, double* %call23, align 8, !tbaa !45
  %call24 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this, i32 %nidx.2)
  store double %tz.0, double* %call24, align 8, !tbaa !45
  %inc = add nsw i32 %nidx.2, 1
  %m_colLoc25 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %4 = load i32, i32* %m_colLoc25, align 4, !tbaa !37
  %mul26 = mul nsw i32 %4, %nx
  %add = add nsw i32 %mul26, %col.0
  %add27 = add nsw i32 %add, 1
  %conv28 = sitofp i32 %add27 to double
  %mul29 = fmul double 1.125000e+00, %conv28
  %conv30 = sitofp i32 %mul to double
  %div31 = fdiv double %mul29, %conv30
  br label %for.inc

for.inc:                                          ; preds = %for.body22
  %inc32 = add nsw i32 %col.0, 1
  br label %for.cond19, !llvm.loop !63

for.end:                                          ; preds = %for.cond.cleanup21
  %m_rowLoc33 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %5 = load i32, i32* %m_rowLoc33, align 8, !tbaa !38
  %mul34 = mul nsw i32 %5, %nx
  %add35 = add nsw i32 %mul34, %row.0
  %add36 = add nsw i32 %add35, 1
  %conv37 = sitofp i32 %add36 to double
  %mul38 = fmul double 1.125000e+00, %conv37
  %conv39 = sitofp i32 %mul to double
  %div40 = fdiv double %mul38, %conv39
  br label %for.inc41

for.inc41:                                        ; preds = %for.end
  %inc42 = add nsw i32 %row.0, 1
  br label %for.cond10, !llvm.loop !64

for.end43:                                        ; preds = %for.cond.cleanup12
  %m_planeLoc44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %6 = load i32, i32* %m_planeLoc44, align 4, !tbaa !39
  %mul45 = mul nsw i32 %6, %nx
  %add46 = add nsw i32 %mul45, %plane.0
  %add47 = add nsw i32 %add46, 1
  %conv48 = sitofp i32 %add47 to double
  %mul49 = fmul double 1.125000e+00, %conv48
  %conv50 = sitofp i32 %mul to double
  %div51 = fdiv double %mul49, %conv50
  br label %for.inc52

for.inc52:                                        ; preds = %for.end43
  %inc53 = add nsw i32 %plane.0, 1
  br label %for.cond, !llvm.loop !65

for.end54:                                        ; preds = %for.cond.cleanup
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc104, %for.end54
  %nidx.3 = phi i32 [ 0, %for.end54 ], [ %add103, %for.inc104 ]
  %zidx.0 = phi i32 [ 0, %for.end54 ], [ %zidx.1, %for.inc104 ]
  %plane55.0 = phi i32 [ 0, %for.end54 ], [ %inc105, %for.inc104 ]
  %cmp57 = icmp slt i32 %plane55.0, %edgeElems
  br i1 %cmp57, label %for.body59, label %for.cond.cleanup58

for.cond.cleanup58:                               ; preds = %for.cond56
  br label %for.end106

for.body59:                                       ; preds = %for.cond56
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc100, %for.body59
  %nidx.4 = phi i32 [ %nidx.3, %for.body59 ], [ %inc99, %for.inc100 ]
  %zidx.1 = phi i32 [ %zidx.0, %for.body59 ], [ %zidx.2, %for.inc100 ]
  %row60.0 = phi i32 [ 0, %for.body59 ], [ %inc101, %for.inc100 ]
  %cmp62 = icmp slt i32 %row60.0, %edgeElems
  br i1 %cmp62, label %for.body64, label %for.cond.cleanup63

for.cond.cleanup63:                               ; preds = %for.cond61
  br label %for.end102

for.body64:                                       ; preds = %for.cond61
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc96, %for.body64
  %nidx.5 = phi i32 [ %nidx.4, %for.body64 ], [ %inc95, %for.inc96 ]
  %zidx.2 = phi i32 [ %zidx.1, %for.body64 ], [ %inc94, %for.inc96 ]
  %col65.0 = phi i32 [ 0, %for.body64 ], [ %inc97, %for.inc96 ]
  %cmp67 = icmp slt i32 %col65.0, %edgeElems
  br i1 %cmp67, label %for.body69, label %for.cond.cleanup68

for.cond.cleanup68:                               ; preds = %for.cond66
  br label %for.end98

for.body69:                                       ; preds = %for.cond66
  %call70 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %this, i32 %zidx.2)
  %arrayidx = getelementptr inbounds i32, i32* %call70, i64 0
  store i32 %nidx.5, i32* %arrayidx, align 4, !tbaa !34
  %add71 = add nsw i32 %nidx.5, 1
  %arrayidx72 = getelementptr inbounds i32, i32* %call70, i64 1
  store i32 %add71, i32* %arrayidx72, align 4, !tbaa !34
  %add73 = add nsw i32 %nidx.5, %edgeNodes
  %add74 = add nsw i32 %add73, 1
  %arrayidx75 = getelementptr inbounds i32, i32* %call70, i64 2
  store i32 %add74, i32* %arrayidx75, align 4, !tbaa !34
  %add76 = add nsw i32 %nidx.5, %edgeNodes
  %arrayidx77 = getelementptr inbounds i32, i32* %call70, i64 3
  store i32 %add76, i32* %arrayidx77, align 4, !tbaa !34
  %mul78 = mul nsw i32 %edgeNodes, %edgeNodes
  %add79 = add nsw i32 %nidx.5, %mul78
  %arrayidx80 = getelementptr inbounds i32, i32* %call70, i64 4
  store i32 %add79, i32* %arrayidx80, align 4, !tbaa !34
  %mul81 = mul nsw i32 %edgeNodes, %edgeNodes
  %add82 = add nsw i32 %nidx.5, %mul81
  %add83 = add nsw i32 %add82, 1
  %arrayidx84 = getelementptr inbounds i32, i32* %call70, i64 5
  store i32 %add83, i32* %arrayidx84, align 4, !tbaa !34
  %mul85 = mul nsw i32 %edgeNodes, %edgeNodes
  %add86 = add nsw i32 %nidx.5, %mul85
  %add87 = add nsw i32 %add86, %edgeNodes
  %add88 = add nsw i32 %add87, 1
  %arrayidx89 = getelementptr inbounds i32, i32* %call70, i64 6
  store i32 %add88, i32* %arrayidx89, align 4, !tbaa !34
  %mul90 = mul nsw i32 %edgeNodes, %edgeNodes
  %add91 = add nsw i32 %nidx.5, %mul90
  %add92 = add nsw i32 %add91, %edgeNodes
  %arrayidx93 = getelementptr inbounds i32, i32* %call70, i64 7
  store i32 %add92, i32* %arrayidx93, align 4, !tbaa !34
  %inc94 = add nsw i32 %zidx.2, 1
  %inc95 = add nsw i32 %nidx.5, 1
  br label %for.inc96

for.inc96:                                        ; preds = %for.body69
  %inc97 = add nsw i32 %col65.0, 1
  br label %for.cond66, !llvm.loop !66

for.end98:                                        ; preds = %for.cond.cleanup68
  %inc99 = add nsw i32 %nidx.5, 1
  br label %for.inc100

for.inc100:                                       ; preds = %for.end98
  %inc101 = add nsw i32 %row60.0, 1
  br label %for.cond61, !llvm.loop !67

for.end102:                                       ; preds = %for.cond.cleanup63
  %add103 = add nsw i32 %nidx.4, %edgeNodes
  br label %for.inc104

for.inc104:                                       ; preds = %for.end102
  %inc105 = add nsw i32 %plane55.0, 1
  br label %for.cond56, !llvm.loop !68

for.end106:                                       ; preds = %for.cond.cleanup58
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain21CreateRegionIndexSetsEii(%class.Domain* %this, i32 %nr, i32 %balance) #0 align 2 {
entry:
  call void @srand(i32 0) #14
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  store i32 %nr, i32* %call, align 4, !tbaa !34
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %0 = load i32, i32* %call2, align 4, !tbaa !34
  %conv = sext i32 %0 to i64
  %1 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call3 = call noalias nonnull i8* @_Znam(i64 %4) #17
  %5 = bitcast i8* %call3 to i32*
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 18
  store i32* %5, i32** %m_regElemSize, align 8, !tbaa !2
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %6 = load i32, i32* %call4, align 4, !tbaa !34
  %conv5 = sext i32 %6 to i64
  %7 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv5, i64 8)
  %8 = extractvalue { i64, i1 } %7, 1
  %9 = extractvalue { i64, i1 } %7, 0
  %10 = select i1 %8, i64 -1, i64 %9
  %call6 = call noalias nonnull i8* @_Znam(i64 %10) #17
  %11 = bitcast i8* %call6 to i32**
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 20
  store i32** %11, i32*** %m_regElemlist, align 8, !tbaa !12
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %12 = load i32, i32* %call7, align 4, !tbaa !34
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %nextIndex.0 = phi i32 [ 0, %if.then ], [ %inc, %while.body ]
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %13 = load i32, i32* %call8, align 4, !tbaa !34
  %cmp9 = icmp slt i32 %nextIndex.0, %13
  br i1 %cmp9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call10 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %nextIndex.0)
  store i32 1, i32* %call10, align 4, !tbaa !34
  %inc = add nsw i32 %nextIndex.0, 1
  br label %while.cond, !llvm.loop !69

while.end:                                        ; preds = %while.cond
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 0)
  store i32 0, i32* %call11, align 4, !tbaa !34
  br label %if.end113

if.else:                                          ; preds = %entry
  %call12 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %14 = load i32, i32* %call12, align 4, !tbaa !34
  %conv13 = sext i32 %14 to i64
  %15 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv13, i64 4)
  %16 = extractvalue { i64, i1 } %15, 1
  %17 = extractvalue { i64, i1 } %15, 0
  %18 = select i1 %16, i64 -1, i64 %17
  %call14 = call noalias nonnull i8* @_Znam(i64 %18) #17
  %19 = bitcast i8* %call14 to i32*
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %costDenominator.0 = phi i32 [ 0, %if.else ], [ %conv21, %for.inc ]
  %i.0 = phi i32 [ 0, %if.else ], [ %inc22, %for.inc ]
  %call15 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %20 = load i32, i32* %call15, align 4, !tbaa !34
  %cmp16 = icmp slt i32 %i.0, %20
  br i1 %cmp16, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call17 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %i.0)
  store i32 0, i32* %call17, align 4, !tbaa !34
  %add = add nsw i32 %i.0, 1
  %call18 = call double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %add, i32 %balance)
  %conv19 = sitofp i32 %costDenominator.0 to double
  %add20 = fadd double %conv19, %call18
  %conv21 = fptosi double %add20 to i32
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %19, i64 %idxprom
  store i32 %conv21, i32* %arrayidx, align 4, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc22 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !70

for.end:                                          ; preds = %for.cond.cleanup
  br label %while.cond23

while.cond23:                                     ; preds = %while.end111, %for.end
  %lastReg.0 = phi i32 [ -1, %for.end ], [ %regionNum.0, %while.end111 ]
  %nextIndex.1 = phi i32 [ 0, %for.end ], [ %nextIndex.2, %while.end111 ]
  %call24 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %21 = load i32, i32* %call24, align 4, !tbaa !34
  %cmp25 = icmp slt i32 %nextIndex.1, %21
  br i1 %cmp25, label %while.body26, label %while.end112

while.body26:                                     ; preds = %while.cond23
  %call27 = call i32 @rand() #14
  %rem = srem i32 %call27, %costDenominator.0
  br label %while.cond29

while.cond29:                                     ; preds = %while.body33, %while.body26
  %i28.0 = phi i32 [ 0, %while.body26 ], [ %inc34, %while.body33 ]
  %idxprom30 = sext i32 %i28.0 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %19, i64 %idxprom30
  %22 = load i32, i32* %arrayidx31, align 4, !tbaa !34
  %cmp32 = icmp sge i32 %rem, %22
  br i1 %cmp32, label %while.body33, label %while.end35

while.body33:                                     ; preds = %while.cond29
  %inc34 = add nsw i32 %i28.0, 1
  br label %while.cond29, !llvm.loop !71

while.end35:                                      ; preds = %while.cond29
  %add36 = add nsw i32 %i28.0, 0
  %call37 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %23 = load i32, i32* %call37, align 4, !tbaa !34
  %rem38 = srem i32 %add36, %23
  %add39 = add nsw i32 %rem38, 1
  br label %while.cond40

while.cond40:                                     ; preds = %while.end51, %while.end35
  %regionNum.0 = phi i32 [ %add39, %while.end35 ], [ %add55, %while.end51 ]
  %cmp41 = icmp eq i32 %regionNum.0, %lastReg.0
  br i1 %cmp41, label %while.body42, label %while.end56

while.body42:                                     ; preds = %while.cond40
  %call43 = call i32 @rand() #14
  %rem44 = srem i32 %call43, %costDenominator.0
  br label %while.cond45

while.cond45:                                     ; preds = %while.body49, %while.body42
  %i28.1 = phi i32 [ 0, %while.body42 ], [ %inc50, %while.body49 ]
  %idxprom46 = sext i32 %i28.1 to i64
  %arrayidx47 = getelementptr inbounds i32, i32* %19, i64 %idxprom46
  %24 = load i32, i32* %arrayidx47, align 4, !tbaa !34
  %cmp48 = icmp sge i32 %rem44, %24
  br i1 %cmp48, label %while.body49, label %while.end51

while.body49:                                     ; preds = %while.cond45
  %inc50 = add nsw i32 %i28.1, 1
  br label %while.cond45, !llvm.loop !72

while.end51:                                      ; preds = %while.cond45
  %add52 = add nsw i32 %i28.1, 0
  %call53 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %25 = load i32, i32* %call53, align 4, !tbaa !34
  %rem54 = srem i32 %add52, %25
  %add55 = add nsw i32 %rem54, 1
  br label %while.cond40, !llvm.loop !73

while.end56:                                      ; preds = %while.cond40
  %call57 = call i32 @rand() #14
  %rem58 = srem i32 %call57, 1000
  %cmp59 = icmp slt i32 %rem58, 773
  br i1 %cmp59, label %if.then60, label %if.else64

if.then60:                                        ; preds = %while.end56
  %call61 = call i32 @rand() #14
  %rem62 = srem i32 %call61, 15
  %add63 = add nsw i32 %rem62, 1
  br label %if.end102

if.else64:                                        ; preds = %while.end56
  %cmp65 = icmp slt i32 %rem58, 937
  br i1 %cmp65, label %if.then66, label %if.else70

if.then66:                                        ; preds = %if.else64
  %call67 = call i32 @rand() #14
  %rem68 = srem i32 %call67, 16
  %add69 = add nsw i32 %rem68, 16
  br label %if.end101

if.else70:                                        ; preds = %if.else64
  %cmp71 = icmp slt i32 %rem58, 970
  br i1 %cmp71, label %if.then72, label %if.else76

if.then72:                                        ; preds = %if.else70
  %call73 = call i32 @rand() #14
  %rem74 = srem i32 %call73, 32
  %add75 = add nsw i32 %rem74, 32
  br label %if.end100

if.else76:                                        ; preds = %if.else70
  %cmp77 = icmp slt i32 %rem58, 974
  br i1 %cmp77, label %if.then78, label %if.else82

if.then78:                                        ; preds = %if.else76
  %call79 = call i32 @rand() #14
  %rem80 = srem i32 %call79, 64
  %add81 = add nsw i32 %rem80, 64
  br label %if.end99

if.else82:                                        ; preds = %if.else76
  %cmp83 = icmp slt i32 %rem58, 978
  br i1 %cmp83, label %if.then84, label %if.else88

if.then84:                                        ; preds = %if.else82
  %call85 = call i32 @rand() #14
  %rem86 = srem i32 %call85, 128
  %add87 = add nsw i32 %rem86, 128
  br label %if.end98

if.else88:                                        ; preds = %if.else82
  %cmp89 = icmp slt i32 %rem58, 981
  br i1 %cmp89, label %if.then90, label %if.else94

if.then90:                                        ; preds = %if.else88
  %call91 = call i32 @rand() #14
  %rem92 = srem i32 %call91, 256
  %add93 = add nsw i32 %rem92, 256
  br label %if.end

if.else94:                                        ; preds = %if.else88
  %call95 = call i32 @rand() #14
  %rem96 = srem i32 %call95, 1537
  %add97 = add nsw i32 %rem96, 512
  br label %if.end

if.end:                                           ; preds = %if.else94, %if.then90
  %elements.0 = phi i32 [ %add93, %if.then90 ], [ %add97, %if.else94 ]
  br label %if.end98

if.end98:                                         ; preds = %if.end, %if.then84
  %elements.1 = phi i32 [ %add87, %if.then84 ], [ %elements.0, %if.end ]
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.then78
  %elements.2 = phi i32 [ %add81, %if.then78 ], [ %elements.1, %if.end98 ]
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %if.then72
  %elements.3 = phi i32 [ %add75, %if.then72 ], [ %elements.2, %if.end99 ]
  br label %if.end101

if.end101:                                        ; preds = %if.end100, %if.then66
  %elements.4 = phi i32 [ %add69, %if.then66 ], [ %elements.3, %if.end100 ]
  br label %if.end102

if.end102:                                        ; preds = %if.end101, %if.then60
  %elements.5 = phi i32 [ %add63, %if.then60 ], [ %elements.4, %if.end101 ]
  %add103 = add nsw i32 %elements.5, %nextIndex.1
  br label %while.cond104

while.cond104:                                    ; preds = %while.body108, %if.end102
  %nextIndex.2 = phi i32 [ %nextIndex.1, %if.end102 ], [ %inc110, %while.body108 ]
  %cmp105 = icmp slt i32 %nextIndex.2, %add103
  br i1 %cmp105, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond104
  %call106 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %26 = load i32, i32* %call106, align 4, !tbaa !34
  %cmp107 = icmp slt i32 %nextIndex.2, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond104
  %27 = phi i1 [ false, %while.cond104 ], [ %cmp107, %land.rhs ]
  br i1 %27, label %while.body108, label %while.end111

while.body108:                                    ; preds = %land.end
  %call109 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %nextIndex.2)
  store i32 %regionNum.0, i32* %call109, align 4, !tbaa !34
  %inc110 = add nsw i32 %nextIndex.2, 1
  br label %while.cond104, !llvm.loop !74

while.end111:                                     ; preds = %land.end
  br label %while.cond23, !llvm.loop !75

while.end112:                                     ; preds = %while.cond23
  %isnull = icmp eq i32* %19, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %while.end112
  %28 = bitcast i32* %19 to i8*
  call void @_ZdaPv(i8* %28) #20
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %while.end112
  br label %if.end113

if.end113:                                        ; preds = %delete.end, %while.end
  br label %for.cond115

for.cond115:                                      ; preds = %for.inc123, %if.end113
  %i114.0 = phi i32 [ 0, %if.end113 ], [ %inc124, %for.inc123 ]
  %call116 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %29 = load i32, i32* %call116, align 4, !tbaa !34
  %cmp117 = icmp slt i32 %i114.0, %29
  br i1 %cmp117, label %for.body119, label %for.cond.cleanup118

for.cond.cleanup118:                              ; preds = %for.cond115
  br label %for.end125

for.body119:                                      ; preds = %for.cond115
  %call120 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %i114.0)
  %30 = load i32, i32* %call120, align 4, !tbaa !34
  %sub = sub nsw i32 %30, 1
  %call121 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %sub)
  %31 = load i32, i32* %call121, align 4, !tbaa !34
  %inc122 = add nsw i32 %31, 1
  store i32 %inc122, i32* %call121, align 4, !tbaa !34
  br label %for.inc123

for.inc123:                                       ; preds = %for.body119
  %inc124 = add nsw i32 %i114.0, 1
  br label %for.cond115, !llvm.loop !76

for.end125:                                       ; preds = %for.cond.cleanup118
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc139, %for.end125
  %i126.0 = phi i32 [ 0, %for.end125 ], [ %inc140, %for.inc139 ]
  %call128 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
  %32 = load i32, i32* %call128, align 4, !tbaa !34
  %cmp129 = icmp slt i32 %i126.0, %32
  br i1 %cmp129, label %for.body131, label %for.cond.cleanup130

for.cond.cleanup130:                              ; preds = %for.cond127
  br label %for.end141

for.body131:                                      ; preds = %for.cond127
  %call132 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %i126.0)
  %33 = load i32, i32* %call132, align 4, !tbaa !34
  %conv133 = sext i32 %33 to i64
  %34 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv133, i64 4)
  %35 = extractvalue { i64, i1 } %34, 1
  %36 = extractvalue { i64, i1 } %34, 0
  %37 = select i1 %35, i64 -1, i64 %36
  %call134 = call noalias nonnull i8* @_Znam(i64 %37) #17
  %38 = bitcast i8* %call134 to i32*
  %m_regElemlist135 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 20
  %39 = load i32**, i32*** %m_regElemlist135, align 8, !tbaa !12
  %idxprom136 = sext i32 %i126.0 to i64
  %arrayidx137 = getelementptr inbounds i32*, i32** %39, i64 %idxprom136
  store i32* %38, i32** %arrayidx137, align 8, !tbaa !77
  %call138 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %i126.0)
  store i32 0, i32* %call138, align 4, !tbaa !34
  br label %for.inc139

for.inc139:                                       ; preds = %for.body131
  %inc140 = add nsw i32 %i126.0, 1
  br label %for.cond127, !llvm.loop !78

for.end141:                                       ; preds = %for.cond.cleanup130
  br label %for.cond143

for.cond143:                                      ; preds = %for.inc154, %for.end141
  %i142.0 = phi i32 [ 0, %for.end141 ], [ %inc155, %for.inc154 ]
  %call144 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %40 = load i32, i32* %call144, align 4, !tbaa !34
  %cmp145 = icmp slt i32 %i142.0, %40
  br i1 %cmp145, label %for.body147, label %for.cond.cleanup146

for.cond.cleanup146:                              ; preds = %for.cond143
  br label %for.end156

for.body147:                                      ; preds = %for.cond143
  %call149 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %i142.0)
  %41 = load i32, i32* %call149, align 4, !tbaa !34
  %sub150 = sub nsw i32 %41, 1
  %call151 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %sub150)
  %42 = load i32, i32* %call151, align 4, !tbaa !34
  %inc152 = add nsw i32 %42, 1
  store i32 %inc152, i32* %call151, align 4, !tbaa !34
  %call153 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %this, i32 %sub150, i32 %42)
  store i32 %i142.0, i32* %call153, align 4, !tbaa !34
  br label %for.inc154

for.inc154:                                       ; preds = %for.body147
  %inc155 = add nsw i32 %i142.0, 1
  br label %for.cond143, !llvm.loop !79

for.end156:                                       ; preds = %for.cond.cleanup146
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN6Domain19SetupSymmetryPlanesEi(%class.Domain* %this, i32 %edgeNodes) #1 align 2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc24, %for.inc23 ]
  %nidx.0 = phi i32 [ 0, %entry ], [ %nidx.1, %for.inc23 ]
  %cmp = icmp slt i32 %i.0, %edgeNodes
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end25

for.body:                                         ; preds = %for.cond
  %mul = mul nsw i32 %i.0, %edgeNodes
  %mul2 = mul nsw i32 %mul, %edgeNodes
  %mul3 = mul nsw i32 %i.0, %edgeNodes
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body
  %nidx.1 = phi i32 [ %nidx.0, %for.body ], [ %inc, %for.inc ]
  %j.0 = phi i32 [ 0, %for.body ], [ %inc22, %for.inc ]
  %cmp5 = icmp slt i32 %j.0, %edgeNodes
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end

for.body7:                                        ; preds = %for.cond4
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %0 = load i32, i32* %m_planeLoc, align 4, !tbaa !39
  %cmp8 = icmp eq i32 %0, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %add = add nsw i32 %mul3, %j.0
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 15
  %conv = sext i32 %nidx.1 to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmZ, i64 %conv) #14
  store i32 %add, i32* %call, align 4, !tbaa !34
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %1 = load i32, i32* %m_rowLoc, align 8, !tbaa !38
  %cmp9 = icmp eq i32 %1, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %add11 = add nsw i32 %mul2, %j.0
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 14
  %conv12 = sext i32 %nidx.1 to i64
  %call13 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmY, i64 %conv12) #14
  store i32 %add11, i32* %call13, align 4, !tbaa !34
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %2 = load i32, i32* %m_colLoc, align 4, !tbaa !37
  %cmp15 = icmp eq i32 %2, 0
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end14
  %mul17 = mul nsw i32 %j.0, %edgeNodes
  %add18 = add nsw i32 %mul2, %mul17
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 13
  %conv19 = sext i32 %nidx.1 to i64
  %call20 = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmX, i64 %conv19) #14
  store i32 %add18, i32* %call20, align 4, !tbaa !34
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end14
  %inc = add nsw i32 %nidx.1, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %inc22 = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !80

for.end:                                          ; preds = %for.cond.cleanup6
  br label %for.inc23

for.inc23:                                        ; preds = %for.end
  %inc24 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !81

for.end25:                                        ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain26SetupElementConnectivitiesEi(%class.Domain* %this, i32 %edgeElems) #0 align 2 {
entry:
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 0)
  store i32 0, i32* %call, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %0 = load i32, i32* %call2, align 4, !tbaa !34
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %sub = sub nsw i32 %i.0, 1
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 %i.0)
  store i32 %sub, i32* %call3, align 4, !tbaa !34
  %sub4 = sub nsw i32 %i.0, 1
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %sub4)
  store i32 %i.0, i32* %call5, align 4, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !82

for.end:                                          ; preds = %for.cond.cleanup
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %1 = load i32, i32* %call6, align 4, !tbaa !34
  %sub7 = sub nsw i32 %1, 1
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %2 = load i32, i32* %call8, align 4, !tbaa !34
  %sub9 = sub nsw i32 %2, 1
  %call10 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %sub9)
  store i32 %sub7, i32* %call10, align 4, !tbaa !34
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc23, %for.end
  %i11.0 = phi i32 [ 0, %for.end ], [ %inc24, %for.inc23 ]
  %cmp13 = icmp slt i32 %i11.0, %edgeElems
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  br label %for.end25

for.body15:                                       ; preds = %for.cond12
  %call16 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %i11.0)
  store i32 %i11.0, i32* %call16, align 4, !tbaa !34
  %call17 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %3 = load i32, i32* %call17, align 4, !tbaa !34
  %sub18 = sub nsw i32 %3, %edgeElems
  %add = add nsw i32 %sub18, %i11.0
  %call19 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %4 = load i32, i32* %call19, align 4, !tbaa !34
  %sub20 = sub nsw i32 %4, %edgeElems
  %add21 = add nsw i32 %sub20, %i11.0
  %call22 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %add21)
  store i32 %add, i32* %call22, align 4, !tbaa !34
  br label %for.inc23

for.inc23:                                        ; preds = %for.body15
  %inc24 = add nsw i32 %i11.0, 1
  br label %for.cond12, !llvm.loop !83

for.end25:                                        ; preds = %for.cond.cleanup14
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc36, %for.end25
  %i26.0 = phi i32 [ %edgeElems, %for.end25 ], [ %inc37, %for.inc36 ]
  %call28 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %5 = load i32, i32* %call28, align 4, !tbaa !34
  %cmp29 = icmp slt i32 %i26.0, %5
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond27
  br label %for.end38

for.body31:                                       ; preds = %for.cond27
  %sub32 = sub nsw i32 %i26.0, %edgeElems
  %call33 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %i26.0)
  store i32 %sub32, i32* %call33, align 4, !tbaa !34
  %sub34 = sub nsw i32 %i26.0, %edgeElems
  %call35 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %sub34)
  store i32 %i26.0, i32* %call35, align 4, !tbaa !34
  br label %for.inc36

for.inc36:                                        ; preds = %for.body31
  %inc37 = add nsw i32 %i26.0, 1
  br label %for.cond27, !llvm.loop !84

for.end38:                                        ; preds = %for.cond.cleanup30
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc54, %for.end38
  %i39.0 = phi i32 [ 0, %for.end38 ], [ %inc55, %for.inc54 ]
  %mul = mul nsw i32 %edgeElems, %edgeElems
  %cmp41 = icmp slt i32 %i39.0, %mul
  br i1 %cmp41, label %for.body43, label %for.cond.cleanup42

for.cond.cleanup42:                               ; preds = %for.cond40
  br label %for.end56

for.body43:                                       ; preds = %for.cond40
  %call44 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %i39.0)
  store i32 %i39.0, i32* %call44, align 4, !tbaa !34
  %call45 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %6 = load i32, i32* %call45, align 4, !tbaa !34
  %mul46 = mul nsw i32 %edgeElems, %edgeElems
  %sub47 = sub nsw i32 %6, %mul46
  %add48 = add nsw i32 %sub47, %i39.0
  %call49 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %7 = load i32, i32* %call49, align 4, !tbaa !34
  %mul50 = mul nsw i32 %edgeElems, %edgeElems
  %sub51 = sub nsw i32 %7, %mul50
  %add52 = add nsw i32 %sub51, %i39.0
  %call53 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %add52)
  store i32 %add48, i32* %call53, align 4, !tbaa !34
  br label %for.inc54

for.inc54:                                        ; preds = %for.body43
  %inc55 = add nsw i32 %i39.0, 1
  br label %for.cond40, !llvm.loop !85

for.end56:                                        ; preds = %for.cond.cleanup42
  %mul58 = mul nsw i32 %edgeElems, %edgeElems
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc70, %for.end56
  %i57.0 = phi i32 [ %mul58, %for.end56 ], [ %inc71, %for.inc70 ]
  %call60 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %8 = load i32, i32* %call60, align 4, !tbaa !34
  %cmp61 = icmp slt i32 %i57.0, %8
  br i1 %cmp61, label %for.body63, label %for.cond.cleanup62

for.cond.cleanup62:                               ; preds = %for.cond59
  br label %for.end72

for.body63:                                       ; preds = %for.cond59
  %mul64 = mul nsw i32 %edgeElems, %edgeElems
  %sub65 = sub nsw i32 %i57.0, %mul64
  %call66 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %i57.0)
  store i32 %sub65, i32* %call66, align 4, !tbaa !34
  %mul67 = mul nsw i32 %edgeElems, %edgeElems
  %sub68 = sub nsw i32 %i57.0, %mul67
  %call69 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %sub68)
  store i32 %i57.0, i32* %call69, align 4, !tbaa !34
  br label %for.inc70

for.inc70:                                        ; preds = %for.body63
  %inc71 = add nsw i32 %i57.0, 1
  br label %for.cond59, !llvm.loop !86

for.end72:                                        ; preds = %for.cond.cleanup62
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain23SetupBoundaryConditionsEi(%class.Domain* %this, i32 %edgeElems) #0 align 2 {
entry:
  %ghostIdx = alloca [6 x i32], align 16
  %0 = bitcast [6 x i32]* %ghostIdx to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* %0) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %1 = load i32, i32* %call, align 4, !tbaa !34
  %cmp = icmp slt i32 %i.0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %i.0)
  store i32 0, i32* %call2, align 4, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !87

for.end:                                          ; preds = %for.cond.cleanup
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc8, %for.end
  %i3.0 = phi i32 [ 0, %for.end ], [ %inc9, %for.inc8 ]
  %cmp5 = icmp slt i32 %i3.0, 6
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6

for.cond.cleanup6:                                ; preds = %for.cond4
  br label %for.end10

for.body7:                                        ; preds = %for.cond4
  %idxprom = sext i32 %i3.0 to i64
  %arrayidx = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 %idxprom
  store i32 -2147483648, i32* %arrayidx, align 4, !tbaa !34
  br label %for.inc8

for.inc8:                                         ; preds = %for.body7
  %inc9 = add nsw i32 %i3.0, 1
  br label %for.cond4, !llvm.loop !88

for.end10:                                        ; preds = %for.cond.cleanup6
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %2 = load i32, i32* %call11, align 4, !tbaa !34
  %m_planeMin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 98
  %3 = load i32, i32* %m_planeMin, align 8, !tbaa !61
  %cmp12 = icmp ne i32 %3, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.end10
  %arrayidx13 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 0
  store i32 %2, i32* %arrayidx13, align 16, !tbaa !34
  %call14 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this)
  %4 = load i32, i32* %call14, align 4, !tbaa !34
  %call15 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %5 = load i32, i32* %call15, align 4, !tbaa !34
  %mul = mul nsw i32 %4, %5
  %add = add nsw i32 %2, %mul
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end10
  %pidx.0 = phi i32 [ %add, %if.then ], [ %2, %for.end10 ]
  %m_planeMax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 99
  %6 = load i32, i32* %m_planeMax, align 4, !tbaa !62
  %cmp16 = icmp ne i32 %6, 0
  br i1 %cmp16, label %if.then17, label %if.end23

if.then17:                                        ; preds = %if.end
  %arrayidx18 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 1
  store i32 %pidx.0, i32* %arrayidx18, align 4, !tbaa !34
  %call19 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this)
  %7 = load i32, i32* %call19, align 4, !tbaa !34
  %call20 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %8 = load i32, i32* %call20, align 4, !tbaa !34
  %mul21 = mul nsw i32 %7, %8
  %add22 = add nsw i32 %pidx.0, %mul21
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.end
  %pidx.1 = phi i32 [ %add22, %if.then17 ], [ %pidx.0, %if.end ]
  %m_rowMin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 94
  %9 = load i32, i32* %m_rowMin, align 8, !tbaa !57
  %cmp24 = icmp ne i32 %9, 0
  br i1 %cmp24, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end23
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 2
  store i32 %pidx.1, i32* %arrayidx26, align 8, !tbaa !34
  %call27 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this)
  %10 = load i32, i32* %call27, align 4, !tbaa !34
  %call28 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %11 = load i32, i32* %call28, align 4, !tbaa !34
  %mul29 = mul nsw i32 %10, %11
  %add30 = add nsw i32 %pidx.1, %mul29
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end23
  %pidx.2 = phi i32 [ %add30, %if.then25 ], [ %pidx.1, %if.end23 ]
  %m_rowMax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 95
  %12 = load i32, i32* %m_rowMax, align 4, !tbaa !58
  %cmp32 = icmp ne i32 %12, 0
  br i1 %cmp32, label %if.then33, label %if.end39

if.then33:                                        ; preds = %if.end31
  %arrayidx34 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 3
  store i32 %pidx.2, i32* %arrayidx34, align 4, !tbaa !34
  %call35 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this)
  %13 = load i32, i32* %call35, align 4, !tbaa !34
  %call36 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %14 = load i32, i32* %call36, align 4, !tbaa !34
  %mul37 = mul nsw i32 %13, %14
  %add38 = add nsw i32 %pidx.2, %mul37
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end31
  %pidx.3 = phi i32 [ %add38, %if.then33 ], [ %pidx.2, %if.end31 ]
  %m_colMin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 96
  %15 = load i32, i32* %m_colMin, align 8, !tbaa !59
  %cmp40 = icmp ne i32 %15, 0
  br i1 %cmp40, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end39
  %arrayidx42 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 4
  store i32 %pidx.3, i32* %arrayidx42, align 16, !tbaa !34
  %call43 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this)
  %16 = load i32, i32* %call43, align 4, !tbaa !34
  %call44 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this)
  %17 = load i32, i32* %call44, align 4, !tbaa !34
  %mul45 = mul nsw i32 %16, %17
  %add46 = add nsw i32 %pidx.3, %mul45
  br label %if.end47

if.end47:                                         ; preds = %if.then41, %if.end39
  %pidx.4 = phi i32 [ %add46, %if.then41 ], [ %pidx.3, %if.end39 ]
  %m_colMax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 97
  %18 = load i32, i32* %m_colMax, align 4, !tbaa !60
  %cmp48 = icmp ne i32 %18, 0
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %if.end47
  %arrayidx50 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 5
  store i32 %pidx.4, i32* %arrayidx50, align 4, !tbaa !34
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end47
  br label %for.cond53

for.cond53:                                       ; preds = %for.inc195, %if.end51
  %i52.0 = phi i32 [ 0, %if.end51 ], [ %inc196, %for.inc195 ]
  %cmp54 = icmp slt i32 %i52.0, %edgeElems
  br i1 %cmp54, label %for.body56, label %for.cond.cleanup55

for.cond.cleanup55:                               ; preds = %for.cond53
  br label %for.end197

for.body56:                                       ; preds = %for.cond53
  %mul57 = mul nsw i32 %i52.0, %edgeElems
  %mul58 = mul nsw i32 %mul57, %edgeElems
  %mul59 = mul nsw i32 %i52.0, %edgeElems
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc192, %for.body56
  %j.0 = phi i32 [ 0, %for.body56 ], [ %inc193, %for.inc192 ]
  %cmp61 = icmp slt i32 %j.0, %edgeElems
  br i1 %cmp61, label %for.body63, label %for.cond.cleanup62

for.cond.cleanup62:                               ; preds = %for.cond60
  br label %for.end194

for.body63:                                       ; preds = %for.cond60
  %m_planeLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %19 = load i32, i32* %m_planeLoc, align 4, !tbaa !39
  %cmp64 = icmp eq i32 %19, 0
  br i1 %cmp64, label %if.then65, label %if.else

if.then65:                                        ; preds = %for.body63
  %add66 = add nsw i32 %mul59, %j.0
  %call67 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %add66)
  %20 = load i32, i32* %call67, align 4, !tbaa !34
  %or = or i32 %20, 4096
  store i32 %or, i32* %call67, align 4, !tbaa !34
  br label %if.end76

if.else:                                          ; preds = %for.body63
  %add68 = add nsw i32 %mul59, %j.0
  %call69 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %add68)
  %21 = load i32, i32* %call69, align 4, !tbaa !34
  %or70 = or i32 %21, 16384
  store i32 %or70, i32* %call69, align 4, !tbaa !34
  %arrayidx71 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 0
  %22 = load i32, i32* %arrayidx71, align 16, !tbaa !34
  %add72 = add nsw i32 %22, %mul59
  %add73 = add nsw i32 %add72, %j.0
  %add74 = add nsw i32 %mul59, %j.0
  %call75 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %add74)
  store i32 %add73, i32* %call75, align 4, !tbaa !34
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then65
  %m_planeLoc77 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 83
  %23 = load i32, i32* %m_planeLoc77, align 4, !tbaa !39
  %m_tp = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %24 = load i32, i32* %m_tp, align 8, !tbaa !35
  %sub = sub nsw i32 %24, 1
  %cmp78 = icmp eq i32 %23, %sub
  br i1 %cmp78, label %if.then79, label %if.else87

if.then79:                                        ; preds = %if.end76
  %add80 = add nsw i32 %mul59, %j.0
  %call81 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %25 = load i32, i32* %call81, align 4, !tbaa !34
  %add82 = add nsw i32 %add80, %25
  %mul83 = mul nsw i32 %edgeElems, %edgeElems
  %sub84 = sub nsw i32 %add82, %mul83
  %call85 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %sub84)
  %26 = load i32, i32* %call85, align 4, !tbaa !34
  %or86 = or i32 %26, 65536
  store i32 %or86, i32* %call85, align 4, !tbaa !34
  br label %if.end104

if.else87:                                        ; preds = %if.end76
  %add88 = add nsw i32 %mul59, %j.0
  %call89 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %27 = load i32, i32* %call89, align 4, !tbaa !34
  %add90 = add nsw i32 %add88, %27
  %mul91 = mul nsw i32 %edgeElems, %edgeElems
  %sub92 = sub nsw i32 %add90, %mul91
  %call93 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %sub92)
  %28 = load i32, i32* %call93, align 4, !tbaa !34
  %or94 = or i32 %28, 131072
  store i32 %or94, i32* %call93, align 4, !tbaa !34
  %arrayidx95 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 1
  %29 = load i32, i32* %arrayidx95, align 4, !tbaa !34
  %add96 = add nsw i32 %29, %mul59
  %add97 = add nsw i32 %add96, %j.0
  %add98 = add nsw i32 %mul59, %j.0
  %call99 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %this)
  %30 = load i32, i32* %call99, align 4, !tbaa !34
  %add100 = add nsw i32 %add98, %30
  %mul101 = mul nsw i32 %edgeElems, %edgeElems
  %sub102 = sub nsw i32 %add100, %mul101
  %call103 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %sub102)
  store i32 %add97, i32* %call103, align 4, !tbaa !34
  br label %if.end104

if.end104:                                        ; preds = %if.else87, %if.then79
  %m_rowLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %31 = load i32, i32* %m_rowLoc, align 8, !tbaa !38
  %cmp105 = icmp eq i32 %31, 0
  br i1 %cmp105, label %if.then106, label %if.else110

if.then106:                                       ; preds = %if.end104
  %add107 = add nsw i32 %mul58, %j.0
  %call108 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %add107)
  %32 = load i32, i32* %call108, align 4, !tbaa !34
  %or109 = or i32 %32, 64
  store i32 %or109, i32* %call108, align 4, !tbaa !34
  br label %if.end119

if.else110:                                       ; preds = %if.end104
  %add111 = add nsw i32 %mul58, %j.0
  %call112 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %add111)
  %33 = load i32, i32* %call112, align 4, !tbaa !34
  %or113 = or i32 %33, 256
  store i32 %or113, i32* %call112, align 4, !tbaa !34
  %arrayidx114 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 2
  %34 = load i32, i32* %arrayidx114, align 8, !tbaa !34
  %add115 = add nsw i32 %34, %mul59
  %add116 = add nsw i32 %add115, %j.0
  %add117 = add nsw i32 %mul58, %j.0
  %call118 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %add117)
  store i32 %add116, i32* %call118, align 4, !tbaa !34
  br label %if.end119

if.end119:                                        ; preds = %if.else110, %if.then106
  %m_rowLoc120 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 82
  %35 = load i32, i32* %m_rowLoc120, align 8, !tbaa !38
  %m_tp121 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %36 = load i32, i32* %m_tp121, align 8, !tbaa !35
  %sub122 = sub nsw i32 %36, 1
  %cmp123 = icmp eq i32 %35, %sub122
  br i1 %cmp123, label %if.then124, label %if.else131

if.then124:                                       ; preds = %if.end119
  %add125 = add nsw i32 %mul58, %j.0
  %mul126 = mul nsw i32 %edgeElems, %edgeElems
  %add127 = add nsw i32 %add125, %mul126
  %sub128 = sub nsw i32 %add127, %edgeElems
  %call129 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %sub128)
  %37 = load i32, i32* %call129, align 4, !tbaa !34
  %or130 = or i32 %37, 1024
  store i32 %or130, i32* %call129, align 4, !tbaa !34
  br label %if.end146

if.else131:                                       ; preds = %if.end119
  %add132 = add nsw i32 %mul58, %j.0
  %mul133 = mul nsw i32 %edgeElems, %edgeElems
  %add134 = add nsw i32 %add132, %mul133
  %sub135 = sub nsw i32 %add134, %edgeElems
  %call136 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %sub135)
  %38 = load i32, i32* %call136, align 4, !tbaa !34
  %or137 = or i32 %38, 2048
  store i32 %or137, i32* %call136, align 4, !tbaa !34
  %arrayidx138 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 3
  %39 = load i32, i32* %arrayidx138, align 4, !tbaa !34
  %add139 = add nsw i32 %39, %mul59
  %add140 = add nsw i32 %add139, %j.0
  %add141 = add nsw i32 %mul58, %j.0
  %mul142 = mul nsw i32 %edgeElems, %edgeElems
  %add143 = add nsw i32 %add141, %mul142
  %sub144 = sub nsw i32 %add143, %edgeElems
  %call145 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %sub144)
  store i32 %add140, i32* %call145, align 4, !tbaa !34
  br label %if.end146

if.end146:                                        ; preds = %if.else131, %if.then124
  %m_colLoc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %40 = load i32, i32* %m_colLoc, align 4, !tbaa !37
  %cmp147 = icmp eq i32 %40, 0
  br i1 %cmp147, label %if.then148, label %if.else153

if.then148:                                       ; preds = %if.end146
  %mul149 = mul nsw i32 %j.0, %edgeElems
  %add150 = add nsw i32 %mul58, %mul149
  %call151 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %add150)
  %41 = load i32, i32* %call151, align 4, !tbaa !34
  %or152 = or i32 %41, 1
  store i32 %or152, i32* %call151, align 4, !tbaa !34
  br label %if.end164

if.else153:                                       ; preds = %if.end146
  %mul154 = mul nsw i32 %j.0, %edgeElems
  %add155 = add nsw i32 %mul58, %mul154
  %call156 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %add155)
  %42 = load i32, i32* %call156, align 4, !tbaa !34
  %or157 = or i32 %42, 4
  store i32 %or157, i32* %call156, align 4, !tbaa !34
  %arrayidx158 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 4
  %43 = load i32, i32* %arrayidx158, align 16, !tbaa !34
  %add159 = add nsw i32 %43, %mul59
  %add160 = add nsw i32 %add159, %j.0
  %mul161 = mul nsw i32 %j.0, %edgeElems
  %add162 = add nsw i32 %mul58, %mul161
  %call163 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 %add162)
  store i32 %add160, i32* %call163, align 4, !tbaa !34
  br label %if.end164

if.end164:                                        ; preds = %if.else153, %if.then148
  %m_colLoc165 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 81
  %44 = load i32, i32* %m_colLoc165, align 4, !tbaa !37
  %m_tp166 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 84
  %45 = load i32, i32* %m_tp166, align 8, !tbaa !35
  %sub167 = sub nsw i32 %45, 1
  %cmp168 = icmp eq i32 %44, %sub167
  br i1 %cmp168, label %if.then169, label %if.else176

if.then169:                                       ; preds = %if.end164
  %mul170 = mul nsw i32 %j.0, %edgeElems
  %add171 = add nsw i32 %mul58, %mul170
  %add172 = add nsw i32 %add171, %edgeElems
  %sub173 = sub nsw i32 %add172, 1
  %call174 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %sub173)
  %46 = load i32, i32* %call174, align 4, !tbaa !34
  %or175 = or i32 %46, 16
  store i32 %or175, i32* %call174, align 4, !tbaa !34
  br label %if.end191

if.else176:                                       ; preds = %if.end164
  %mul177 = mul nsw i32 %j.0, %edgeElems
  %add178 = add nsw i32 %mul58, %mul177
  %add179 = add nsw i32 %add178, %edgeElems
  %sub180 = sub nsw i32 %add179, 1
  %call181 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %sub180)
  %47 = load i32, i32* %call181, align 4, !tbaa !34
  %or182 = or i32 %47, 32
  store i32 %or182, i32* %call181, align 4, !tbaa !34
  %arrayidx183 = getelementptr inbounds [6 x i32], [6 x i32]* %ghostIdx, i64 0, i64 5
  %48 = load i32, i32* %arrayidx183, align 4, !tbaa !34
  %add184 = add nsw i32 %48, %mul59
  %add185 = add nsw i32 %add184, %j.0
  %mul186 = mul nsw i32 %j.0, %edgeElems
  %add187 = add nsw i32 %mul58, %mul186
  %add188 = add nsw i32 %add187, %edgeElems
  %sub189 = sub nsw i32 %add188, 1
  %call190 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %sub189)
  store i32 %add185, i32* %call190, align 4, !tbaa !34
  br label %if.end191

if.end191:                                        ; preds = %if.else176, %if.then169
  br label %for.inc192

for.inc192:                                       ; preds = %if.end191
  %inc193 = add nsw i32 %j.0, 1
  br label %for.cond60, !llvm.loop !89

for.end194:                                       ; preds = %for.cond.cleanup62
  br label %for.inc195

for.inc195:                                       ; preds = %for.end194
  %inc196 = add nsw i32 %i52.0, 1
  br label %for.cond53, !llvm.loop !90

for.end197:                                       ; preds = %for.cond.cleanup55
  %49 = bitcast [6 x i32]* %ghostIdx to i8*
  call void @llvm.lifetime.end.p0i8(i64 24, i8* %49) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_dtfixed = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 73
  ret double* %m_dtfixed
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_stoptime = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 79
  ret double* %m_stoptime
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_deltatimemultlb = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 76
  ret double* %m_deltatimemultlb
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_deltatimemultub = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 77
  ret double* %m_deltatimemultub
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_dtcourant = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 70
  ret double* %m_dtcourant
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_dthydro = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 71
  ret double* %m_dthydro
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_dtmax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 78
  ret double* %m_dtmax
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_time = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 74
  ret double* %m_time
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_cycle = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 72
  ret i32* %m_cycle
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZN6Domain8nodelistEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 21
  %mul = mul nsw i32 8, %idx
  %conv = sext i32 %mul to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_nodelist, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 0
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_x, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 1
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_y, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 2
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_z, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 44
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_volo, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 50
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_elemMass, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind readnone
declare dso_local double @cbrt(double) #5

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_deltatime = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 75
  ret double* %m_deltatime
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8, !tbaa !91
  %2 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load double*, double** %_M_finish, align 8, !tbaa !94
  %4 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %4) #14
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %1, double* %3, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %5) #14
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  call void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %9) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @__clang_call_terminate(i8* %7) #19
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %2 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %4 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %4) #14
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %1, i32* %3, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %5 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %5) #14
  ret void

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          catch i8* null
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %9) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @__clang_call_terminate(i8* %7) #19
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #1 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__first, i32* %__last, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #7 comdat {
entry:
  call void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8, !tbaa !99
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load i32*, i32** %_M_start4, align 8, !tbaa !95
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %this, i32* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  call void bitcast (void (%"class.std::allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIiED2Ev to void (%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl5) #14
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  call void bitcast (void (%"class.std::allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIiED2Ev to void (%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl6) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @__clang_call_terminate(i8* %4) #19
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) #8 comdat {
  %2 = call i8* @__cxa_begin_catch(i8* %0) #14
  call void @_ZSt9terminatev() #19
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*)

declare dso_local void @_ZSt9terminatev()

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %this, i32* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne i32* %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0, i32* %__p, i64 %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiED2Ev(%"class.std::allocator.2"* %this) unnamed_addr #1 comdat align 2 {
entry:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a, i32* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %__a to %"class.std::allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.std::allocator.2"* %0, i32* %__p, i64 %__n)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%"class.std::allocator.2"* %this, i32* %__p, i64 %0) #1 comdat align 2 {
entry:
  %1 = bitcast i32* %__p to i8*
  call void @_ZdlPv(i8* %1) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) #9

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(i32* %__first, i32* %__last) #7 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %__first, i32* %__last)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(i32* %0, i32* %1) #1 comdat align 2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #1 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %__first, double* %__last, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #7 comdat {
entry:
  call void @_ZSt8_DestroyIPdEvT_S1_(double* %__first, double* %__last)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEED2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %0 = load double*, double** %_M_start, align 8, !tbaa !91
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 2
  %1 = load double*, double** %_M_end_of_storage, align 8, !tbaa !100
  %_M_impl3 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  %_M_start4 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl3, i32 0, i32 0
  %2 = load double*, double** %_M_start4, align 8, !tbaa !91
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this, double* %0, i64 %sub.ptr.div)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  call void bitcast (void (%"class.std::allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIdED2Ev to void (%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl5) #14
  ret void

lpad:                                             ; preds = %entry
  %3 = landingpad { i8*, i32 }
          catch i8* null
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %_M_impl6 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  call void bitcast (void (%"class.std::allocator.2"*)* @_ZN9__gnu_cxx13new_allocatorIdED2Ev to void (%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"*)*)(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl6) #14
  br label %terminate.handler

terminate.handler:                                ; preds = %lpad
  call void @__clang_call_terminate(i8* %4) #19
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %this, double* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %tobool = icmp ne double* %__p, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  call void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0, double* %__p, i64 %__n)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIdED2Ev(%"class.std::allocator.2"* %this) unnamed_addr #1 comdat align 2 {
entry:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a, double* %__p, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %__a to %"class.std::allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.std::allocator.2"* %0, double* %__p, i64 %__n)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm(%"class.std::allocator.2"* %this, double* %__p, i64 %0) #1 comdat align 2 {
entry:
  %1 = bitcast double* %__p to i8*
  call void @_ZdlPv(i8* %1) #14
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPdEvT_S1_(double* %__first, double* %__last) #7 comdat {
entry:
  call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double* %__first, double* %__last)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_(double* %0, double* %1) #1 comdat align 2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %this, i64 %__n) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8, !tbaa !91
  %add.ptr = getelementptr inbounds double, double* %1, i64 %__n
  ret double* %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %this, i64 %__n) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %__n
  ret i32* %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 28
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_elemBC, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_sizeX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 85
  ret i32* %m_sizeX
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_sizeY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 86
  ret i32* %m_sizeY
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_sizeZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 87
  ret i32* %m_sizeZ
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 26
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lzetam, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 27
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lzetap, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 24
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_letam, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 25
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_letap, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 22
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lxim, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 23
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_lxip, i64 %conv) #14
  ret i32* %call
}

; Function Attrs: nounwind
declare dso_local void @srand(i32) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_numReg = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 16
  ret i32* %m_numReg
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain10regNumListEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_regNumList = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 19
  %0 = load i32*, i32** %m_regNumList, align 8, !tbaa !11
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  ret i32* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 18
  %0 = load i32*, i32** %m_regElemSize, align 8, !tbaa !2
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  ret i32* %arrayidx
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_(i32 %__x, i32 %__y) #10 comdat {
entry:
  %conv = sitofp i32 %__x to double
  %conv1 = sitofp i32 %__y to double
  %call = call double @pow(double %conv, double %conv1) #14
  ret double %call
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #6

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) #9

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %this, i32 %r, i32 %idx) #1 comdat align 2 {
entry:
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 20
  %0 = load i32**, i32*** %m_regElemlist, align 8, !tbaa !12
  %idxprom = sext i32 %r to i64
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 %idxprom
  %1 = load i32*, i32** %arrayidx, align 8, !tbaa !77
  %idxprom2 = sext i32 %idx to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %1, i64 %idxprom2
  ret i32* %arrayidx3
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #6

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE6resizeEm(%"class.std::vector.0"* %this, i64 %__new_size) #0 comdat align 2 {
entry:
  %call = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  %cmp = icmp ugt i64 %__new_size, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  %sub = sub i64 %__new_size, %call2
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* %this, i64 %sub)
  br label %if.end6

if.else:                                          ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  %cmp4 = icmp ult i64 %__new_size, %call3
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %__new_size
  call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.0"* %this, i32* %add.ptr) #14
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %2 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(%"class.std::vector.0"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %if.then, label %if.end54

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 2
  %1 = load i32*, i32** %_M_end_of_storage, align 8, !tbaa !99
  %2 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %sub.ptr.lhs.cast = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp3 = icmp uge i64 %sub.ptr.div, %__n
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %4 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %4, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl5, i32 0, i32 1
  %5 = load i32*, i32** %_M_finish6, align 8, !tbaa !98
  %6 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %6) #14
  %call7 = call i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %5, i64 %__n, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
  %7 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %7, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl8, i32 0, i32 1
  store i32* %call7, i32** %_M_finish9, align 8, !tbaa !98
  br label %if.end53

if.else:                                          ; preds = %if.then
  %call10 = call i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %call11 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  %8 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call12 = call i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %8, i64 %call10)
  %add.ptr = getelementptr inbounds i32, i32* %call12, i64 %call11
  %9 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call13 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %9) #14
  %call14 = invoke i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %add.ptr, i64 %__n, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call13)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %add.ptr15 = getelementptr inbounds i32, i32* %call12, i64 %call11
  %10 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %10, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl16, i32 0, i32 0
  %11 = load i32*, i32** %_M_start, align 8, !tbaa !95
  %12 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %12, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl17, i32 0, i32 1
  %13 = load i32*, i32** %_M_finish18, align 8, !tbaa !98
  %14 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call19 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %14) #14
  %call21 = invoke i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %11, i32* %13, i32* %call12, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call19)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %invoke.cont
  br label %try.cont

lpad:                                             ; preds = %invoke.cont, %if.else
  %__destroy_from.0 = phi i32* [ %add.ptr15, %invoke.cont ], [ null, %if.else ]
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  br label %catch

catch:                                            ; preds = %lpad
  %18 = call i8* @__cxa_begin_catch(i8* %16) #14
  %tobool = icmp ne i32* %__destroy_from.0, null
  br i1 %tobool, label %if.then22, label %if.end

if.then22:                                        ; preds = %catch
  %add.ptr23 = getelementptr inbounds i32, i32* %__destroy_from.0, i64 %__n
  %19 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call24 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %19) #14
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__destroy_from.0, i32* %add.ptr23, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call24)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %if.then22
  br label %if.end

lpad25:                                           ; preds = %invoke.cont27, %if.end, %if.then22
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont28 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont26, %catch
  %23 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %23, i32* %call12, i64 %call10)
          to label %invoke.cont27 unwind label %lpad25

invoke.cont27:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #21
          to label %unreachable unwind label %lpad25

invoke.cont28:                                    ; preds = %lpad25
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont20
  %24 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %24, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl29, i32 0, i32 0
  %25 = load i32*, i32** %_M_start30, align 8, !tbaa !95
  %26 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %26, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %27 = load i32*, i32** %_M_finish32, align 8, !tbaa !98
  %28 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call33 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %28) #14
  call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %25, i32* %27, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call33)
  %29 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %30 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %30, i32 0, i32 0
  %_M_start35 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl34, i32 0, i32 0
  %31 = load i32*, i32** %_M_start35, align 8, !tbaa !95
  %32 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %32, i32 0, i32 0
  %_M_end_of_storage37 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl36, i32 0, i32 2
  %33 = load i32*, i32** %_M_end_of_storage37, align 8, !tbaa !99
  %34 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl38 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %34, i32 0, i32 0
  %_M_start39 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl38, i32 0, i32 0
  %35 = load i32*, i32** %_M_start39, align 8, !tbaa !95
  %sub.ptr.lhs.cast40 = ptrtoint i32* %33 to i64
  %sub.ptr.rhs.cast41 = ptrtoint i32* %35 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub.ptr.div43 = sdiv exact i64 %sub.ptr.sub42, 4
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%"struct.std::_Vector_base.1"* %29, i32* %31, i64 %sub.ptr.div43)
  %36 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %36, i32 0, i32 0
  %_M_start45 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl44, i32 0, i32 0
  store i32* %call12, i32** %_M_start45, align 8, !tbaa !95
  %add.ptr46 = getelementptr inbounds i32, i32* %call12, i64 %call11
  %add.ptr47 = getelementptr inbounds i32, i32* %add.ptr46, i64 %__n
  %37 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl48 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %37, i32 0, i32 0
  %_M_finish49 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl48, i32 0, i32 1
  store i32* %add.ptr47, i32** %_M_finish49, align 8, !tbaa !98
  %add.ptr50 = getelementptr inbounds i32, i32* %call12, i64 %call10
  %38 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl51 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %38, i32 0, i32 0
  %_M_end_of_storage52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl51, i32 0, i32 2
  store i32* %add.ptr50, i32** %_M_end_of_storage52, align 8, !tbaa !99
  br label %if.end53

if.end53:                                         ; preds = %try.cont, %if.then4
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont28
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %21, 0
  %lpad.val56 = insertvalue { i8*, i32 } %lpad.val, i32 %22, 1
  resume { i8*, i32 } %lpad.val56

terminate.lpad:                                   ; preds = %lpad25
  %39 = landingpad { i8*, i32 }
          catch i8* null
  %40 = extractvalue { i8*, i32 } %39, 0
  call void @__clang_call_terminate(i8* %40) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont27
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(%"class.std::vector.0"* %this, i32* %__pos) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish, align 8, !tbaa !98
  %2 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %2) #14
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(i32* %__pos, i32* %1, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %3, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store i32* %__pos, i32** %_M_finish3, align 8, !tbaa !98
  ret void

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #19
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(i32* %__first, i64 %__n, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #7 comdat {
entry:
  %call = call i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %__first, i64 %__n)
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%"class.std::vector.0"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !101
  %call = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this) #14
  %call2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !101
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* %__s) #21
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  %1 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %call4 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  store i64 %call4, i64* %ref.tmp, align 8, !tbaa !101
  %call5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8, !tbaa !101
  %add = add i64 %call3, %2
  %3 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #14
  %call6 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(%"class.std::vector.0"* %this) #14
  %cmp7 = icmp ult i64 %add, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this) #14
  %cmp9 = icmp ugt i64 %add, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this) #14
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%"struct.std::_Vector_base.1"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  %call = call i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0, i64 %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32* [ %call, %cond.true ], [ null, %cond.false ]
  ret i32* %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(i32* %__first, i32* %__last, i32* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__alloc) #7 comdat {
entry:
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator.5", align 8
  %call = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %__first)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %call2 = call i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %__last)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp1, i32 0, i32 0
  store i32* %call2, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %0 = load i32*, i32** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp1, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive5, align 8
  %call6 = call i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %0, i32* %1, i32* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__alloc)
  ret i32* %call6
}

declare dso_local void @__cxa_end_catch()

declare dso_local void @__cxa_rethrow()

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(i32* %__i) #7 comdat {
entry:
  %retval = alloca %"class.std::move_iterator.5", align 8
  call void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.5"* %retval, i32* %__i)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %retval, i32 0, i32 0
  %0 = load i32*, i32** %coerce.dive, align 8
  ret i32* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(i32* %__first.coerce, i32* %__last.coerce, i32* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #7 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  %1 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false), !tbaa.struct !103
  %3 = bitcast %"class.std::move_iterator.5"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp2, i32 0, i32 0
  %6 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %5, i32* %6, i32* %__result)
  ret i32* %call
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #7 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  %0 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !103
  %2 = bitcast %"class.std::move_iterator.5"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %4 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp2, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %4, i32* %5, i32* %__result)
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #0 comdat align 2 {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  %0 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !103
  %2 = bitcast %"class.std::move_iterator.5"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %4 = load i32*, i32** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp2, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call = call i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %4, i32* %5, i32* %__result)
  ret i32* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(i32* %__first.coerce, i32* %__last.coerce, i32* %__result) #7 comdat {
entry:
  %__first = alloca %"class.std::move_iterator.5", align 8
  %__last = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp = alloca %"class.std::move_iterator.5", align 8
  %agg.tmp3 = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__first, i32 0, i32 0
  store i32* %__first.coerce, i32** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__last, i32 0, i32 0
  store i32* %__last.coerce, i32** %coerce.dive1, align 8
  %0 = bitcast %"class.std::move_iterator.5"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator.5"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive2 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp, i32 0, i32 0
  %2 = load i32*, i32** %coerce.dive2, align 8
  %call = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %2)
  %3 = bitcast %"class.std::move_iterator.5"* %agg.tmp3 to i8*
  %4 = bitcast %"class.std::move_iterator.5"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %agg.tmp3, i32 0, i32 0
  %5 = load i32*, i32** %coerce.dive4, align 8
  %call5 = call i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %5)
  %call6 = call i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call5, i32* %__result)
  ret i32* %call6
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(i32* %__it.coerce) #0 comdat {
entry:
  %__it = alloca %"class.std::move_iterator.5", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %__it, i32 0, i32 0
  store i32* %__it.coerce, i32** %coerce.dive, align 8
  %call = call i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.5"* %__it)
  %call1 = call i32* @_ZSt12__miter_baseIPiET_S1_(i32* %call)
  ret i32* %call1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
entry:
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__first)
  %call1 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__last)
  %call2 = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__result)
  %call3 = call i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %call, i32* %call1, i32* %call2)
  ret i32* %call3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__it) #10 comdat {
entry:
  ret i32* %__it
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(i32* %__first, i32* %__last, i32* %__result) #7 comdat {
entry:
  %call = call i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result)
  ret i32* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(i32* %__first, i32* %__last, i32* %__result) #1 comdat align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint i32* %__last to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %tobool = icmp ne i64 %sub.ptr.div, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast i32* %__result to i8*
  %1 = bitcast i32* %__first to i8*
  %mul = mul i64 4, %sub.ptr.div
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 %1, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr inbounds i32, i32* %__result, i64 %sub.ptr.div
  ret i32* %add.ptr
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt13move_iteratorIPiE4baseEv(%"class.std::move_iterator.5"* %this) #1 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %this, i32 0, i32 0
  %0 = load i32*, i32** %_M_current, align 8, !tbaa !104
  ret i32* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt12__miter_baseIPiET_S1_(i32* %__it) #10 comdat {
entry:
  ret i32* %__it
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPiEC2ES0_(%"class.std::move_iterator.5"* %this, i32* %__i) unnamed_addr #1 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %this, i32 0, i32 0
  store i32* %__i, i32** %_M_current, align 8, !tbaa !104
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %__a to %"class.std::allocator.2"*
  %call = call i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.std::allocator.2"* %0, i64 %__n, i8* null)
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%"class.std::allocator.2"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.std::allocator.2"* %this) #14
  %cmp = icmp ugt i64 %__n, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #21
  unreachable

if.end:                                           ; preds = %entry
  %mul = mul i64 %__n, 4
  %call2 = call noalias nonnull i8* @_Znwm(i64 %mul) #22
  %1 = bitcast i8* %call2 to i32*
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.std::allocator.2"* %this) #1 comdat align 2 {
entry:
  ret i64 4611686018427387903
}

; Function Attrs: noreturn
declare dso_local void @_ZSt17__throw_bad_allocv() #11

; Function Attrs: nobuiltin allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) #4

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%"class.std::vector.0"* %this) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %0) #14
  %call2 = call i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call) #14
  ret i64 %call2
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) #11

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %__a, i64* nonnull align 8 dereferenceable(8) %__b) #10 comdat {
entry:
  %0 = load i64, i64* %__a, align 8, !tbaa !101
  %1 = load i64, i64* %__b, align 8, !tbaa !101
  %cmp = icmp ult i64 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i64* [ %__b, %if.then ], [ %__a, %if.end ]
  ret i64* %retval.0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base.1"* %this) #1 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %__a to %"class.std::allocator.2"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%"class.std::allocator.2"* %0) #14
  ret i64 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt25__uninitialized_default_nIPimET_S1_T0_(i32* %__first, i64 %__n) #7 comdat {
entry:
  %call = call i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %__first, i64 %__n)
  ret i32* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i32* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(i32* %__first, i64 %__n) #0 comdat align 2 {
entry:
  %ref.tmp = alloca i32, align 4
  %0 = bitcast i32* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  store i32 0, i32* %ref.tmp, align 4, !tbaa !34
  %call = call i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %ref.tmp)
  %1 = bitcast i32* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %1) #14
  ret i32* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local i32* @_ZSt6fill_nIPimiET_S1_T0_RKT1_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value) #7 comdat {
entry:
  %call = call i32* @_ZSt12__niter_baseIPiET_S1_(i32* %__first)
  %call1 = call i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %call, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value)
  ret i32* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32* @_ZSt10__fill_n_aIPimiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(i32* %__first, i64 %__n, i32* nonnull align 4 dereferenceable(4) %__value) #10 comdat {
entry:
  %0 = load i32, i32* %__value, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__niter.0 = phi i64 [ %__n, %entry ], [ %dec, %for.inc ]
  %__first.addr.0 = phi i32* [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ugt i64 %__niter.0, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  store i32 %0, i32* %__first.addr.0, align 4, !tbaa !34
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add i64 %__niter.0, -1
  %incdec.ptr = getelementptr inbounds i32, i32* %__first.addr.0, i32 1
  br label %for.cond, !llvm.loop !106

for.end:                                          ; preds = %for.cond.cleanup
  ret i32* %__first.addr.0
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE6resizeEm(%"class.std::vector"* %this, i64 %__new_size) #0 comdat align 2 {
entry:
  %call = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  %cmp = icmp ugt i64 %__new_size, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  %sub = sub i64 %__new_size, %call2
  call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* %this, i64 %sub)
  br label %if.end6

if.else:                                          ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  %cmp4 = icmp ult i64 %__new_size, %call3
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.else
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  %1 = load double*, double** %_M_start, align 8, !tbaa !91
  %add.ptr = getelementptr inbounds double, double* %1, i64 %__new_size
  call void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this, double* %add.ptr) #14
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load double*, double** %_M_finish, align 8, !tbaa !94
  %2 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 0
  %3 = load double*, double** %_M_start, align 8, !tbaa !91
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  ret i64 %sub.ptr.div
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(%"class.std::vector"* %this, i64 %__n) #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %if.then, label %if.end54

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 2
  %1 = load double*, double** %_M_end_of_storage, align 8, !tbaa !100
  %2 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %2, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  %3 = load double*, double** %_M_finish, align 8, !tbaa !94
  %sub.ptr.lhs.cast = ptrtoint double* %1 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %cmp3 = icmp uge i64 %sub.ptr.div, %__n
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  %4 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl5 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %4, i32 0, i32 0
  %_M_finish6 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl5, i32 0, i32 1
  %5 = load double*, double** %_M_finish6, align 8, !tbaa !94
  %6 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %6) #14
  %call7 = call double* @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(double* %5, i64 %__n, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
  %7 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl8 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %7, i32 0, i32 0
  %_M_finish9 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl8, i32 0, i32 1
  store double* %call7, double** %_M_finish9, align 8, !tbaa !94
  br label %if.end53

if.else:                                          ; preds = %if.then
  %call10 = call i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %call11 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  %8 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call12 = call double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %8, i64 %call10)
  %add.ptr = getelementptr inbounds double, double* %call12, i64 %call11
  %9 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call13 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %9) #14
  %call14 = invoke double* @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(double* %add.ptr, i64 %__n, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call13)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.else
  %add.ptr15 = getelementptr inbounds double, double* %call12, i64 %call11
  %10 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl16 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %10, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl16, i32 0, i32 0
  %11 = load double*, double** %_M_start, align 8, !tbaa !91
  %12 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl17 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %12, i32 0, i32 0
  %_M_finish18 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl17, i32 0, i32 1
  %13 = load double*, double** %_M_finish18, align 8, !tbaa !94
  %14 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call19 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %14) #14
  %call21 = invoke double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %11, double* %13, double* %call12, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call19)
          to label %invoke.cont20 unwind label %lpad

invoke.cont20:                                    ; preds = %invoke.cont
  br label %try.cont

lpad:                                             ; preds = %invoke.cont, %if.else
  %__destroy_from.0 = phi double* [ %add.ptr15, %invoke.cont ], [ null, %if.else ]
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  br label %catch

catch:                                            ; preds = %lpad
  %18 = call i8* @__cxa_begin_catch(i8* %16) #14
  %tobool = icmp ne double* %__destroy_from.0, null
  br i1 %tobool, label %if.then22, label %if.end

if.then22:                                        ; preds = %catch
  %add.ptr23 = getelementptr inbounds double, double* %__destroy_from.0, i64 %__n
  %19 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call24 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %19) #14
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %__destroy_from.0, double* %add.ptr23, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call24)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %if.then22
  br label %if.end

lpad25:                                           ; preds = %invoke.cont27, %if.end, %if.then22
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = extractvalue { i8*, i32 } %20, 0
  %22 = extractvalue { i8*, i32 } %20, 1
  invoke void @__cxa_end_catch()
          to label %invoke.cont28 unwind label %terminate.lpad

if.end:                                           ; preds = %invoke.cont26, %catch
  %23 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  invoke void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %23, double* %call12, i64 %call10)
          to label %invoke.cont27 unwind label %lpad25

invoke.cont27:                                    ; preds = %if.end
  invoke void @__cxa_rethrow() #21
          to label %unreachable unwind label %lpad25

invoke.cont28:                                    ; preds = %lpad25
  br label %eh.resume

try.cont:                                         ; preds = %invoke.cont20
  %24 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl29 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %24, i32 0, i32 0
  %_M_start30 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl29, i32 0, i32 0
  %25 = load double*, double** %_M_start30, align 8, !tbaa !91
  %26 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl31 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %26, i32 0, i32 0
  %_M_finish32 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl31, i32 0, i32 1
  %27 = load double*, double** %_M_finish32, align 8, !tbaa !94
  %28 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call33 = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %28) #14
  call void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %25, double* %27, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call33)
  %29 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %30 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl34 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %30, i32 0, i32 0
  %_M_start35 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl34, i32 0, i32 0
  %31 = load double*, double** %_M_start35, align 8, !tbaa !91
  %32 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl36 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %32, i32 0, i32 0
  %_M_end_of_storage37 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl36, i32 0, i32 2
  %33 = load double*, double** %_M_end_of_storage37, align 8, !tbaa !100
  %34 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl38 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %34, i32 0, i32 0
  %_M_start39 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl38, i32 0, i32 0
  %35 = load double*, double** %_M_start39, align 8, !tbaa !91
  %sub.ptr.lhs.cast40 = ptrtoint double* %33 to i64
  %sub.ptr.rhs.cast41 = ptrtoint double* %35 to i64
  %sub.ptr.sub42 = sub i64 %sub.ptr.lhs.cast40, %sub.ptr.rhs.cast41
  %sub.ptr.div43 = sdiv exact i64 %sub.ptr.sub42, 8
  call void @_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm(%"struct.std::_Vector_base"* %29, double* %31, i64 %sub.ptr.div43)
  %36 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl44 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %36, i32 0, i32 0
  %_M_start45 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl44, i32 0, i32 0
  store double* %call12, double** %_M_start45, align 8, !tbaa !91
  %add.ptr46 = getelementptr inbounds double, double* %call12, i64 %call11
  %add.ptr47 = getelementptr inbounds double, double* %add.ptr46, i64 %__n
  %37 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl48 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %37, i32 0, i32 0
  %_M_finish49 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl48, i32 0, i32 1
  store double* %add.ptr47, double** %_M_finish49, align 8, !tbaa !94
  %add.ptr50 = getelementptr inbounds double, double* %call12, i64 %call10
  %38 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl51 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %38, i32 0, i32 0
  %_M_end_of_storage52 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl51, i32 0, i32 2
  store double* %add.ptr50, double** %_M_end_of_storage52, align 8, !tbaa !100
  br label %if.end53

if.end53:                                         ; preds = %try.cont, %if.then4
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %entry
  ret void

eh.resume:                                        ; preds = %invoke.cont28
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %21, 0
  %lpad.val56 = insertvalue { i8*, i32 } %lpad.val, i32 %22, 1
  resume { i8*, i32 } %lpad.val56

terminate.lpad:                                   ; preds = %lpad25
  %39 = landingpad { i8*, i32 }
          catch i8* null
  %40 = extractvalue { i8*, i32 } %39, 0
  call void @__clang_call_terminate(i8* %40) #19
  unreachable

unreachable:                                      ; preds = %invoke.cont27
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIdSaIdEE15_M_erase_at_endEPd(%"class.std::vector"* %this, double* %__pos) #1 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  %1 = load double*, double** %_M_finish, align 8, !tbaa !94
  %2 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %2) #14
  invoke void @_ZSt8_DestroyIPddEvT_S1_RSaIT0_E(double* %__pos, double* %1, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %entry
  %3 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %_M_impl2 = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %3, i32 0, i32 0
  %_M_finish3 = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl2, i32 0, i32 1
  store double* %__pos, double** %_M_finish3, align 8, !tbaa !94
  ret void

terminate.lpad:                                   ; preds = %entry
  %4 = landingpad { i8*, i32 }
          catch i8* null
  %5 = extractvalue { i8*, i32 } %4, 0
  call void @__clang_call_terminate(i8* %5) #19
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E(double* %__first, i64 %__n, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #7 comdat {
entry:
  %call = call double* @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(double* %__first, i64 %__n)
  ret double* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc(%"class.std::vector"* %this, i64 %__n, i8* %__s) #0 comdat align 2 {
entry:
  %__n.addr = alloca i64, align 8
  %ref.tmp = alloca i64, align 8
  store i64 %__n, i64* %__n.addr, align 8, !tbaa !101
  %call = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this) #14
  %call2 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  %sub = sub i64 %call, %call2
  %0 = load i64, i64* %__n.addr, align 8, !tbaa !101
  %cmp = icmp ult i64 %sub, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt20__throw_length_errorPKc(i8* %__s) #21
  unreachable

if.end:                                           ; preds = %entry
  %call3 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  %1 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %call4 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  store i64 %call4, i64* %ref.tmp, align 8, !tbaa !101
  %call5 = call nonnull align 8 dereferenceable(8) i64* @_ZSt3maxImERKT_S2_S2_(i64* nonnull align 8 dereferenceable(8) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__n.addr)
  %2 = load i64, i64* %call5, align 8, !tbaa !101
  %add = add i64 %call3, %2
  %3 = bitcast i64* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #14
  %call6 = call i64 @_ZNKSt6vectorIdSaIdEE4sizeEv(%"class.std::vector"* %this) #14
  %cmp7 = icmp ult i64 %add, %call6
  br i1 %cmp7, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %call8 = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this) #14
  %cmp9 = icmp ugt i64 %add, %call8
  br i1 %cmp9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  %call10 = call i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this) #14
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call10, %cond.true ], [ %add, %cond.false ]
  ret i64 %cond
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm(%"struct.std::_Vector_base"* %this, i64 %__n) #0 comdat align 2 {
entry:
  %cmp = icmp ne i64 %__n, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  %call = call double* @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0, i64 %__n)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double* [ %call, %cond.true ], [ null, %cond.false ]
  ret double* %cond
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_(double* %__first, double* %__last, double* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__alloc) #7 comdat {
entry:
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp1 = alloca %"class.std::move_iterator", align 8
  %call = call double* @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(double* %__first)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  store double* %call, double** %coerce.dive, align 8
  %call2 = call double* @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(double* %__last)
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  store double* %call2, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %0 = load double*, double** %coerce.dive4, align 8
  %coerce.dive5 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp1, i32 0, i32 0
  %1 = load double*, double** %coerce.dive5, align 8
  %call6 = call double* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(double* %0, double* %1, double* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__alloc)
  ret double* %call6
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt32__make_move_if_noexcept_iteratorIdSt13move_iteratorIPdEET0_PT_(double* %__i) #7 comdat {
entry:
  %retval = alloca %"class.std::move_iterator", align 8
  call void @_ZNSt13move_iteratorIPdEC2ES0_(%"class.std::move_iterator"* %retval, double* %__i)
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %retval, i32 0, i32 0
  %0 = load double*, double** %coerce.dive, align 8
  ret double* %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt22__uninitialized_copy_aISt13move_iteratorIPdES1_dET0_T_S4_S3_RSaIT1_E(double* %__first.coerce, double* %__last.coerce, double* %__result, %"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %0) #7 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %1 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %2 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false), !tbaa.struct !103
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %5 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %6 = load double*, double** %coerce.dive4, align 8
  %call = call double* @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %5, double* %6, double* %__result)
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt18uninitialized_copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %__first.coerce, double* %__last.coerce, double* %__result) #7 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !103
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive4, align 8
  %call = call double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(double* %4, double* %5, double* %__result)
  ret double* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPdES3_EET0_T_S6_S5_(double* %__first.coerce, double* %__last.coerce, double* %__result) #0 comdat align 2 {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp2 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !103
  %2 = bitcast %"class.std::move_iterator"* %agg.tmp2 to i8*
  %3 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive3 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %4 = load double*, double** %coerce.dive3, align 8
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp2, i32 0, i32 0
  %5 = load double*, double** %coerce.dive4, align 8
  %call = call double* @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %4, double* %5, double* %__result)
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt4copyISt13move_iteratorIPdES1_ET0_T_S4_S3_(double* %__first.coerce, double* %__last.coerce, double* %__result) #7 comdat {
entry:
  %__first = alloca %"class.std::move_iterator", align 8
  %__last = alloca %"class.std::move_iterator", align 8
  %agg.tmp = alloca %"class.std::move_iterator", align 8
  %agg.tmp3 = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__first, i32 0, i32 0
  store double* %__first.coerce, double** %coerce.dive, align 8
  %coerce.dive1 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__last, i32 0, i32 0
  store double* %__last.coerce, double** %coerce.dive1, align 8
  %0 = bitcast %"class.std::move_iterator"* %agg.tmp to i8*
  %1 = bitcast %"class.std::move_iterator"* %__first to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive2 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp, i32 0, i32 0
  %2 = load double*, double** %coerce.dive2, align 8
  %call = call double* @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(double* %2)
  %3 = bitcast %"class.std::move_iterator"* %agg.tmp3 to i8*
  %4 = bitcast %"class.std::move_iterator"* %__last to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 8, i1 false), !tbaa.struct !103
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %agg.tmp3, i32 0, i32 0
  %5 = load double*, double** %coerce.dive4, align 8
  %call5 = call double* @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(double* %5)
  %call6 = call double* @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(double* %call, double* %call5, double* %__result)
  ret double* %call6
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZSt12__miter_baseIPdEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(double* %__it.coerce) #0 comdat {
entry:
  %__it = alloca %"class.std::move_iterator", align 8
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %__it, i32 0, i32 0
  store double* %__it.coerce, double** %coerce.dive, align 8
  %call = call double* @_ZNKSt13move_iteratorIPdE4baseEv(%"class.std::move_iterator"* %__it)
  %call1 = call double* @_ZSt12__miter_baseIPdET_S1_(double* %call)
  ret double* %call1
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt14__copy_move_a2ILb1EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
entry:
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %__first)
  %call1 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %__last)
  %call2 = call double* @_ZSt12__niter_baseIPdET_S1_(double* %__result)
  %call3 = call double* @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(double* %call, double* %call1, double* %call2)
  ret double* %call3
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double* @_ZSt12__niter_baseIPdET_S1_(double* %__it) #10 comdat {
entry:
  ret double* %__it
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt13__copy_move_aILb1EPdS0_ET1_T0_S2_S1_(double* %__first, double* %__last, double* %__result) #7 comdat {
entry:
  %call = call double* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result)
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double* @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_(double* %__first, double* %__last, double* %__result) #1 comdat align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint double* %__last to i64
  %sub.ptr.rhs.cast = ptrtoint double* %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %tobool = icmp ne i64 %sub.ptr.div, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = bitcast double* %__result to i8*
  %1 = bitcast double* %__first to i8*
  %mul = mul i64 8, %sub.ptr.div
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 %mul, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr inbounds double, double* %__result, i64 %sub.ptr.div
  ret double* %add.ptr
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double* @_ZNKSt13move_iteratorIPdE4baseEv(%"class.std::move_iterator"* %this) #1 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this, i32 0, i32 0
  %0 = load double*, double** %_M_current, align 8, !tbaa !107
  ret double* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double* @_ZSt12__miter_baseIPdET_S1_(double* %__it) #10 comdat {
entry:
  ret double* %__it
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt13move_iteratorIPdEC2ES0_(%"class.std::move_iterator"* %this, double* %__i) unnamed_addr #1 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.std::move_iterator", %"class.std::move_iterator"* %this, i32 0, i32 0
  store double* %__i, double** %_M_current, align 8, !tbaa !107
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt16allocator_traitsISaIdEE8allocateERS0_m(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a, i64 %__n) #0 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %__a to %"class.std::allocator.2"*
  %call = call double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.std::allocator.2"* %0, i64 %__n, i8* null)
  ret double* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv(%"class.std::allocator.2"* %this, i64 %__n, i8* %0) #0 comdat align 2 {
entry:
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.std::allocator.2"* %this) #14
  %cmp = icmp ugt i64 %__n, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_ZSt17__throw_bad_allocv() #21
  unreachable

if.end:                                           ; preds = %entry
  %mul = mul i64 %__n, 8
  %call2 = call noalias nonnull i8* @_Znwm(i64 %mul) #22
  %1 = bitcast i8* %call2 to double*
  ret double* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.std::allocator.2"* %this) #1 comdat align 2 {
entry:
  ret i64 2305843009213693951
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNKSt6vectorIdSaIdEE8max_sizeEv(%"class.std::vector"* %this) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::vector"* %this to %"struct.std::_Vector_base"*
  %call = call nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %0) #14
  %call2 = call i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %call) #14
  ret i64 %call2
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 1 dereferenceable(1) %"class.std::allocator.2"* @_ZNKSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv(%"struct.std::_Vector_base"* %this) #1 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl to %"class.std::allocator.2"*
  ret %"class.std::allocator.2"* %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_(%"class.std::allocator.2"* nonnull align 1 dereferenceable(1) %__a) #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %__a to %"class.std::allocator.2"*
  %call = call i64 @_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv(%"class.std::allocator.2"* %0) #14
  ret i64 %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt25__uninitialized_default_nIPdmET_S1_T0_(double* %__first, i64 %__n) #7 comdat {
entry:
  %call = call double* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(double* %__first, i64 %__n)
  ret double* %call
}

; Function Attrs: uwtable
define linkonce_odr dso_local double* @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPdmEET_S3_T0_(double* %__first, i64 %__n) #0 comdat align 2 {
entry:
  %ref.tmp = alloca double, align 8
  %0 = bitcast double* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  store double 0.000000e+00, double* %ref.tmp, align 8, !tbaa !45
  %call = call double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* nonnull align 8 dereferenceable(8) %ref.tmp)
  %1 = bitcast double* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %1) #14
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local double* @_ZSt6fill_nIPdmdET_S1_T0_RKT1_(double* %__first, i64 %__n, double* nonnull align 8 dereferenceable(8) %__value) #7 comdat {
entry:
  %call = call double* @_ZSt12__niter_baseIPdET_S1_(double* %__first)
  %call1 = call double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %call, i64 %__n, double* nonnull align 8 dereferenceable(8) %__value)
  ret double* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double* @_ZSt10__fill_n_aIPdmdEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT1_EE7__valueET_E6__typeES4_T0_RKS3_(double* %__first, i64 %__n, double* nonnull align 8 dereferenceable(8) %__value) #10 comdat {
entry:
  %0 = load double, double* %__value, align 8, !tbaa !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__niter.0 = phi i64 [ %__n, %entry ], [ %dec, %for.inc ]
  %__first.addr.0 = phi double* [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ugt i64 %__niter.0, 0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  store double %0, double* %__first.addr.0, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %dec = add i64 %__niter.0, -1
  %incdec.ptr = getelementptr inbounds double, double* %__first.addr.0, i32 1
  br label %for.cond, !llvm.loop !109

for.end:                                          ; preds = %for.cond.cleanup
  ret double* %__first.addr.0
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(%"struct.std::_Vector_base.1"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %0 = bitcast %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this to %"class.std::allocator.2"*
  call void @_ZNSaIiEC2Ev(%"class.std::allocator.2"* %0) #14
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this, i32 0, i32 0
  store i32* null, i32** %_M_start, align 8, !tbaa !110
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this, i32 0, i32 1
  store i32* null, i32** %_M_finish, align 8, !tbaa !111
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %this, i32 0, i32 2
  store i32* null, i32** %_M_end_of_storage, align 8, !tbaa !112
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %this to %"class.std::allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.std::allocator.2"* %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIiEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #1 comdat align 2 {
entry:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEEC2Ev(%"struct.std::_Vector_base"* %this) unnamed_addr #0 comdat align 2 {
entry:
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base", %"struct.std::_Vector_base"* %this, i32 0, i32 0
  call void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %_M_impl)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2Ev(%"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %0 = bitcast %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this to %"class.std::allocator.2"*
  call void @_ZNSaIdEC2Ev(%"class.std::allocator.2"* %0) #14
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this, i32 0, i32 0
  store double* null, double** %_M_start, align 8, !tbaa !113
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this, i32 0, i32 1
  store double* null, double** %_M_finish, align 8, !tbaa !114
  %_M_end_of_storage = getelementptr inbounds %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", %"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl"* %this, i32 0, i32 2
  store double* null, double** %_M_end_of_storage, align 8, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNSaIdEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #1 comdat align 2 {
entry:
  %0 = bitcast %"class.std::allocator.2"* %this to %"class.std::allocator.2"*
  call void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.std::allocator.2"* %0) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx13new_allocatorIdEC2Ev(%"class.std::allocator.2"* %this) unnamed_addr #1 comdat align 2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN6DomainD2Ev(%class.Domain* %this) unnamed_addr #1 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %m_regNumList = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 19
  %0 = load i32*, i32** %m_regNumList, align 8, !tbaa !11
  %isnull = icmp eq i32* %0, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast i32* %0 to i8*
  call void @_ZdaPv(i8* %1) #20
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 92
  %2 = load i32*, i32** %m_nodeElemStart, align 8, !tbaa !32
  %isnull2 = icmp eq i32* %2, null
  br i1 %isnull2, label %delete.end4, label %delete.notnull3

delete.notnull3:                                  ; preds = %delete.end
  %3 = bitcast i32* %2 to i8*
  call void @_ZdaPv(i8* %3) #20
  br label %delete.end4

delete.end4:                                      ; preds = %delete.notnull3, %delete.end
  %m_nodeElemCornerList = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 93
  %4 = load i32*, i32** %m_nodeElemCornerList, align 8, !tbaa !33
  %isnull5 = icmp eq i32* %4, null
  br i1 %isnull5, label %delete.end7, label %delete.notnull6

delete.notnull6:                                  ; preds = %delete.end4
  %5 = bitcast i32* %4 to i8*
  call void @_ZdaPv(i8* %5) #20
  br label %delete.end7

delete.end7:                                      ; preds = %delete.notnull6, %delete.end4
  %m_regElemSize = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 18
  %6 = load i32*, i32** %m_regElemSize, align 8, !tbaa !2
  %isnull8 = icmp eq i32* %6, null
  br i1 %isnull8, label %delete.end10, label %delete.notnull9

delete.notnull9:                                  ; preds = %delete.end7
  %7 = bitcast i32* %6 to i8*
  call void @_ZdaPv(i8* %7) #20
  br label %delete.end10

delete.end10:                                     ; preds = %delete.notnull9, %delete.end7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %delete.end10
  %i.0 = phi i32 [ 0, %delete.end10 ], [ %inc, %for.inc ]
  %call = invoke nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %this)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %for.cond
  %8 = load i32, i32* %call, align 4, !tbaa !34
  %cmp = icmp slt i32 %i.0, %8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %invoke.cont
  br label %for.end

lpad:                                             ; preds = %for.cond
  %9 = landingpad { i8*, i32 }
          catch i8* null
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %m_elemMass18 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 50
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_elemMass18) #14
  %m_ss19 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 49
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ss19) #14
  %m_arealg20 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 48
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_arealg20) #14
  %m_vdov21 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 47
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vdov21) #14
  %m_delv22 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 46
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_delv22) #14
  %m_vnew23 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 45
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vnew23) #14
  %m_volo24 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 44
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_volo24) #14
  %m_v25 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 43
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_v25) #14
  %m_qq26 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 42
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_qq26) #14
  %m_ql27 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 41
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ql27) #14
  %m_q28 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 40
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_q28) #14
  %m_p29 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 39
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_p29) #14
  %m_e30 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 38
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_e30) #14
  %m_elemBC31 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 28
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_elemBC31) #14
  %m_lzetap32 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 27
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetap32) #14
  %m_lzetam33 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 26
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetam33) #14
  %m_letap34 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 25
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letap34) #14
  %m_letam35 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 24
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letam35) #14
  %m_lxip36 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 23
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxip36) #14
  %m_lxim37 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 22
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxim37) #14
  %m_nodelist38 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 21
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_nodelist38) #14
  %m_symmZ39 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 15
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmZ39) #14
  %m_symmY40 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmY40) #14
  %m_symmX41 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 13
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmX41) #14
  %m_nodalMass42 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 12
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_nodalMass42) #14
  %m_fz43 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 11
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fz43) #14
  %m_fy44 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 10
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fy44) #14
  %m_fx45 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 9
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fx45) #14
  %m_zdd46 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 8
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zdd46) #14
  %m_ydd47 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 7
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ydd47) #14
  %m_xdd48 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 6
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xdd48) #14
  %m_zd49 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 5
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zd49) #14
  %m_yd50 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 4
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_yd50) #14
  %m_xd51 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 3
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xd51) #14
  %m_z52 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 2
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_z52) #14
  %m_y53 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 1
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_y53) #14
  %m_x54 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 0
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_x54) #14
  br label %terminate.handler

for.body:                                         ; preds = %invoke.cont
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 20
  %12 = load i32**, i32*** %m_regElemlist, align 8, !tbaa !12
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32*, i32** %12, i64 %idxprom
  %13 = load i32*, i32** %arrayidx, align 8, !tbaa !77
  %isnull11 = icmp eq i32* %13, null
  br i1 %isnull11, label %delete.end13, label %delete.notnull12

delete.notnull12:                                 ; preds = %for.body
  %14 = bitcast i32* %13 to i8*
  call void @_ZdaPv(i8* %14) #20
  br label %delete.end13

delete.end13:                                     ; preds = %delete.notnull12, %for.body
  br label %for.inc

for.inc:                                          ; preds = %delete.end13
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !116

for.end:                                          ; preds = %for.cond.cleanup
  %m_regElemlist14 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 20
  %15 = load i32**, i32*** %m_regElemlist14, align 8, !tbaa !12
  %isnull15 = icmp eq i32** %15, null
  br i1 %isnull15, label %delete.end17, label %delete.notnull16

delete.notnull16:                                 ; preds = %for.end
  %16 = bitcast i32** %15 to i8*
  call void @_ZdaPv(i8* %16) #20
  br label %delete.end17

delete.end17:                                     ; preds = %delete.notnull16, %for.end
  %m_elemMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 50
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_elemMass) #14
  %m_ss = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 49
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ss) #14
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 48
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_arealg) #14
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 47
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vdov) #14
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 46
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_delv) #14
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 45
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_vnew) #14
  %m_volo = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 44
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_volo) #14
  %m_v = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 43
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_v) #14
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 42
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_qq) #14
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 41
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ql) #14
  %m_q = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 40
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_q) #14
  %m_p = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 39
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_p) #14
  %m_e = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 38
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_e) #14
  %m_elemBC = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 28
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_elemBC) #14
  %m_lzetap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 27
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetap) #14
  %m_lzetam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 26
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lzetam) #14
  %m_letap = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 25
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letap) #14
  %m_letam = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 24
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_letam) #14
  %m_lxip = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 23
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxip) #14
  %m_lxim = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 22
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_lxim) #14
  %m_nodelist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 21
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_nodelist) #14
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 15
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmZ) #14
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 14
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmY) #14
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 13
  call void @_ZNSt6vectorIiSaIiEED2Ev(%"class.std::vector.0"* %m_symmX) #14
  %m_nodalMass = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 12
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_nodalMass) #14
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 11
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fz) #14
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 10
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fy) #14
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 9
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_fx) #14
  %m_zdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 8
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zdd) #14
  %m_ydd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 7
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_ydd) #14
  %m_xdd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 6
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xdd) #14
  %m_zd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 5
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_zd) #14
  %m_yd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 4
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_yd) #14
  %m_xd = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 3
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_xd) #14
  %m_z = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 2
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_z) #14
  %m_y = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 1
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_y) #14
  %m_x = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 0
  call void @_ZNSt6vectorIdSaIdEED2Ev(%"class.std::vector"* %m_x) #14
  ret void

terminate.handler:                                ; preds = %lpad
  call void @__clang_call_terminate(i8* %10) #19
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN6Domain28SetupThreadSupportStructuresEv(%class.Domain* %this) #0 align 2 {
entry:
  br i1 false, label %if.then, label %if.end123

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  br i1 undef, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  br label %for.cond, !llvm.loop !117

for.end:                                          ; preds = %for.cond.cleanup
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc24, %for.end
  br i1 undef, label %for.body10, label %for.cond.cleanup9

for.cond.cleanup9:                                ; preds = %for.cond6
  br label %for.end26

for.body10:                                       ; preds = %for.cond6
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc21, %for.body10
  br i1 undef, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  br label %for.end23

for.body15:                                       ; preds = %for.cond12
  br label %for.inc21

for.inc21:                                        ; preds = %for.body15
  br label %for.cond12, !llvm.loop !118

for.end23:                                        ; preds = %for.cond.cleanup14
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  br label %for.cond6, !llvm.loop !119

for.end26:                                        ; preds = %for.cond.cleanup9
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc48, %for.end26
  br i1 undef, label %for.body37, label %for.cond.cleanup36

for.cond.cleanup36:                               ; preds = %for.cond33
  br label %for.end50

for.body37:                                       ; preds = %for.cond33
  br label %for.inc48

for.inc48:                                        ; preds = %for.body37
  br label %for.cond33, !llvm.loop !120

for.end50:                                        ; preds = %for.cond.cleanup36
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc65, %for.end50
  br i1 undef, label %for.body62, label %for.cond.cleanup61

for.cond.cleanup61:                               ; preds = %for.cond58
  br label %for.end67

for.body62:                                       ; preds = %for.cond58
  br label %for.inc65

for.inc65:                                        ; preds = %for.body62
  br label %for.cond58, !llvm.loop !121

for.end67:                                        ; preds = %for.cond.cleanup61
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc99, %for.end67
  br i1 undef, label %for.body73, label %for.cond.cleanup72

for.cond.cleanup72:                               ; preds = %for.cond69
  br label %for.end101

for.body73:                                       ; preds = %for.cond69
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc96, %for.body73
  br i1 undef, label %for.body80, label %for.cond.cleanup79

for.cond.cleanup79:                               ; preds = %for.cond77
  br label %for.end98

for.body80:                                       ; preds = %for.cond77
  br label %for.inc96

for.inc96:                                        ; preds = %for.body80
  br label %for.cond77, !llvm.loop !122

for.end98:                                        ; preds = %for.cond.cleanup79
  br label %for.inc99

for.inc99:                                        ; preds = %for.end98
  br label %for.cond69, !llvm.loop !123

for.end101:                                       ; preds = %for.cond.cleanup72
  br label %for.cond107

for.cond107:                                      ; preds = %for.inc120, %for.end101
  br i1 undef, label %for.body110, label %for.cond.cleanup109

for.cond.cleanup109:                              ; preds = %for.cond107
  br label %for.end122

for.body110:                                      ; preds = %for.cond107
  br i1 undef, label %if.then118, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body110
  br i1 undef, label %if.then118, label %if.end

if.then118:                                       ; preds = %lor.lhs.false, %for.body110
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc120

for.inc120:                                       ; preds = %if.end
  br label %for.cond107, !llvm.loop !124

for.end122:                                       ; preds = %for.cond.cleanup109
  br i1 undef, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %for.end122
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %for.end122
  br label %if.end123

if.end123:                                        ; preds = %delete.end, %entry
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #12

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #13

; Function Attrs: uwtable
define dso_local void @_Z14InitMeshDecompiiPiS_S_S_(i32 %numRanks, i32 %myRank, i32* %col, i32* %row, i32* %plane, i32* %side) #0 {
entry:
  %conv = sitofp i32 %numRanks to double
  %call = call double @cbrt(double %conv) #18
  %add = fadd double %call, 5.000000e-01
  %conv1 = fptosi double %add to i32
  %mul = mul nsw i32 %conv1, %conv1
  %mul2 = mul nsw i32 %mul, %conv1
  %cmp = icmp ne i32 %mul2, %numRanks
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 -1) #19
  unreachable

if.end:                                           ; preds = %entry
  %mul4 = mul nsw i32 %conv1, %conv1
  %mul5 = mul nsw i32 %mul4, %conv1
  %cmp6 = icmp ne i32 %mul5, %numRanks
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 -1) #19
  unreachable

if.end9:                                          ; preds = %if.end
  %mul10 = mul nsw i32 %conv1, %conv1
  %mul11 = mul nsw i32 %mul10, %conv1
  %rem = srem i32 %mul11, %numRanks
  %cmp12 = icmp slt i32 %myRank, %rem
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end9
  %mul14 = mul nsw i32 %conv1, %conv1
  %mul15 = mul nsw i32 %mul14, %conv1
  %div = sdiv i32 %mul15, %numRanks
  %add16 = add nsw i32 1, %div
  %mul17 = mul nsw i32 %myRank, %add16
  br label %if.end28

if.else:                                          ; preds = %if.end9
  %mul18 = mul nsw i32 %conv1, %conv1
  %mul19 = mul nsw i32 %mul18, %conv1
  %div20 = sdiv i32 %mul19, %numRanks
  %add21 = add nsw i32 1, %div20
  %mul22 = mul nsw i32 %rem, %add21
  %sub = sub nsw i32 %myRank, %rem
  %mul23 = mul nsw i32 %conv1, %conv1
  %mul24 = mul nsw i32 %mul23, %conv1
  %div25 = sdiv i32 %mul24, %numRanks
  %mul26 = mul nsw i32 %sub, %div25
  %add27 = add nsw i32 %mul22, %mul26
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then13
  %myDom.0 = phi i32 [ %mul17, %if.then13 ], [ %add27, %if.else ]
  %rem29 = srem i32 %myDom.0, %conv1
  store i32 %rem29, i32* %col, align 4, !tbaa !34
  %div30 = sdiv i32 %myDom.0, %conv1
  %rem31 = srem i32 %div30, %conv1
  store i32 %rem31, i32* %row, align 4, !tbaa !34
  %mul32 = mul nsw i32 %conv1, %conv1
  %div33 = sdiv i32 %myDom.0, %mul32
  store i32 %div33, i32* %plane, align 4, !tbaa !34
  store i32 %conv1, i32* %side, align 4, !tbaa !34
  ret void
}

declare dso_local i32 @printf(i8*, ...) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_lulesh.cc() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init()
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::allocator.2"* @_ZStL8__ioinit)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::allocator.2"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::allocator.2", %"class.std::allocator.2"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #14
  ret void
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::allocator.2"*) unnamed_addr #12

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::allocator.2"*) unnamed_addr #6

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #14

; Function Attrs: uwtable
define dso_local double @_Z14CalcElemVolumePKdS0_S0_(double* %x, double* %y, double* %z) #0 {
entry:
  %arrayidx = getelementptr inbounds double, double* %x, i64 0
  %0 = load double, double* %arrayidx, align 8, !tbaa !45
  %arrayidx1 = getelementptr inbounds double, double* %x, i64 1
  %1 = load double, double* %arrayidx1, align 8, !tbaa !45
  %arrayidx2 = getelementptr inbounds double, double* %x, i64 2
  %2 = load double, double* %arrayidx2, align 8, !tbaa !45
  %arrayidx3 = getelementptr inbounds double, double* %x, i64 3
  %3 = load double, double* %arrayidx3, align 8, !tbaa !45
  %arrayidx4 = getelementptr inbounds double, double* %x, i64 4
  %4 = load double, double* %arrayidx4, align 8, !tbaa !45
  %arrayidx5 = getelementptr inbounds double, double* %x, i64 5
  %5 = load double, double* %arrayidx5, align 8, !tbaa !45
  %arrayidx6 = getelementptr inbounds double, double* %x, i64 6
  %6 = load double, double* %arrayidx6, align 8, !tbaa !45
  %arrayidx7 = getelementptr inbounds double, double* %x, i64 7
  %7 = load double, double* %arrayidx7, align 8, !tbaa !45
  %arrayidx8 = getelementptr inbounds double, double* %y, i64 0
  %8 = load double, double* %arrayidx8, align 8, !tbaa !45
  %arrayidx9 = getelementptr inbounds double, double* %y, i64 1
  %9 = load double, double* %arrayidx9, align 8, !tbaa !45
  %arrayidx10 = getelementptr inbounds double, double* %y, i64 2
  %10 = load double, double* %arrayidx10, align 8, !tbaa !45
  %arrayidx11 = getelementptr inbounds double, double* %y, i64 3
  %11 = load double, double* %arrayidx11, align 8, !tbaa !45
  %arrayidx12 = getelementptr inbounds double, double* %y, i64 4
  %12 = load double, double* %arrayidx12, align 8, !tbaa !45
  %arrayidx13 = getelementptr inbounds double, double* %y, i64 5
  %13 = load double, double* %arrayidx13, align 8, !tbaa !45
  %arrayidx14 = getelementptr inbounds double, double* %y, i64 6
  %14 = load double, double* %arrayidx14, align 8, !tbaa !45
  %arrayidx15 = getelementptr inbounds double, double* %y, i64 7
  %15 = load double, double* %arrayidx15, align 8, !tbaa !45
  %arrayidx16 = getelementptr inbounds double, double* %z, i64 0
  %16 = load double, double* %arrayidx16, align 8, !tbaa !45
  %arrayidx17 = getelementptr inbounds double, double* %z, i64 1
  %17 = load double, double* %arrayidx17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds double, double* %z, i64 2
  %18 = load double, double* %arrayidx18, align 8, !tbaa !45
  %arrayidx19 = getelementptr inbounds double, double* %z, i64 3
  %19 = load double, double* %arrayidx19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds double, double* %z, i64 4
  %20 = load double, double* %arrayidx20, align 8, !tbaa !45
  %arrayidx21 = getelementptr inbounds double, double* %z, i64 5
  %21 = load double, double* %arrayidx21, align 8, !tbaa !45
  %arrayidx22 = getelementptr inbounds double, double* %z, i64 6
  %22 = load double, double* %arrayidx22, align 8, !tbaa !45
  %arrayidx23 = getelementptr inbounds double, double* %z, i64 7
  %23 = load double, double* %arrayidx23, align 8, !tbaa !45
  %call = call double @_ZL14CalcElemVolumedddddddddddddddddddddddd(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11, double %12, double %13, double %14, double %15, double %16, double %17, double %18, double %19, double %20, double %21, double %22, double %23)
  ret double %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @_ZL14CalcElemVolumedddddddddddddddddddddddd(double %x0, double %x1, double %x2, double %x3, double %x4, double %x5, double %x6, double %x7, double %y0, double %y1, double %y2, double %y3, double %y4, double %y5, double %y6, double %y7, double %z0, double %z1, double %z2, double %z3, double %z4, double %z5, double %z6, double %z7) #10 {
entry:
  %sub = fsub double %x6, %x1
  %sub1 = fsub double %y6, %y1
  %sub2 = fsub double %z6, %z1
  %sub3 = fsub double %x7, %x0
  %sub4 = fsub double %y7, %y0
  %sub5 = fsub double %z7, %z0
  %sub6 = fsub double %x6, %x3
  %sub7 = fsub double %y6, %y3
  %sub8 = fsub double %z6, %z3
  %sub9 = fsub double %x2, %x0
  %sub10 = fsub double %y2, %y0
  %sub11 = fsub double %z2, %z0
  %sub12 = fsub double %x5, %x0
  %sub13 = fsub double %y5, %y0
  %sub14 = fsub double %z5, %z0
  %sub15 = fsub double %x6, %x4
  %sub16 = fsub double %y6, %y4
  %sub17 = fsub double %z6, %z4
  %sub18 = fsub double %x3, %x1
  %sub19 = fsub double %y3, %y1
  %sub20 = fsub double %z3, %z1
  %sub21 = fsub double %x7, %x2
  %sub22 = fsub double %y7, %y2
  %sub23 = fsub double %z7, %z2
  %sub24 = fsub double %x4, %x3
  %sub25 = fsub double %y4, %y3
  %sub26 = fsub double %z4, %z3
  %sub27 = fsub double %x5, %x7
  %sub28 = fsub double %y5, %y7
  %sub29 = fsub double %z5, %z7
  %sub30 = fsub double %x1, %x4
  %sub31 = fsub double %y1, %y4
  %sub32 = fsub double %z1, %z4
  %sub33 = fsub double %x2, %x5
  %sub34 = fsub double %y2, %y5
  %sub35 = fsub double %z2, %z5
  %add = fadd double %sub18, %sub21
  %mul = fmul double %sub7, %sub11
  %mul36 = fmul double %sub10, %sub8
  %sub37 = fsub double %mul, %mul36
  %mul38 = fmul double %add, %sub37
  %add39 = fadd double %sub19, %sub22
  %mul40 = fmul double %sub9, %sub8
  %mul41 = fmul double %sub6, %sub11
  %sub42 = fsub double %mul40, %mul41
  %mul43 = fmul double %add39, %sub42
  %add44 = fadd double %mul38, %mul43
  %add45 = fadd double %sub20, %sub23
  %mul46 = fmul double %sub6, %sub10
  %mul47 = fmul double %sub9, %sub7
  %sub48 = fsub double %mul46, %mul47
  %mul49 = fmul double %add45, %sub48
  %add50 = fadd double %add44, %mul49
  %add51 = fadd double %sub24, %sub27
  %mul52 = fmul double %sub16, %sub5
  %mul53 = fmul double %sub4, %sub17
  %sub54 = fsub double %mul52, %mul53
  %mul55 = fmul double %add51, %sub54
  %add56 = fadd double %sub25, %sub28
  %mul57 = fmul double %sub3, %sub17
  %mul58 = fmul double %sub15, %sub5
  %sub59 = fsub double %mul57, %mul58
  %mul60 = fmul double %add56, %sub59
  %add61 = fadd double %mul55, %mul60
  %add62 = fadd double %sub26, %sub29
  %mul63 = fmul double %sub15, %sub4
  %mul64 = fmul double %sub3, %sub16
  %sub65 = fsub double %mul63, %mul64
  %mul66 = fmul double %add62, %sub65
  %add67 = fadd double %add61, %mul66
  %add68 = fadd double %add50, %add67
  %add69 = fadd double %sub30, %sub33
  %mul70 = fmul double %sub1, %sub14
  %mul71 = fmul double %sub13, %sub2
  %sub72 = fsub double %mul70, %mul71
  %mul73 = fmul double %add69, %sub72
  %add74 = fadd double %sub31, %sub34
  %mul75 = fmul double %sub12, %sub2
  %mul76 = fmul double %sub, %sub14
  %sub77 = fsub double %mul75, %mul76
  %mul78 = fmul double %add74, %sub77
  %add79 = fadd double %mul73, %mul78
  %add80 = fadd double %sub32, %sub35
  %mul81 = fmul double %sub, %sub13
  %mul82 = fmul double %sub12, %sub1
  %sub83 = fsub double %mul81, %mul82
  %mul84 = fmul double %add80, %sub83
  %add85 = fadd double %add79, %mul84
  %add86 = fadd double %add68, %add85
  %mul87 = fmul double %add86, 0x3FB5555555555555
  ret double %mul87
}

; Function Attrs: uwtable
define dso_local void @_Z22CalcKinematicsForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %deltaTime, i32 %numElem) #0 {
entry:
  %B = alloca [3 x [8 x double]], align 16
  %D = alloca [6 x double], align 16
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %xd_local = alloca [8 x double], align 16
  %yd_local = alloca [8 x double], align 16
  %zd_local = alloca [8 x double], align 16
  %detJ = alloca double, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc69, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc70, %for.inc69 ]
  %cmp = icmp slt i32 %k.0, %numElem
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end71

for.body:                                         ; preds = %for.cond
  %0 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* %0) #14
  %1 = bitcast [6 x double]* %D to i8*
  call void @llvm.lifetime.start.p0i8(i64 48, i8* %1) #14
  %2 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %2) #14
  %3 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %3) #14
  %4 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %4) #14
  %5 = bitcast [8 x double]* %xd_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %5) #14
  %6 = bitcast [8 x double]* %yd_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %6) #14
  %7 = bitcast [8 x double]* %zd_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %7) #14
  %8 = bitcast double* %detJ to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #14
  store double 0.000000e+00, double* %detJ, align 8, !tbaa !45
  %call = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %domain, i32 %k.0)
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  call void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32* %call, double* %arraydecay, double* %arraydecay1, double* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay4 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay5 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %call6 = call double @_Z14CalcElemVolumePKdS0_S0_(double* %arraydecay3, double* %arraydecay4, double* %arraydecay5)
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %domain, i32 %k.0)
  %9 = load double, double* %call7, align 8, !tbaa !45
  %div = fdiv double %call6, %9
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %domain, i32 %k.0)
  store double %div, double* %call8, align 8, !tbaa !45
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %domain, i32 %k.0)
  %10 = load double, double* %call9, align 8, !tbaa !45
  %sub = fsub double %div, %10
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* %domain, i32 %k.0)
  store double %sub, double* %call10, align 8, !tbaa !45
  %arraydecay11 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %call14 = call double @_ZL28CalcElemCharacteristicLengthPKdS0_S0_d(double* %arraydecay11, double* %arraydecay12, double* %arraydecay13, double %call6)
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %domain, i32 %k.0)
  store double %call14, double* %call15, align 8, !tbaa !45
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc, %for.body
  %lnode.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp17 = icmp slt i32 %lnode.0, 8
  br i1 %cmp17, label %for.body19, label %for.cond.cleanup18

for.cond.cleanup18:                               ; preds = %for.cond16
  br label %for.end

for.body19:                                       ; preds = %for.cond16
  %idxprom = sext i32 %lnode.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %call, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %call20 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %11)
  %12 = load double, double* %call20, align 8, !tbaa !45
  %idxprom21 = sext i32 %lnode.0 to i64
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 %idxprom21
  store double %12, double* %arrayidx22, align 8, !tbaa !45
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %11)
  %13 = load double, double* %call23, align 8, !tbaa !45
  %idxprom24 = sext i32 %lnode.0 to i64
  %arrayidx25 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 %idxprom24
  store double %13, double* %arrayidx25, align 8, !tbaa !45
  %call26 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %11)
  %14 = load double, double* %call26, align 8, !tbaa !45
  %idxprom27 = sext i32 %lnode.0 to i64
  %arrayidx28 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 %idxprom27
  store double %14, double* %arrayidx28, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body19
  %inc = add nsw i32 %lnode.0, 1
  br label %for.cond16, !llvm.loop !125

for.end:                                          ; preds = %for.cond.cleanup18
  %mul = fmul double 5.000000e-01, %deltaTime
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc51, %for.end
  %j.0 = phi i32 [ 0, %for.end ], [ %inc52, %for.inc51 ]
  %cmp30 = icmp slt i32 %j.0, 8
  br i1 %cmp30, label %for.body32, label %for.cond.cleanup31

for.cond.cleanup31:                               ; preds = %for.cond29
  br label %for.end53

for.body32:                                       ; preds = %for.cond29
  %idxprom33 = sext i32 %j.0 to i64
  %arrayidx34 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 %idxprom33
  %15 = load double, double* %arrayidx34, align 8, !tbaa !45
  %mul35 = fmul double %mul, %15
  %idxprom36 = sext i32 %j.0 to i64
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 %idxprom36
  %16 = load double, double* %arrayidx37, align 8, !tbaa !45
  %sub38 = fsub double %16, %mul35
  store double %sub38, double* %arrayidx37, align 8, !tbaa !45
  %idxprom39 = sext i32 %j.0 to i64
  %arrayidx40 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 %idxprom39
  %17 = load double, double* %arrayidx40, align 8, !tbaa !45
  %mul41 = fmul double %mul, %17
  %idxprom42 = sext i32 %j.0 to i64
  %arrayidx43 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 %idxprom42
  %18 = load double, double* %arrayidx43, align 8, !tbaa !45
  %sub44 = fsub double %18, %mul41
  store double %sub44, double* %arrayidx43, align 8, !tbaa !45
  %idxprom45 = sext i32 %j.0 to i64
  %arrayidx46 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 %idxprom45
  %19 = load double, double* %arrayidx46, align 8, !tbaa !45
  %mul47 = fmul double %mul, %19
  %idxprom48 = sext i32 %j.0 to i64
  %arrayidx49 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 %idxprom48
  %20 = load double, double* %arrayidx49, align 8, !tbaa !45
  %sub50 = fsub double %20, %mul47
  store double %sub50, double* %arrayidx49, align 8, !tbaa !45
  br label %for.inc51

for.inc51:                                        ; preds = %for.body32
  %inc52 = add nsw i32 %j.0, 1
  br label %for.cond29, !llvm.loop !126

for.end53:                                        ; preds = %for.cond.cleanup31
  %arraydecay54 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay55 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay56 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %arraydecay57 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  call void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %arraydecay54, double* %arraydecay55, double* %arraydecay56, [8 x double]* %arraydecay57, double* %detJ)
  %arraydecay58 = getelementptr inbounds [8 x double], [8 x double]* %xd_local, i64 0, i64 0
  %arraydecay59 = getelementptr inbounds [8 x double], [8 x double]* %yd_local, i64 0, i64 0
  %arraydecay60 = getelementptr inbounds [8 x double], [8 x double]* %zd_local, i64 0, i64 0
  %arraydecay61 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %21 = load double, double* %detJ, align 8, !tbaa !45
  %arraydecay62 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 0
  call void @_ZL24CalcElemVelocityGradientPKdS0_S0_PA8_S_dPd(double* %arraydecay58, double* %arraydecay59, double* %arraydecay60, [8 x double]* %arraydecay61, double %21, double* %arraydecay62)
  %arrayidx63 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 0
  %22 = load double, double* %arrayidx63, align 16, !tbaa !45
  %call64 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %domain, i32 %k.0)
  store double %22, double* %call64, align 8, !tbaa !45
  %arrayidx65 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 1
  %23 = load double, double* %arrayidx65, align 8, !tbaa !45
  %call66 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %domain, i32 %k.0)
  store double %23, double* %call66, align 8, !tbaa !45
  %arrayidx67 = getelementptr inbounds [6 x double], [6 x double]* %D, i64 0, i64 2
  %24 = load double, double* %arrayidx67, align 16, !tbaa !45
  %call68 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %domain, i32 %k.0)
  store double %24, double* %call68, align 8, !tbaa !45
  %25 = bitcast double* %detJ to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %25) #14
  %26 = bitcast [8 x double]* %zd_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %26) #14
  %27 = bitcast [8 x double]* %yd_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %27) #14
  %28 = bitcast [8 x double]* %xd_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %28) #14
  %29 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %29) #14
  %30 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %30) #14
  %31 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %31) #14
  %32 = bitcast [6 x double]* %D to i8*
  call void @llvm.lifetime.end.p0i8(i64 48, i8* %32) #14
  %33 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 192, i8* %33) #14
  br label %for.inc69

for.inc69:                                        ; preds = %for.end53
  %inc70 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !127

for.end71:                                        ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32* %elemToNode, double* %elemX, double* %elemY, double* %elemZ) #7 {
entry:
  %arrayidx = getelementptr inbounds i32, i32* %elemToNode, i64 0
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %arrayidx1 = getelementptr inbounds i32, i32* %elemToNode, i64 1
  %1 = load i32, i32* %arrayidx1, align 4, !tbaa !34
  %arrayidx2 = getelementptr inbounds i32, i32* %elemToNode, i64 2
  %2 = load i32, i32* %arrayidx2, align 4, !tbaa !34
  %arrayidx3 = getelementptr inbounds i32, i32* %elemToNode, i64 3
  %3 = load i32, i32* %arrayidx3, align 4, !tbaa !34
  %arrayidx4 = getelementptr inbounds i32, i32* %elemToNode, i64 4
  %4 = load i32, i32* %arrayidx4, align 4, !tbaa !34
  %arrayidx5 = getelementptr inbounds i32, i32* %elemToNode, i64 5
  %5 = load i32, i32* %arrayidx5, align 4, !tbaa !34
  %arrayidx6 = getelementptr inbounds i32, i32* %elemToNode, i64 6
  %6 = load i32, i32* %arrayidx6, align 4, !tbaa !34
  %arrayidx7 = getelementptr inbounds i32, i32* %elemToNode, i64 7
  %7 = load i32, i32* %arrayidx7, align 4, !tbaa !34
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %0)
  %8 = load double, double* %call, align 8, !tbaa !45
  %arrayidx8 = getelementptr inbounds double, double* %elemX, i64 0
  store double %8, double* %arrayidx8, align 8, !tbaa !45
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %1)
  %9 = load double, double* %call9, align 8, !tbaa !45
  %arrayidx10 = getelementptr inbounds double, double* %elemX, i64 1
  store double %9, double* %arrayidx10, align 8, !tbaa !45
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %2)
  %10 = load double, double* %call11, align 8, !tbaa !45
  %arrayidx12 = getelementptr inbounds double, double* %elemX, i64 2
  store double %10, double* %arrayidx12, align 8, !tbaa !45
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %3)
  %11 = load double, double* %call13, align 8, !tbaa !45
  %arrayidx14 = getelementptr inbounds double, double* %elemX, i64 3
  store double %11, double* %arrayidx14, align 8, !tbaa !45
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %4)
  %12 = load double, double* %call15, align 8, !tbaa !45
  %arrayidx16 = getelementptr inbounds double, double* %elemX, i64 4
  store double %12, double* %arrayidx16, align 8, !tbaa !45
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %5)
  %13 = load double, double* %call17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds double, double* %elemX, i64 5
  store double %13, double* %arrayidx18, align 8, !tbaa !45
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %6)
  %14 = load double, double* %call19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds double, double* %elemX, i64 6
  store double %14, double* %arrayidx20, align 8, !tbaa !45
  %call21 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %7)
  %15 = load double, double* %call21, align 8, !tbaa !45
  %arrayidx22 = getelementptr inbounds double, double* %elemX, i64 7
  store double %15, double* %arrayidx22, align 8, !tbaa !45
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %0)
  %16 = load double, double* %call23, align 8, !tbaa !45
  %arrayidx24 = getelementptr inbounds double, double* %elemY, i64 0
  store double %16, double* %arrayidx24, align 8, !tbaa !45
  %call25 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %1)
  %17 = load double, double* %call25, align 8, !tbaa !45
  %arrayidx26 = getelementptr inbounds double, double* %elemY, i64 1
  store double %17, double* %arrayidx26, align 8, !tbaa !45
  %call27 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %2)
  %18 = load double, double* %call27, align 8, !tbaa !45
  %arrayidx28 = getelementptr inbounds double, double* %elemY, i64 2
  store double %18, double* %arrayidx28, align 8, !tbaa !45
  %call29 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %3)
  %19 = load double, double* %call29, align 8, !tbaa !45
  %arrayidx30 = getelementptr inbounds double, double* %elemY, i64 3
  store double %19, double* %arrayidx30, align 8, !tbaa !45
  %call31 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %4)
  %20 = load double, double* %call31, align 8, !tbaa !45
  %arrayidx32 = getelementptr inbounds double, double* %elemY, i64 4
  store double %20, double* %arrayidx32, align 8, !tbaa !45
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %5)
  %21 = load double, double* %call33, align 8, !tbaa !45
  %arrayidx34 = getelementptr inbounds double, double* %elemY, i64 5
  store double %21, double* %arrayidx34, align 8, !tbaa !45
  %call35 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %6)
  %22 = load double, double* %call35, align 8, !tbaa !45
  %arrayidx36 = getelementptr inbounds double, double* %elemY, i64 6
  store double %22, double* %arrayidx36, align 8, !tbaa !45
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %7)
  %23 = load double, double* %call37, align 8, !tbaa !45
  %arrayidx38 = getelementptr inbounds double, double* %elemY, i64 7
  store double %23, double* %arrayidx38, align 8, !tbaa !45
  %call39 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %0)
  %24 = load double, double* %call39, align 8, !tbaa !45
  %arrayidx40 = getelementptr inbounds double, double* %elemZ, i64 0
  store double %24, double* %arrayidx40, align 8, !tbaa !45
  %call41 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %1)
  %25 = load double, double* %call41, align 8, !tbaa !45
  %arrayidx42 = getelementptr inbounds double, double* %elemZ, i64 1
  store double %25, double* %arrayidx42, align 8, !tbaa !45
  %call43 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %2)
  %26 = load double, double* %call43, align 8, !tbaa !45
  %arrayidx44 = getelementptr inbounds double, double* %elemZ, i64 2
  store double %26, double* %arrayidx44, align 8, !tbaa !45
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %3)
  %27 = load double, double* %call45, align 8, !tbaa !45
  %arrayidx46 = getelementptr inbounds double, double* %elemZ, i64 3
  store double %27, double* %arrayidx46, align 8, !tbaa !45
  %call47 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %4)
  %28 = load double, double* %call47, align 8, !tbaa !45
  %arrayidx48 = getelementptr inbounds double, double* %elemZ, i64 4
  store double %28, double* %arrayidx48, align 8, !tbaa !45
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %5)
  %29 = load double, double* %call49, align 8, !tbaa !45
  %arrayidx50 = getelementptr inbounds double, double* %elemZ, i64 5
  store double %29, double* %arrayidx50, align 8, !tbaa !45
  %call51 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %6)
  %30 = load double, double* %call51, align 8, !tbaa !45
  %arrayidx52 = getelementptr inbounds double, double* %elemZ, i64 6
  store double %30, double* %arrayidx52, align 8, !tbaa !45
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %7)
  %31 = load double, double* %call53, align 8, !tbaa !45
  %arrayidx54 = getelementptr inbounds double, double* %elemZ, i64 7
  store double %31, double* %arrayidx54, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_vnew = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 45
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_vnew, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_delv = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 46
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_delv, i64 %conv) #14
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define internal double @_ZL28CalcElemCharacteristicLengthPKdS0_S0_d(double* %x, double* %y, double* %z, double %volume) #7 {
entry:
  %a = alloca double, align 8
  %charLength = alloca double, align 8
  %0 = bitcast double* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %1 = bitcast double* %charLength to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  store double 0.000000e+00, double* %charLength, align 8, !tbaa !45
  %arrayidx = getelementptr inbounds double, double* %x, i64 0
  %2 = load double, double* %arrayidx, align 8, !tbaa !45
  %arrayidx1 = getelementptr inbounds double, double* %x, i64 1
  %3 = load double, double* %arrayidx1, align 8, !tbaa !45
  %arrayidx2 = getelementptr inbounds double, double* %x, i64 2
  %4 = load double, double* %arrayidx2, align 8, !tbaa !45
  %arrayidx3 = getelementptr inbounds double, double* %x, i64 3
  %5 = load double, double* %arrayidx3, align 8, !tbaa !45
  %arrayidx4 = getelementptr inbounds double, double* %y, i64 0
  %6 = load double, double* %arrayidx4, align 8, !tbaa !45
  %arrayidx5 = getelementptr inbounds double, double* %y, i64 1
  %7 = load double, double* %arrayidx5, align 8, !tbaa !45
  %arrayidx6 = getelementptr inbounds double, double* %y, i64 2
  %8 = load double, double* %arrayidx6, align 8, !tbaa !45
  %arrayidx7 = getelementptr inbounds double, double* %y, i64 3
  %9 = load double, double* %arrayidx7, align 8, !tbaa !45
  %arrayidx8 = getelementptr inbounds double, double* %z, i64 0
  %10 = load double, double* %arrayidx8, align 8, !tbaa !45
  %arrayidx9 = getelementptr inbounds double, double* %z, i64 1
  %11 = load double, double* %arrayidx9, align 8, !tbaa !45
  %arrayidx10 = getelementptr inbounds double, double* %z, i64 2
  %12 = load double, double* %arrayidx10, align 8, !tbaa !45
  %arrayidx11 = getelementptr inbounds double, double* %z, i64 3
  %13 = load double, double* %arrayidx11, align 8, !tbaa !45
  %call = call double @_ZL8AreaFacedddddddddddd(double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11, double %12, double %13)
  store double %call, double* %a, align 8, !tbaa !45
  %call12 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %14 = load double, double* %call12, align 8, !tbaa !45
  store double %14, double* %charLength, align 8, !tbaa !45
  %arrayidx13 = getelementptr inbounds double, double* %x, i64 4
  %15 = load double, double* %arrayidx13, align 8, !tbaa !45
  %arrayidx14 = getelementptr inbounds double, double* %x, i64 5
  %16 = load double, double* %arrayidx14, align 8, !tbaa !45
  %arrayidx15 = getelementptr inbounds double, double* %x, i64 6
  %17 = load double, double* %arrayidx15, align 8, !tbaa !45
  %arrayidx16 = getelementptr inbounds double, double* %x, i64 7
  %18 = load double, double* %arrayidx16, align 8, !tbaa !45
  %arrayidx17 = getelementptr inbounds double, double* %y, i64 4
  %19 = load double, double* %arrayidx17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds double, double* %y, i64 5
  %20 = load double, double* %arrayidx18, align 8, !tbaa !45
  %arrayidx19 = getelementptr inbounds double, double* %y, i64 6
  %21 = load double, double* %arrayidx19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds double, double* %y, i64 7
  %22 = load double, double* %arrayidx20, align 8, !tbaa !45
  %arrayidx21 = getelementptr inbounds double, double* %z, i64 4
  %23 = load double, double* %arrayidx21, align 8, !tbaa !45
  %arrayidx22 = getelementptr inbounds double, double* %z, i64 5
  %24 = load double, double* %arrayidx22, align 8, !tbaa !45
  %arrayidx23 = getelementptr inbounds double, double* %z, i64 6
  %25 = load double, double* %arrayidx23, align 8, !tbaa !45
  %arrayidx24 = getelementptr inbounds double, double* %z, i64 7
  %26 = load double, double* %arrayidx24, align 8, !tbaa !45
  %call25 = call double @_ZL8AreaFacedddddddddddd(double %15, double %16, double %17, double %18, double %19, double %20, double %21, double %22, double %23, double %24, double %25, double %26)
  store double %call25, double* %a, align 8, !tbaa !45
  %call26 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %27 = load double, double* %call26, align 8, !tbaa !45
  store double %27, double* %charLength, align 8, !tbaa !45
  %arrayidx27 = getelementptr inbounds double, double* %x, i64 0
  %28 = load double, double* %arrayidx27, align 8, !tbaa !45
  %arrayidx28 = getelementptr inbounds double, double* %x, i64 1
  %29 = load double, double* %arrayidx28, align 8, !tbaa !45
  %arrayidx29 = getelementptr inbounds double, double* %x, i64 5
  %30 = load double, double* %arrayidx29, align 8, !tbaa !45
  %arrayidx30 = getelementptr inbounds double, double* %x, i64 4
  %31 = load double, double* %arrayidx30, align 8, !tbaa !45
  %arrayidx31 = getelementptr inbounds double, double* %y, i64 0
  %32 = load double, double* %arrayidx31, align 8, !tbaa !45
  %arrayidx32 = getelementptr inbounds double, double* %y, i64 1
  %33 = load double, double* %arrayidx32, align 8, !tbaa !45
  %arrayidx33 = getelementptr inbounds double, double* %y, i64 5
  %34 = load double, double* %arrayidx33, align 8, !tbaa !45
  %arrayidx34 = getelementptr inbounds double, double* %y, i64 4
  %35 = load double, double* %arrayidx34, align 8, !tbaa !45
  %arrayidx35 = getelementptr inbounds double, double* %z, i64 0
  %36 = load double, double* %arrayidx35, align 8, !tbaa !45
  %arrayidx36 = getelementptr inbounds double, double* %z, i64 1
  %37 = load double, double* %arrayidx36, align 8, !tbaa !45
  %arrayidx37 = getelementptr inbounds double, double* %z, i64 5
  %38 = load double, double* %arrayidx37, align 8, !tbaa !45
  %arrayidx38 = getelementptr inbounds double, double* %z, i64 4
  %39 = load double, double* %arrayidx38, align 8, !tbaa !45
  %call39 = call double @_ZL8AreaFacedddddddddddd(double %28, double %29, double %30, double %31, double %32, double %33, double %34, double %35, double %36, double %37, double %38, double %39)
  store double %call39, double* %a, align 8, !tbaa !45
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %40 = load double, double* %call40, align 8, !tbaa !45
  store double %40, double* %charLength, align 8, !tbaa !45
  %arrayidx41 = getelementptr inbounds double, double* %x, i64 1
  %41 = load double, double* %arrayidx41, align 8, !tbaa !45
  %arrayidx42 = getelementptr inbounds double, double* %x, i64 2
  %42 = load double, double* %arrayidx42, align 8, !tbaa !45
  %arrayidx43 = getelementptr inbounds double, double* %x, i64 6
  %43 = load double, double* %arrayidx43, align 8, !tbaa !45
  %arrayidx44 = getelementptr inbounds double, double* %x, i64 5
  %44 = load double, double* %arrayidx44, align 8, !tbaa !45
  %arrayidx45 = getelementptr inbounds double, double* %y, i64 1
  %45 = load double, double* %arrayidx45, align 8, !tbaa !45
  %arrayidx46 = getelementptr inbounds double, double* %y, i64 2
  %46 = load double, double* %arrayidx46, align 8, !tbaa !45
  %arrayidx47 = getelementptr inbounds double, double* %y, i64 6
  %47 = load double, double* %arrayidx47, align 8, !tbaa !45
  %arrayidx48 = getelementptr inbounds double, double* %y, i64 5
  %48 = load double, double* %arrayidx48, align 8, !tbaa !45
  %arrayidx49 = getelementptr inbounds double, double* %z, i64 1
  %49 = load double, double* %arrayidx49, align 8, !tbaa !45
  %arrayidx50 = getelementptr inbounds double, double* %z, i64 2
  %50 = load double, double* %arrayidx50, align 8, !tbaa !45
  %arrayidx51 = getelementptr inbounds double, double* %z, i64 6
  %51 = load double, double* %arrayidx51, align 8, !tbaa !45
  %arrayidx52 = getelementptr inbounds double, double* %z, i64 5
  %52 = load double, double* %arrayidx52, align 8, !tbaa !45
  %call53 = call double @_ZL8AreaFacedddddddddddd(double %41, double %42, double %43, double %44, double %45, double %46, double %47, double %48, double %49, double %50, double %51, double %52)
  store double %call53, double* %a, align 8, !tbaa !45
  %call54 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %53 = load double, double* %call54, align 8, !tbaa !45
  store double %53, double* %charLength, align 8, !tbaa !45
  %arrayidx55 = getelementptr inbounds double, double* %x, i64 2
  %54 = load double, double* %arrayidx55, align 8, !tbaa !45
  %arrayidx56 = getelementptr inbounds double, double* %x, i64 3
  %55 = load double, double* %arrayidx56, align 8, !tbaa !45
  %arrayidx57 = getelementptr inbounds double, double* %x, i64 7
  %56 = load double, double* %arrayidx57, align 8, !tbaa !45
  %arrayidx58 = getelementptr inbounds double, double* %x, i64 6
  %57 = load double, double* %arrayidx58, align 8, !tbaa !45
  %arrayidx59 = getelementptr inbounds double, double* %y, i64 2
  %58 = load double, double* %arrayidx59, align 8, !tbaa !45
  %arrayidx60 = getelementptr inbounds double, double* %y, i64 3
  %59 = load double, double* %arrayidx60, align 8, !tbaa !45
  %arrayidx61 = getelementptr inbounds double, double* %y, i64 7
  %60 = load double, double* %arrayidx61, align 8, !tbaa !45
  %arrayidx62 = getelementptr inbounds double, double* %y, i64 6
  %61 = load double, double* %arrayidx62, align 8, !tbaa !45
  %arrayidx63 = getelementptr inbounds double, double* %z, i64 2
  %62 = load double, double* %arrayidx63, align 8, !tbaa !45
  %arrayidx64 = getelementptr inbounds double, double* %z, i64 3
  %63 = load double, double* %arrayidx64, align 8, !tbaa !45
  %arrayidx65 = getelementptr inbounds double, double* %z, i64 7
  %64 = load double, double* %arrayidx65, align 8, !tbaa !45
  %arrayidx66 = getelementptr inbounds double, double* %z, i64 6
  %65 = load double, double* %arrayidx66, align 8, !tbaa !45
  %call67 = call double @_ZL8AreaFacedddddddddddd(double %54, double %55, double %56, double %57, double %58, double %59, double %60, double %61, double %62, double %63, double %64, double %65)
  store double %call67, double* %a, align 8, !tbaa !45
  %call68 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %66 = load double, double* %call68, align 8, !tbaa !45
  store double %66, double* %charLength, align 8, !tbaa !45
  %arrayidx69 = getelementptr inbounds double, double* %x, i64 3
  %67 = load double, double* %arrayidx69, align 8, !tbaa !45
  %arrayidx70 = getelementptr inbounds double, double* %x, i64 0
  %68 = load double, double* %arrayidx70, align 8, !tbaa !45
  %arrayidx71 = getelementptr inbounds double, double* %x, i64 4
  %69 = load double, double* %arrayidx71, align 8, !tbaa !45
  %arrayidx72 = getelementptr inbounds double, double* %x, i64 7
  %70 = load double, double* %arrayidx72, align 8, !tbaa !45
  %arrayidx73 = getelementptr inbounds double, double* %y, i64 3
  %71 = load double, double* %arrayidx73, align 8, !tbaa !45
  %arrayidx74 = getelementptr inbounds double, double* %y, i64 0
  %72 = load double, double* %arrayidx74, align 8, !tbaa !45
  %arrayidx75 = getelementptr inbounds double, double* %y, i64 4
  %73 = load double, double* %arrayidx75, align 8, !tbaa !45
  %arrayidx76 = getelementptr inbounds double, double* %y, i64 7
  %74 = load double, double* %arrayidx76, align 8, !tbaa !45
  %arrayidx77 = getelementptr inbounds double, double* %z, i64 3
  %75 = load double, double* %arrayidx77, align 8, !tbaa !45
  %arrayidx78 = getelementptr inbounds double, double* %z, i64 0
  %76 = load double, double* %arrayidx78, align 8, !tbaa !45
  %arrayidx79 = getelementptr inbounds double, double* %z, i64 4
  %77 = load double, double* %arrayidx79, align 8, !tbaa !45
  %arrayidx80 = getelementptr inbounds double, double* %z, i64 7
  %78 = load double, double* %arrayidx80, align 8, !tbaa !45
  %call81 = call double @_ZL8AreaFacedddddddddddd(double %67, double %68, double %69, double %70, double %71, double %72, double %73, double %74, double %75, double %76, double %77, double %78)
  store double %call81, double* %a, align 8, !tbaa !45
  %call82 = call nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %a, double* nonnull align 8 dereferenceable(8) %charLength)
  %79 = load double, double* %call82, align 8, !tbaa !45
  store double %79, double* %charLength, align 8, !tbaa !45
  %mul = fmul double 4.000000e+00, %volume
  %80 = load double, double* %charLength, align 8, !tbaa !45
  %call83 = call double @_Z4SQRTd(double %80)
  %div = fdiv double %mul, %call83
  store double %div, double* %charLength, align 8, !tbaa !45
  %81 = load double, double* %charLength, align 8, !tbaa !45
  %82 = bitcast double* %charLength to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #14
  %83 = bitcast double* %a to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #14
  ret double %81
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_arealg = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 48
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_arealg, i64 %conv) #14
  ret double* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %x, double* %y, double* %z, [8 x double]* %b, double* %volume) #10 {
entry:
  %arrayidx = getelementptr inbounds double, double* %x, i64 0
  %0 = load double, double* %arrayidx, align 8, !tbaa !45
  %arrayidx1 = getelementptr inbounds double, double* %x, i64 1
  %1 = load double, double* %arrayidx1, align 8, !tbaa !45
  %arrayidx2 = getelementptr inbounds double, double* %x, i64 2
  %2 = load double, double* %arrayidx2, align 8, !tbaa !45
  %arrayidx3 = getelementptr inbounds double, double* %x, i64 3
  %3 = load double, double* %arrayidx3, align 8, !tbaa !45
  %arrayidx4 = getelementptr inbounds double, double* %x, i64 4
  %4 = load double, double* %arrayidx4, align 8, !tbaa !45
  %arrayidx5 = getelementptr inbounds double, double* %x, i64 5
  %5 = load double, double* %arrayidx5, align 8, !tbaa !45
  %arrayidx6 = getelementptr inbounds double, double* %x, i64 6
  %6 = load double, double* %arrayidx6, align 8, !tbaa !45
  %arrayidx7 = getelementptr inbounds double, double* %x, i64 7
  %7 = load double, double* %arrayidx7, align 8, !tbaa !45
  %arrayidx8 = getelementptr inbounds double, double* %y, i64 0
  %8 = load double, double* %arrayidx8, align 8, !tbaa !45
  %arrayidx9 = getelementptr inbounds double, double* %y, i64 1
  %9 = load double, double* %arrayidx9, align 8, !tbaa !45
  %arrayidx10 = getelementptr inbounds double, double* %y, i64 2
  %10 = load double, double* %arrayidx10, align 8, !tbaa !45
  %arrayidx11 = getelementptr inbounds double, double* %y, i64 3
  %11 = load double, double* %arrayidx11, align 8, !tbaa !45
  %arrayidx12 = getelementptr inbounds double, double* %y, i64 4
  %12 = load double, double* %arrayidx12, align 8, !tbaa !45
  %arrayidx13 = getelementptr inbounds double, double* %y, i64 5
  %13 = load double, double* %arrayidx13, align 8, !tbaa !45
  %arrayidx14 = getelementptr inbounds double, double* %y, i64 6
  %14 = load double, double* %arrayidx14, align 8, !tbaa !45
  %arrayidx15 = getelementptr inbounds double, double* %y, i64 7
  %15 = load double, double* %arrayidx15, align 8, !tbaa !45
  %arrayidx16 = getelementptr inbounds double, double* %z, i64 0
  %16 = load double, double* %arrayidx16, align 8, !tbaa !45
  %arrayidx17 = getelementptr inbounds double, double* %z, i64 1
  %17 = load double, double* %arrayidx17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds double, double* %z, i64 2
  %18 = load double, double* %arrayidx18, align 8, !tbaa !45
  %arrayidx19 = getelementptr inbounds double, double* %z, i64 3
  %19 = load double, double* %arrayidx19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds double, double* %z, i64 4
  %20 = load double, double* %arrayidx20, align 8, !tbaa !45
  %arrayidx21 = getelementptr inbounds double, double* %z, i64 5
  %21 = load double, double* %arrayidx21, align 8, !tbaa !45
  %arrayidx22 = getelementptr inbounds double, double* %z, i64 6
  %22 = load double, double* %arrayidx22, align 8, !tbaa !45
  %arrayidx23 = getelementptr inbounds double, double* %z, i64 7
  %23 = load double, double* %arrayidx23, align 8, !tbaa !45
  %sub = fsub double %6, %0
  %sub24 = fsub double %5, %3
  %add = fadd double %sub, %sub24
  %sub25 = fsub double %7, %1
  %sub26 = fsub double %add, %sub25
  %sub27 = fsub double %4, %2
  %sub28 = fsub double %sub26, %sub27
  %mul = fmul double 1.250000e-01, %sub28
  %sub29 = fsub double %6, %0
  %sub30 = fsub double %5, %3
  %sub31 = fsub double %sub29, %sub30
  %sub32 = fsub double %7, %1
  %add33 = fadd double %sub31, %sub32
  %sub34 = fsub double %4, %2
  %sub35 = fsub double %add33, %sub34
  %mul36 = fmul double 1.250000e-01, %sub35
  %sub37 = fsub double %6, %0
  %sub38 = fsub double %5, %3
  %add39 = fadd double %sub37, %sub38
  %sub40 = fsub double %7, %1
  %add41 = fadd double %add39, %sub40
  %sub42 = fsub double %4, %2
  %add43 = fadd double %add41, %sub42
  %mul44 = fmul double 1.250000e-01, %add43
  %sub45 = fsub double %14, %8
  %sub46 = fsub double %13, %11
  %add47 = fadd double %sub45, %sub46
  %sub48 = fsub double %15, %9
  %sub49 = fsub double %add47, %sub48
  %sub50 = fsub double %12, %10
  %sub51 = fsub double %sub49, %sub50
  %mul52 = fmul double 1.250000e-01, %sub51
  %sub53 = fsub double %14, %8
  %sub54 = fsub double %13, %11
  %sub55 = fsub double %sub53, %sub54
  %sub56 = fsub double %15, %9
  %add57 = fadd double %sub55, %sub56
  %sub58 = fsub double %12, %10
  %sub59 = fsub double %add57, %sub58
  %mul60 = fmul double 1.250000e-01, %sub59
  %sub61 = fsub double %14, %8
  %sub62 = fsub double %13, %11
  %add63 = fadd double %sub61, %sub62
  %sub64 = fsub double %15, %9
  %add65 = fadd double %add63, %sub64
  %sub66 = fsub double %12, %10
  %add67 = fadd double %add65, %sub66
  %mul68 = fmul double 1.250000e-01, %add67
  %sub69 = fsub double %22, %16
  %sub70 = fsub double %21, %19
  %add71 = fadd double %sub69, %sub70
  %sub72 = fsub double %23, %17
  %sub73 = fsub double %add71, %sub72
  %sub74 = fsub double %20, %18
  %sub75 = fsub double %sub73, %sub74
  %mul76 = fmul double 1.250000e-01, %sub75
  %sub77 = fsub double %22, %16
  %sub78 = fsub double %21, %19
  %sub79 = fsub double %sub77, %sub78
  %sub80 = fsub double %23, %17
  %add81 = fadd double %sub79, %sub80
  %sub82 = fsub double %20, %18
  %sub83 = fsub double %add81, %sub82
  %mul84 = fmul double 1.250000e-01, %sub83
  %sub85 = fsub double %22, %16
  %sub86 = fsub double %21, %19
  %add87 = fadd double %sub85, %sub86
  %sub88 = fsub double %23, %17
  %add89 = fadd double %add87, %sub88
  %sub90 = fsub double %20, %18
  %add91 = fadd double %add89, %sub90
  %mul92 = fmul double 1.250000e-01, %add91
  %mul93 = fmul double %mul60, %mul92
  %mul94 = fmul double %mul84, %mul68
  %sub95 = fsub double %mul93, %mul94
  %mul96 = fmul double %mul52, %mul92
  %fneg = fneg double %mul96
  %mul97 = fmul double %mul76, %mul68
  %add98 = fadd double %fneg, %mul97
  %mul99 = fmul double %mul52, %mul84
  %mul100 = fmul double %mul76, %mul60
  %sub101 = fsub double %mul99, %mul100
  %mul102 = fmul double %mul36, %mul92
  %fneg103 = fneg double %mul102
  %mul104 = fmul double %mul84, %mul44
  %add105 = fadd double %fneg103, %mul104
  %mul106 = fmul double %mul, %mul92
  %mul107 = fmul double %mul76, %mul44
  %sub108 = fsub double %mul106, %mul107
  %mul109 = fmul double %mul, %mul84
  %fneg110 = fneg double %mul109
  %mul111 = fmul double %mul76, %mul36
  %add112 = fadd double %fneg110, %mul111
  %mul113 = fmul double %mul36, %mul68
  %mul114 = fmul double %mul60, %mul44
  %sub115 = fsub double %mul113, %mul114
  %mul116 = fmul double %mul, %mul68
  %fneg117 = fneg double %mul116
  %mul118 = fmul double %mul52, %mul44
  %add119 = fadd double %fneg117, %mul118
  %mul120 = fmul double %mul, %mul60
  %mul121 = fmul double %mul52, %mul36
  %sub122 = fsub double %mul120, %mul121
  %fneg123 = fneg double %sub95
  %sub124 = fsub double %fneg123, %add98
  %sub125 = fsub double %sub124, %sub101
  %arrayidx126 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx127 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx126, i64 0, i64 0
  store double %sub125, double* %arrayidx127, align 8, !tbaa !45
  %sub128 = fsub double %sub95, %add98
  %sub129 = fsub double %sub128, %sub101
  %arrayidx130 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx131 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx130, i64 0, i64 1
  store double %sub129, double* %arrayidx131, align 8, !tbaa !45
  %add132 = fadd double %sub95, %add98
  %sub133 = fsub double %add132, %sub101
  %arrayidx134 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx135 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx134, i64 0, i64 2
  store double %sub133, double* %arrayidx135, align 8, !tbaa !45
  %fneg136 = fneg double %sub95
  %add137 = fadd double %fneg136, %add98
  %sub138 = fsub double %add137, %sub101
  %arrayidx139 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx140 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx139, i64 0, i64 3
  store double %sub138, double* %arrayidx140, align 8, !tbaa !45
  %arrayidx141 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx142 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx141, i64 0, i64 2
  %24 = load double, double* %arrayidx142, align 8, !tbaa !45
  %fneg143 = fneg double %24
  %arrayidx144 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx145 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx144, i64 0, i64 4
  store double %fneg143, double* %arrayidx145, align 8, !tbaa !45
  %arrayidx146 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx147 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx146, i64 0, i64 3
  %25 = load double, double* %arrayidx147, align 8, !tbaa !45
  %fneg148 = fneg double %25
  %arrayidx149 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx150 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx149, i64 0, i64 5
  store double %fneg148, double* %arrayidx150, align 8, !tbaa !45
  %arrayidx151 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx152 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx151, i64 0, i64 0
  %26 = load double, double* %arrayidx152, align 8, !tbaa !45
  %fneg153 = fneg double %26
  %arrayidx154 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx155 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx154, i64 0, i64 6
  store double %fneg153, double* %arrayidx155, align 8, !tbaa !45
  %arrayidx156 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx157 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx156, i64 0, i64 1
  %27 = load double, double* %arrayidx157, align 8, !tbaa !45
  %fneg158 = fneg double %27
  %arrayidx159 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arrayidx160 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx159, i64 0, i64 7
  store double %fneg158, double* %arrayidx160, align 8, !tbaa !45
  %fneg161 = fneg double %add105
  %sub162 = fsub double %fneg161, %sub108
  %sub163 = fsub double %sub162, %add112
  %arrayidx164 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx165 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx164, i64 0, i64 0
  store double %sub163, double* %arrayidx165, align 8, !tbaa !45
  %sub166 = fsub double %add105, %sub108
  %sub167 = fsub double %sub166, %add112
  %arrayidx168 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx169 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx168, i64 0, i64 1
  store double %sub167, double* %arrayidx169, align 8, !tbaa !45
  %add170 = fadd double %add105, %sub108
  %sub171 = fsub double %add170, %add112
  %arrayidx172 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx173 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx172, i64 0, i64 2
  store double %sub171, double* %arrayidx173, align 8, !tbaa !45
  %fneg174 = fneg double %add105
  %add175 = fadd double %fneg174, %sub108
  %sub176 = fsub double %add175, %add112
  %arrayidx177 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx178 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx177, i64 0, i64 3
  store double %sub176, double* %arrayidx178, align 8, !tbaa !45
  %arrayidx179 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx180 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx179, i64 0, i64 2
  %28 = load double, double* %arrayidx180, align 8, !tbaa !45
  %fneg181 = fneg double %28
  %arrayidx182 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx183 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx182, i64 0, i64 4
  store double %fneg181, double* %arrayidx183, align 8, !tbaa !45
  %arrayidx184 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx185 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx184, i64 0, i64 3
  %29 = load double, double* %arrayidx185, align 8, !tbaa !45
  %fneg186 = fneg double %29
  %arrayidx187 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx188 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx187, i64 0, i64 5
  store double %fneg186, double* %arrayidx188, align 8, !tbaa !45
  %arrayidx189 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx190 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx189, i64 0, i64 0
  %30 = load double, double* %arrayidx190, align 8, !tbaa !45
  %fneg191 = fneg double %30
  %arrayidx192 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx193 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx192, i64 0, i64 6
  store double %fneg191, double* %arrayidx193, align 8, !tbaa !45
  %arrayidx194 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx195 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx194, i64 0, i64 1
  %31 = load double, double* %arrayidx195, align 8, !tbaa !45
  %fneg196 = fneg double %31
  %arrayidx197 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arrayidx198 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx197, i64 0, i64 7
  store double %fneg196, double* %arrayidx198, align 8, !tbaa !45
  %fneg199 = fneg double %sub115
  %sub200 = fsub double %fneg199, %add119
  %sub201 = fsub double %sub200, %sub122
  %arrayidx202 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx203 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx202, i64 0, i64 0
  store double %sub201, double* %arrayidx203, align 8, !tbaa !45
  %sub204 = fsub double %sub115, %add119
  %sub205 = fsub double %sub204, %sub122
  %arrayidx206 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx207 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx206, i64 0, i64 1
  store double %sub205, double* %arrayidx207, align 8, !tbaa !45
  %add208 = fadd double %sub115, %add119
  %sub209 = fsub double %add208, %sub122
  %arrayidx210 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx211 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx210, i64 0, i64 2
  store double %sub209, double* %arrayidx211, align 8, !tbaa !45
  %fneg212 = fneg double %sub115
  %add213 = fadd double %fneg212, %add119
  %sub214 = fsub double %add213, %sub122
  %arrayidx215 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx216 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx215, i64 0, i64 3
  store double %sub214, double* %arrayidx216, align 8, !tbaa !45
  %arrayidx217 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx218 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx217, i64 0, i64 2
  %32 = load double, double* %arrayidx218, align 8, !tbaa !45
  %fneg219 = fneg double %32
  %arrayidx220 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx221 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx220, i64 0, i64 4
  store double %fneg219, double* %arrayidx221, align 8, !tbaa !45
  %arrayidx222 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx223 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx222, i64 0, i64 3
  %33 = load double, double* %arrayidx223, align 8, !tbaa !45
  %fneg224 = fneg double %33
  %arrayidx225 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx226 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx225, i64 0, i64 5
  store double %fneg224, double* %arrayidx226, align 8, !tbaa !45
  %arrayidx227 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx228 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx227, i64 0, i64 0
  %34 = load double, double* %arrayidx228, align 8, !tbaa !45
  %fneg229 = fneg double %34
  %arrayidx230 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx231 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx230, i64 0, i64 6
  store double %fneg229, double* %arrayidx231, align 8, !tbaa !45
  %arrayidx232 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx233 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx232, i64 0, i64 1
  %35 = load double, double* %arrayidx233, align 8, !tbaa !45
  %fneg234 = fneg double %35
  %arrayidx235 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arrayidx236 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx235, i64 0, i64 7
  store double %fneg234, double* %arrayidx236, align 8, !tbaa !45
  %mul237 = fmul double %mul36, %add98
  %mul238 = fmul double %mul60, %sub108
  %add239 = fadd double %mul237, %mul238
  %mul240 = fmul double %mul84, %add119
  %add241 = fadd double %add239, %mul240
  %mul242 = fmul double 8.000000e+00, %add241
  store double %mul242, double* %volume, align 8, !tbaa !45
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL24CalcElemVelocityGradientPKdS0_S0_PA8_S_dPd(double* %xvel, double* %yvel, double* %zvel, [8 x double]* %b, double %detJ, double* %d) #10 {
entry:
  %div = fdiv double 1.000000e+00, %detJ
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %b, i64 0
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 1
  %arraydecay2 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx1, i64 0, i64 0
  %arrayidx3 = getelementptr inbounds [8 x double], [8 x double]* %b, i64 2
  %arraydecay4 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx3, i64 0, i64 0
  %arrayidx5 = getelementptr inbounds double, double* %arraydecay, i64 0
  %0 = load double, double* %arrayidx5, align 8, !tbaa !45
  %arrayidx6 = getelementptr inbounds double, double* %xvel, i64 0
  %1 = load double, double* %arrayidx6, align 8, !tbaa !45
  %arrayidx7 = getelementptr inbounds double, double* %xvel, i64 6
  %2 = load double, double* %arrayidx7, align 8, !tbaa !45
  %sub = fsub double %1, %2
  %mul = fmul double %0, %sub
  %arrayidx8 = getelementptr inbounds double, double* %arraydecay, i64 1
  %3 = load double, double* %arrayidx8, align 8, !tbaa !45
  %arrayidx9 = getelementptr inbounds double, double* %xvel, i64 1
  %4 = load double, double* %arrayidx9, align 8, !tbaa !45
  %arrayidx10 = getelementptr inbounds double, double* %xvel, i64 7
  %5 = load double, double* %arrayidx10, align 8, !tbaa !45
  %sub11 = fsub double %4, %5
  %mul12 = fmul double %3, %sub11
  %add = fadd double %mul, %mul12
  %arrayidx13 = getelementptr inbounds double, double* %arraydecay, i64 2
  %6 = load double, double* %arrayidx13, align 8, !tbaa !45
  %arrayidx14 = getelementptr inbounds double, double* %xvel, i64 2
  %7 = load double, double* %arrayidx14, align 8, !tbaa !45
  %arrayidx15 = getelementptr inbounds double, double* %xvel, i64 4
  %8 = load double, double* %arrayidx15, align 8, !tbaa !45
  %sub16 = fsub double %7, %8
  %mul17 = fmul double %6, %sub16
  %add18 = fadd double %add, %mul17
  %arrayidx19 = getelementptr inbounds double, double* %arraydecay, i64 3
  %9 = load double, double* %arrayidx19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds double, double* %xvel, i64 3
  %10 = load double, double* %arrayidx20, align 8, !tbaa !45
  %arrayidx21 = getelementptr inbounds double, double* %xvel, i64 5
  %11 = load double, double* %arrayidx21, align 8, !tbaa !45
  %sub22 = fsub double %10, %11
  %mul23 = fmul double %9, %sub22
  %add24 = fadd double %add18, %mul23
  %mul25 = fmul double %div, %add24
  %arrayidx26 = getelementptr inbounds double, double* %d, i64 0
  store double %mul25, double* %arrayidx26, align 8, !tbaa !45
  %arrayidx27 = getelementptr inbounds double, double* %arraydecay2, i64 0
  %12 = load double, double* %arrayidx27, align 8, !tbaa !45
  %arrayidx28 = getelementptr inbounds double, double* %yvel, i64 0
  %13 = load double, double* %arrayidx28, align 8, !tbaa !45
  %arrayidx29 = getelementptr inbounds double, double* %yvel, i64 6
  %14 = load double, double* %arrayidx29, align 8, !tbaa !45
  %sub30 = fsub double %13, %14
  %mul31 = fmul double %12, %sub30
  %arrayidx32 = getelementptr inbounds double, double* %arraydecay2, i64 1
  %15 = load double, double* %arrayidx32, align 8, !tbaa !45
  %arrayidx33 = getelementptr inbounds double, double* %yvel, i64 1
  %16 = load double, double* %arrayidx33, align 8, !tbaa !45
  %arrayidx34 = getelementptr inbounds double, double* %yvel, i64 7
  %17 = load double, double* %arrayidx34, align 8, !tbaa !45
  %sub35 = fsub double %16, %17
  %mul36 = fmul double %15, %sub35
  %add37 = fadd double %mul31, %mul36
  %arrayidx38 = getelementptr inbounds double, double* %arraydecay2, i64 2
  %18 = load double, double* %arrayidx38, align 8, !tbaa !45
  %arrayidx39 = getelementptr inbounds double, double* %yvel, i64 2
  %19 = load double, double* %arrayidx39, align 8, !tbaa !45
  %arrayidx40 = getelementptr inbounds double, double* %yvel, i64 4
  %20 = load double, double* %arrayidx40, align 8, !tbaa !45
  %sub41 = fsub double %19, %20
  %mul42 = fmul double %18, %sub41
  %add43 = fadd double %add37, %mul42
  %arrayidx44 = getelementptr inbounds double, double* %arraydecay2, i64 3
  %21 = load double, double* %arrayidx44, align 8, !tbaa !45
  %arrayidx45 = getelementptr inbounds double, double* %yvel, i64 3
  %22 = load double, double* %arrayidx45, align 8, !tbaa !45
  %arrayidx46 = getelementptr inbounds double, double* %yvel, i64 5
  %23 = load double, double* %arrayidx46, align 8, !tbaa !45
  %sub47 = fsub double %22, %23
  %mul48 = fmul double %21, %sub47
  %add49 = fadd double %add43, %mul48
  %mul50 = fmul double %div, %add49
  %arrayidx51 = getelementptr inbounds double, double* %d, i64 1
  store double %mul50, double* %arrayidx51, align 8, !tbaa !45
  %arrayidx52 = getelementptr inbounds double, double* %arraydecay4, i64 0
  %24 = load double, double* %arrayidx52, align 8, !tbaa !45
  %arrayidx53 = getelementptr inbounds double, double* %zvel, i64 0
  %25 = load double, double* %arrayidx53, align 8, !tbaa !45
  %arrayidx54 = getelementptr inbounds double, double* %zvel, i64 6
  %26 = load double, double* %arrayidx54, align 8, !tbaa !45
  %sub55 = fsub double %25, %26
  %mul56 = fmul double %24, %sub55
  %arrayidx57 = getelementptr inbounds double, double* %arraydecay4, i64 1
  %27 = load double, double* %arrayidx57, align 8, !tbaa !45
  %arrayidx58 = getelementptr inbounds double, double* %zvel, i64 1
  %28 = load double, double* %arrayidx58, align 8, !tbaa !45
  %arrayidx59 = getelementptr inbounds double, double* %zvel, i64 7
  %29 = load double, double* %arrayidx59, align 8, !tbaa !45
  %sub60 = fsub double %28, %29
  %mul61 = fmul double %27, %sub60
  %add62 = fadd double %mul56, %mul61
  %arrayidx63 = getelementptr inbounds double, double* %arraydecay4, i64 2
  %30 = load double, double* %arrayidx63, align 8, !tbaa !45
  %arrayidx64 = getelementptr inbounds double, double* %zvel, i64 2
  %31 = load double, double* %arrayidx64, align 8, !tbaa !45
  %arrayidx65 = getelementptr inbounds double, double* %zvel, i64 4
  %32 = load double, double* %arrayidx65, align 8, !tbaa !45
  %sub66 = fsub double %31, %32
  %mul67 = fmul double %30, %sub66
  %add68 = fadd double %add62, %mul67
  %arrayidx69 = getelementptr inbounds double, double* %arraydecay4, i64 3
  %33 = load double, double* %arrayidx69, align 8, !tbaa !45
  %arrayidx70 = getelementptr inbounds double, double* %zvel, i64 3
  %34 = load double, double* %arrayidx70, align 8, !tbaa !45
  %arrayidx71 = getelementptr inbounds double, double* %zvel, i64 5
  %35 = load double, double* %arrayidx71, align 8, !tbaa !45
  %sub72 = fsub double %34, %35
  %mul73 = fmul double %33, %sub72
  %add74 = fadd double %add68, %mul73
  %mul75 = fmul double %div, %add74
  %arrayidx76 = getelementptr inbounds double, double* %d, i64 2
  store double %mul75, double* %arrayidx76, align 8, !tbaa !45
  %arrayidx77 = getelementptr inbounds double, double* %arraydecay, i64 0
  %36 = load double, double* %arrayidx77, align 8, !tbaa !45
  %arrayidx78 = getelementptr inbounds double, double* %yvel, i64 0
  %37 = load double, double* %arrayidx78, align 8, !tbaa !45
  %arrayidx79 = getelementptr inbounds double, double* %yvel, i64 6
  %38 = load double, double* %arrayidx79, align 8, !tbaa !45
  %sub80 = fsub double %37, %38
  %mul81 = fmul double %36, %sub80
  %arrayidx82 = getelementptr inbounds double, double* %arraydecay, i64 1
  %39 = load double, double* %arrayidx82, align 8, !tbaa !45
  %arrayidx83 = getelementptr inbounds double, double* %yvel, i64 1
  %40 = load double, double* %arrayidx83, align 8, !tbaa !45
  %arrayidx84 = getelementptr inbounds double, double* %yvel, i64 7
  %41 = load double, double* %arrayidx84, align 8, !tbaa !45
  %sub85 = fsub double %40, %41
  %mul86 = fmul double %39, %sub85
  %add87 = fadd double %mul81, %mul86
  %arrayidx88 = getelementptr inbounds double, double* %arraydecay, i64 2
  %42 = load double, double* %arrayidx88, align 8, !tbaa !45
  %arrayidx89 = getelementptr inbounds double, double* %yvel, i64 2
  %43 = load double, double* %arrayidx89, align 8, !tbaa !45
  %arrayidx90 = getelementptr inbounds double, double* %yvel, i64 4
  %44 = load double, double* %arrayidx90, align 8, !tbaa !45
  %sub91 = fsub double %43, %44
  %mul92 = fmul double %42, %sub91
  %add93 = fadd double %add87, %mul92
  %arrayidx94 = getelementptr inbounds double, double* %arraydecay, i64 3
  %45 = load double, double* %arrayidx94, align 8, !tbaa !45
  %arrayidx95 = getelementptr inbounds double, double* %yvel, i64 3
  %46 = load double, double* %arrayidx95, align 8, !tbaa !45
  %arrayidx96 = getelementptr inbounds double, double* %yvel, i64 5
  %47 = load double, double* %arrayidx96, align 8, !tbaa !45
  %sub97 = fsub double %46, %47
  %mul98 = fmul double %45, %sub97
  %add99 = fadd double %add93, %mul98
  %mul100 = fmul double %div, %add99
  %arrayidx101 = getelementptr inbounds double, double* %arraydecay2, i64 0
  %48 = load double, double* %arrayidx101, align 8, !tbaa !45
  %arrayidx102 = getelementptr inbounds double, double* %xvel, i64 0
  %49 = load double, double* %arrayidx102, align 8, !tbaa !45
  %arrayidx103 = getelementptr inbounds double, double* %xvel, i64 6
  %50 = load double, double* %arrayidx103, align 8, !tbaa !45
  %sub104 = fsub double %49, %50
  %mul105 = fmul double %48, %sub104
  %arrayidx106 = getelementptr inbounds double, double* %arraydecay2, i64 1
  %51 = load double, double* %arrayidx106, align 8, !tbaa !45
  %arrayidx107 = getelementptr inbounds double, double* %xvel, i64 1
  %52 = load double, double* %arrayidx107, align 8, !tbaa !45
  %arrayidx108 = getelementptr inbounds double, double* %xvel, i64 7
  %53 = load double, double* %arrayidx108, align 8, !tbaa !45
  %sub109 = fsub double %52, %53
  %mul110 = fmul double %51, %sub109
  %add111 = fadd double %mul105, %mul110
  %arrayidx112 = getelementptr inbounds double, double* %arraydecay2, i64 2
  %54 = load double, double* %arrayidx112, align 8, !tbaa !45
  %arrayidx113 = getelementptr inbounds double, double* %xvel, i64 2
  %55 = load double, double* %arrayidx113, align 8, !tbaa !45
  %arrayidx114 = getelementptr inbounds double, double* %xvel, i64 4
  %56 = load double, double* %arrayidx114, align 8, !tbaa !45
  %sub115 = fsub double %55, %56
  %mul116 = fmul double %54, %sub115
  %add117 = fadd double %add111, %mul116
  %arrayidx118 = getelementptr inbounds double, double* %arraydecay2, i64 3
  %57 = load double, double* %arrayidx118, align 8, !tbaa !45
  %arrayidx119 = getelementptr inbounds double, double* %xvel, i64 3
  %58 = load double, double* %arrayidx119, align 8, !tbaa !45
  %arrayidx120 = getelementptr inbounds double, double* %xvel, i64 5
  %59 = load double, double* %arrayidx120, align 8, !tbaa !45
  %sub121 = fsub double %58, %59
  %mul122 = fmul double %57, %sub121
  %add123 = fadd double %add117, %mul122
  %mul124 = fmul double %div, %add123
  %arrayidx125 = getelementptr inbounds double, double* %arraydecay, i64 0
  %60 = load double, double* %arrayidx125, align 8, !tbaa !45
  %arrayidx126 = getelementptr inbounds double, double* %zvel, i64 0
  %61 = load double, double* %arrayidx126, align 8, !tbaa !45
  %arrayidx127 = getelementptr inbounds double, double* %zvel, i64 6
  %62 = load double, double* %arrayidx127, align 8, !tbaa !45
  %sub128 = fsub double %61, %62
  %mul129 = fmul double %60, %sub128
  %arrayidx130 = getelementptr inbounds double, double* %arraydecay, i64 1
  %63 = load double, double* %arrayidx130, align 8, !tbaa !45
  %arrayidx131 = getelementptr inbounds double, double* %zvel, i64 1
  %64 = load double, double* %arrayidx131, align 8, !tbaa !45
  %arrayidx132 = getelementptr inbounds double, double* %zvel, i64 7
  %65 = load double, double* %arrayidx132, align 8, !tbaa !45
  %sub133 = fsub double %64, %65
  %mul134 = fmul double %63, %sub133
  %add135 = fadd double %mul129, %mul134
  %arrayidx136 = getelementptr inbounds double, double* %arraydecay, i64 2
  %66 = load double, double* %arrayidx136, align 8, !tbaa !45
  %arrayidx137 = getelementptr inbounds double, double* %zvel, i64 2
  %67 = load double, double* %arrayidx137, align 8, !tbaa !45
  %arrayidx138 = getelementptr inbounds double, double* %zvel, i64 4
  %68 = load double, double* %arrayidx138, align 8, !tbaa !45
  %sub139 = fsub double %67, %68
  %mul140 = fmul double %66, %sub139
  %add141 = fadd double %add135, %mul140
  %arrayidx142 = getelementptr inbounds double, double* %arraydecay, i64 3
  %69 = load double, double* %arrayidx142, align 8, !tbaa !45
  %arrayidx143 = getelementptr inbounds double, double* %zvel, i64 3
  %70 = load double, double* %arrayidx143, align 8, !tbaa !45
  %arrayidx144 = getelementptr inbounds double, double* %zvel, i64 5
  %71 = load double, double* %arrayidx144, align 8, !tbaa !45
  %sub145 = fsub double %70, %71
  %mul146 = fmul double %69, %sub145
  %add147 = fadd double %add141, %mul146
  %mul148 = fmul double %div, %add147
  %arrayidx149 = getelementptr inbounds double, double* %arraydecay4, i64 0
  %72 = load double, double* %arrayidx149, align 8, !tbaa !45
  %arrayidx150 = getelementptr inbounds double, double* %xvel, i64 0
  %73 = load double, double* %arrayidx150, align 8, !tbaa !45
  %arrayidx151 = getelementptr inbounds double, double* %xvel, i64 6
  %74 = load double, double* %arrayidx151, align 8, !tbaa !45
  %sub152 = fsub double %73, %74
  %mul153 = fmul double %72, %sub152
  %arrayidx154 = getelementptr inbounds double, double* %arraydecay4, i64 1
  %75 = load double, double* %arrayidx154, align 8, !tbaa !45
  %arrayidx155 = getelementptr inbounds double, double* %xvel, i64 1
  %76 = load double, double* %arrayidx155, align 8, !tbaa !45
  %arrayidx156 = getelementptr inbounds double, double* %xvel, i64 7
  %77 = load double, double* %arrayidx156, align 8, !tbaa !45
  %sub157 = fsub double %76, %77
  %mul158 = fmul double %75, %sub157
  %add159 = fadd double %mul153, %mul158
  %arrayidx160 = getelementptr inbounds double, double* %arraydecay4, i64 2
  %78 = load double, double* %arrayidx160, align 8, !tbaa !45
  %arrayidx161 = getelementptr inbounds double, double* %xvel, i64 2
  %79 = load double, double* %arrayidx161, align 8, !tbaa !45
  %arrayidx162 = getelementptr inbounds double, double* %xvel, i64 4
  %80 = load double, double* %arrayidx162, align 8, !tbaa !45
  %sub163 = fsub double %79, %80
  %mul164 = fmul double %78, %sub163
  %add165 = fadd double %add159, %mul164
  %arrayidx166 = getelementptr inbounds double, double* %arraydecay4, i64 3
  %81 = load double, double* %arrayidx166, align 8, !tbaa !45
  %arrayidx167 = getelementptr inbounds double, double* %xvel, i64 3
  %82 = load double, double* %arrayidx167, align 8, !tbaa !45
  %arrayidx168 = getelementptr inbounds double, double* %xvel, i64 5
  %83 = load double, double* %arrayidx168, align 8, !tbaa !45
  %sub169 = fsub double %82, %83
  %mul170 = fmul double %81, %sub169
  %add171 = fadd double %add165, %mul170
  %mul172 = fmul double %div, %add171
  %arrayidx173 = getelementptr inbounds double, double* %arraydecay2, i64 0
  %84 = load double, double* %arrayidx173, align 8, !tbaa !45
  %arrayidx174 = getelementptr inbounds double, double* %zvel, i64 0
  %85 = load double, double* %arrayidx174, align 8, !tbaa !45
  %arrayidx175 = getelementptr inbounds double, double* %zvel, i64 6
  %86 = load double, double* %arrayidx175, align 8, !tbaa !45
  %sub176 = fsub double %85, %86
  %mul177 = fmul double %84, %sub176
  %arrayidx178 = getelementptr inbounds double, double* %arraydecay2, i64 1
  %87 = load double, double* %arrayidx178, align 8, !tbaa !45
  %arrayidx179 = getelementptr inbounds double, double* %zvel, i64 1
  %88 = load double, double* %arrayidx179, align 8, !tbaa !45
  %arrayidx180 = getelementptr inbounds double, double* %zvel, i64 7
  %89 = load double, double* %arrayidx180, align 8, !tbaa !45
  %sub181 = fsub double %88, %89
  %mul182 = fmul double %87, %sub181
  %add183 = fadd double %mul177, %mul182
  %arrayidx184 = getelementptr inbounds double, double* %arraydecay2, i64 2
  %90 = load double, double* %arrayidx184, align 8, !tbaa !45
  %arrayidx185 = getelementptr inbounds double, double* %zvel, i64 2
  %91 = load double, double* %arrayidx185, align 8, !tbaa !45
  %arrayidx186 = getelementptr inbounds double, double* %zvel, i64 4
  %92 = load double, double* %arrayidx186, align 8, !tbaa !45
  %sub187 = fsub double %91, %92
  %mul188 = fmul double %90, %sub187
  %add189 = fadd double %add183, %mul188
  %arrayidx190 = getelementptr inbounds double, double* %arraydecay2, i64 3
  %93 = load double, double* %arrayidx190, align 8, !tbaa !45
  %arrayidx191 = getelementptr inbounds double, double* %zvel, i64 3
  %94 = load double, double* %arrayidx191, align 8, !tbaa !45
  %arrayidx192 = getelementptr inbounds double, double* %zvel, i64 5
  %95 = load double, double* %arrayidx192, align 8, !tbaa !45
  %sub193 = fsub double %94, %95
  %mul194 = fmul double %93, %sub193
  %add195 = fadd double %add189, %mul194
  %mul196 = fmul double %div, %add195
  %arrayidx197 = getelementptr inbounds double, double* %arraydecay4, i64 0
  %96 = load double, double* %arrayidx197, align 8, !tbaa !45
  %arrayidx198 = getelementptr inbounds double, double* %yvel, i64 0
  %97 = load double, double* %arrayidx198, align 8, !tbaa !45
  %arrayidx199 = getelementptr inbounds double, double* %yvel, i64 6
  %98 = load double, double* %arrayidx199, align 8, !tbaa !45
  %sub200 = fsub double %97, %98
  %mul201 = fmul double %96, %sub200
  %arrayidx202 = getelementptr inbounds double, double* %arraydecay4, i64 1
  %99 = load double, double* %arrayidx202, align 8, !tbaa !45
  %arrayidx203 = getelementptr inbounds double, double* %yvel, i64 1
  %100 = load double, double* %arrayidx203, align 8, !tbaa !45
  %arrayidx204 = getelementptr inbounds double, double* %yvel, i64 7
  %101 = load double, double* %arrayidx204, align 8, !tbaa !45
  %sub205 = fsub double %100, %101
  %mul206 = fmul double %99, %sub205
  %add207 = fadd double %mul201, %mul206
  %arrayidx208 = getelementptr inbounds double, double* %arraydecay4, i64 2
  %102 = load double, double* %arrayidx208, align 8, !tbaa !45
  %arrayidx209 = getelementptr inbounds double, double* %yvel, i64 2
  %103 = load double, double* %arrayidx209, align 8, !tbaa !45
  %arrayidx210 = getelementptr inbounds double, double* %yvel, i64 4
  %104 = load double, double* %arrayidx210, align 8, !tbaa !45
  %sub211 = fsub double %103, %104
  %mul212 = fmul double %102, %sub211
  %add213 = fadd double %add207, %mul212
  %arrayidx214 = getelementptr inbounds double, double* %arraydecay4, i64 3
  %105 = load double, double* %arrayidx214, align 8, !tbaa !45
  %arrayidx215 = getelementptr inbounds double, double* %yvel, i64 3
  %106 = load double, double* %arrayidx215, align 8, !tbaa !45
  %arrayidx216 = getelementptr inbounds double, double* %yvel, i64 5
  %107 = load double, double* %arrayidx216, align 8, !tbaa !45
  %sub217 = fsub double %106, %107
  %mul218 = fmul double %105, %sub217
  %add219 = fadd double %add213, %mul218
  %mul220 = fmul double %div, %add219
  %add221 = fadd double %mul124, %mul100
  %mul222 = fmul double 5.000000e-01, %add221
  %arrayidx223 = getelementptr inbounds double, double* %d, i64 5
  store double %mul222, double* %arrayidx223, align 8, !tbaa !45
  %add224 = fadd double %mul172, %mul148
  %mul225 = fmul double 5.000000e-01, %add224
  %arrayidx226 = getelementptr inbounds double, double* %d, i64 4
  store double %mul225, double* %arrayidx226, align 8, !tbaa !45
  %add227 = fadd double %mul196, %mul220
  %mul228 = fmul double 5.000000e-01, %add227
  %arrayidx229 = getelementptr inbounds double, double* %d, i64 3
  store double %mul228, double* %arrayidx229, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_dxx = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 29
  %0 = load double*, double** %m_dxx, align 8, !tbaa !128
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_dyy = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 30
  %0 = load double*, double** %m_dyy, align 8, !tbaa !129
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_dzz = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 31
  %0 = load double*, double** %m_dzz, align 8, !tbaa !130
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @_ZL8AreaFacedddddddddddd(double %x0, double %x1, double %x2, double %x3, double %y0, double %y1, double %y2, double %y3, double %z0, double %z1, double %z2, double %z3) #10 {
entry:
  %sub = fsub double %x2, %x0
  %sub1 = fsub double %x3, %x1
  %sub2 = fsub double %sub, %sub1
  %sub3 = fsub double %y2, %y0
  %sub4 = fsub double %y3, %y1
  %sub5 = fsub double %sub3, %sub4
  %sub6 = fsub double %z2, %z0
  %sub7 = fsub double %z3, %z1
  %sub8 = fsub double %sub6, %sub7
  %sub9 = fsub double %x2, %x0
  %sub10 = fsub double %x3, %x1
  %add = fadd double %sub9, %sub10
  %sub11 = fsub double %y2, %y0
  %sub12 = fsub double %y3, %y1
  %add13 = fadd double %sub11, %sub12
  %sub14 = fsub double %z2, %z0
  %sub15 = fsub double %z3, %z1
  %add16 = fadd double %sub14, %sub15
  %mul = fmul double %sub2, %sub2
  %mul17 = fmul double %sub5, %sub5
  %add18 = fadd double %mul, %mul17
  %mul19 = fmul double %sub8, %sub8
  %add20 = fadd double %add18, %mul19
  %mul21 = fmul double %add, %add
  %mul22 = fmul double %add13, %add13
  %add23 = fadd double %mul21, %mul22
  %mul24 = fmul double %add16, %add16
  %add25 = fadd double %add23, %mul24
  %mul26 = fmul double %add20, %add25
  %mul27 = fmul double %sub2, %add
  %mul28 = fmul double %sub5, %add13
  %add29 = fadd double %mul27, %mul28
  %mul30 = fmul double %sub8, %add16
  %add31 = fadd double %add29, %mul30
  %mul32 = fmul double %sub2, %add
  %mul33 = fmul double %sub5, %add13
  %add34 = fadd double %mul32, %mul33
  %mul35 = fmul double %sub8, %add16
  %add36 = fadd double %add34, %mul35
  %mul37 = fmul double %add31, %add36
  %sub38 = fsub double %mul26, %mul37
  ret double %sub38
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZSt3maxIdERKT_S2_S2_(double* nonnull align 8 dereferenceable(8) %__a, double* nonnull align 8 dereferenceable(8) %__b) #10 comdat {
entry:
  %0 = load double, double* %__a, align 8, !tbaa !45
  %1 = load double, double* %__b, align 8, !tbaa !45
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi double* [ %__b, %if.then ], [ %__a, %if.end ]
  ret double* %retval.0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_Z4SQRTd(double %arg) #10 comdat {
entry:
  %call = call double @sqrt(double %arg) #14
  ret double %call
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #15 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %opts = alloca %struct.cmdLineOpts, align 4
  %col = alloca i32, align 4
  %row = alloca i32, align 4
  %plane = alloca i32, align 4
  %side = alloca i32, align 4
  %start = alloca %struct.timeval, align 8
  %end = alloca %struct.timeval, align 8
  %0 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.start.p0i8(i64 36, i8* %0) #14
  %its = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 0
  store i32 9999999, i32* %its, align 4, !tbaa !131
  %nx = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  store i32 30, i32* %nx, align 4, !tbaa !133
  %numReg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 2
  store i32 11, i32* %numReg, align 4, !tbaa !134
  %numFiles = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 3
  store i32 1, i32* %numFiles, align 4, !tbaa !135
  %showProg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 4
  store i32 0, i32* %showProg, align 4, !tbaa !136
  %quiet = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  store i32 0, i32* %quiet, align 4, !tbaa !137
  %viz = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 6
  store i32 0, i32* %viz, align 4, !tbaa !138
  %balance = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 8
  store i32 1, i32* %balance, align 4, !tbaa !139
  %cost = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 7
  store i32 1, i32* %cost, align 4, !tbaa !140
  call void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %argc, i8** %argv, i32 0, %struct.cmdLineOpts* %opts)
  br i1 true, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %quiet1 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  %1 = load i32, i32* %quiet1, align 4, !tbaa !137
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %nx3 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %2 = load i32, i32* %nx3, align 4, !tbaa !133
  %call4 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call, i32 %2)
  %call5 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1.5, i64 0, i64 0))
  %call6 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2.6, i64 0, i64 0))
  %call7 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call6, i32 1)
  %call8 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0))
  %call9 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4.8, i64 0, i64 0))
  %nx10 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %3 = load i32, i32* %nx10, align 4, !tbaa !133
  %conv11 = sext i32 %3 to i64
  %mul = mul nsw i64 1, %conv11
  %nx12 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %4 = load i32, i32* %nx12, align 4, !tbaa !133
  %conv13 = sext i32 %4 to i64
  %mul14 = mul nsw i64 %mul, %conv13
  %nx15 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %5 = load i32, i32* %nx15, align 4, !tbaa !133
  %conv16 = sext i32 %5 to i64
  %mul17 = mul nsw i64 %mul14, %conv16
  %call18 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %call9, i64 %mul17)
  %call19 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %call20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %call21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.7, i64 0, i64 0))
  %call22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  %call23 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %call24 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %call25 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %call26 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = bitcast i32* %col to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #14
  %7 = bitcast i32* %row to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #14
  %8 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #14
  %9 = bitcast i32* %side to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #14
  call void @_Z14InitMeshDecompiiPiS_S_S_(i32 1, i32 0, i32* %col, i32* %row, i32* %plane, i32* %side)
  %call27 = call noalias nonnull i8* @_Znwm(i64 1312) #17
  %10 = bitcast i8* %call27 to %class.Domain*
  %11 = load i32, i32* %col, align 4, !tbaa !34
  %12 = load i32, i32* %row, align 4, !tbaa !34
  %13 = load i32, i32* %plane, align 4, !tbaa !34
  %nx28 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %14 = load i32, i32* %nx28, align 4, !tbaa !133
  %15 = load i32, i32* %side, align 4, !tbaa !34
  %numReg29 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 2
  %16 = load i32, i32* %numReg29, align 4, !tbaa !134
  %balance30 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 8
  %17 = load i32, i32* %balance30, align 4, !tbaa !139
  %cost31 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 7
  %18 = load i32, i32* %cost31, align 4, !tbaa !140
  invoke void @_ZN6DomainC1Eiiiiiiiii(%class.Domain* %10, i32 1, i32 %11, i32 %12, i32 %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %if.end
  %19 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %19) #14
  %call32 = call i32 @gettimeofday(%struct.timeval* %start, %struct.timezone* null) #14
  br label %while.cond

while.cond:                                       ; preds = %if.end60, %invoke.cont
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %10)
  %20 = load double, double* %call33, align 8, !tbaa !45
  %call34 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %10)
  %21 = load double, double* %call34, align 8, !tbaa !45
  %cmp35 = fcmp olt double %20, %21
  br i1 %cmp35, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call36 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %10)
  %22 = load i32, i32* %call36, align 4, !tbaa !34
  %its37 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 0
  %23 = load i32, i32* %its37, align 4, !tbaa !131
  %cmp38 = icmp slt i32 %22, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %24 = phi i1 [ false, %while.cond ], [ %cmp38, %land.rhs ]
  br i1 %24, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @_ZL13TimeIncrementR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %10)
  call void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %10)
  %showProg39 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 4
  %25 = load i32, i32* %showProg39, align 4, !tbaa !136
  %cmp40 = icmp ne i32 %25, 0
  br i1 %cmp40, label %land.lhs.true41, label %if.end60

land.lhs.true41:                                  ; preds = %while.body
  %quiet42 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  %26 = load i32, i32* %quiet42, align 4, !tbaa !137
  %cmp43 = icmp eq i32 %26, 0
  br i1 %cmp43, label %land.lhs.true44, label %if.end60

land.lhs.true44:                                  ; preds = %land.lhs.true41
  br i1 true, label %if.then46, label %if.end60

if.then46:                                        ; preds = %land.lhs.true44
  %call47 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %call48 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %10)
  %27 = load i32, i32* %call48, align 4, !tbaa !34
  %call49 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call47, i32 %27)
  %call50 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %call51 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %call50, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt10scientificRSt8ios_base)
  %call52 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %10)
  %28 = load double, double* %call53, align 8, !tbaa !45
  %call54 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call52, double %28)
  %call55 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %call56 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %call57 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %10)
  %29 = load double, double* %call57, align 8, !tbaa !45
  %call58 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call56, double %29)
  %call59 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3.7, i64 0, i64 0))
  %vtable = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !141
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %30 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %30, align 8
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset
  %31 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  call void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(%"class.std::ios_base"* %31, i32 260)
  br label %if.end60

lpad:                                             ; preds = %if.end
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  %34 = extractvalue { i8*, i32 } %32, 1
  call void @_ZdlPv(i8* %call27) #20
  %35 = bitcast i32* %side to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #14
  %36 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #14
  %37 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #14
  %38 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #14
  %39 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %39) #14
  br label %eh.resume

if.end60:                                         ; preds = %if.then46, %land.lhs.true44, %land.lhs.true41, %while.body
  br label %while.cond, !llvm.loop !143

while.end:                                        ; preds = %land.end
  %40 = bitcast %struct.timeval* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %40) #14
  %call61 = call i32 @gettimeofday(%struct.timeval* %end, %struct.timezone* null) #14
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 0
  %41 = load i64, i64* %tv_sec, align 8, !tbaa !144
  %tv_sec62 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 0
  %42 = load i64, i64* %tv_sec62, align 8, !tbaa !144
  %sub = sub nsw i64 %41, %42
  %conv63 = sitofp i64 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i32 0, i32 1
  %43 = load i64, i64* %tv_usec, align 8, !tbaa !146
  %tv_usec64 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i32 0, i32 1
  %44 = load i64, i64* %tv_usec64, align 8, !tbaa !146
  %sub65 = sub nsw i64 %43, %44
  %conv66 = sitofp i64 %sub65 to double
  %div67 = fdiv double %conv66, 1.000000e+06
  %add68 = fadd double %conv63, %div67
  %viz69 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 6
  %45 = load i32, i32* %viz69, align 4, !tbaa !138
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then70, label %if.end72

if.then70:                                        ; preds = %while.end
  %numFiles71 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 3
  %46 = load i32, i32* %numFiles71, align 4, !tbaa !135
  call void @_Z11DumpToVisitR6Domainiii(%class.Domain* nonnull align 8 dereferenceable(1312) %10, i32 %46, i32 0, i32 1)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %while.end
  br i1 true, label %land.lhs.true74, label %if.end79

land.lhs.true74:                                  ; preds = %if.end72
  %quiet75 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  %47 = load i32, i32* %quiet75, align 4, !tbaa !137
  %cmp76 = icmp eq i32 %47, 0
  br i1 %cmp76, label %if.then77, label %if.end79

if.then77:                                        ; preds = %land.lhs.true74
  %nx78 = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %48 = load i32, i32* %nx78, align 4, !tbaa !133
  call void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %add68, %class.Domain* nonnull align 8 dereferenceable(1312) %10, i32 %48, i32 1)
  br label %if.end79

if.end79:                                         ; preds = %if.then77, %land.lhs.true74, %if.end72
  %isnull = icmp eq %class.Domain* %10, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %if.end79
  call void @_ZN6DomainD1Ev(%class.Domain* %10) #14
  %49 = bitcast %class.Domain* %10 to i8*
  call void @_ZdlPv(i8* %49) #20
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %if.end79
  %50 = bitcast %struct.timeval* %end to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %50) #14
  %51 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %51) #14
  %52 = bitcast i32* %side to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #14
  %53 = bitcast i32* %plane to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #14
  %54 = bitcast i32* %row to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #14
  %55 = bitcast i32* %col to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #14
  %56 = bitcast %struct.cmdLineOpts* %opts to i8*
  call void @llvm.lifetime.end.p0i8(i64 36, i8* %56) #14
  ret i32 0

eh.resume:                                        ; preds = %lpad
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %33, 0
  %lpad.val80 = insertvalue { i8*, i32 } %lpad.val, i32 %34, 1
  resume { i8*, i32 } %lpad.val80
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"*, i32) #12

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEl(%"class.std::basic_ostream"* %this, i64 %__n) #0 align 2 {
entry:
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"* %this, i64 %__n)
  ret %"class.std::basic_ostream"* %call
}

; Function Attrs: nounwind
declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #6

; Function Attrs: inlinehint uwtable
define internal void @_ZL13TimeIncrementR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8stoptimeEv(%class.Domain* %domain)
  %0 = load double, double* %call, align 8, !tbaa !45
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %domain)
  %1 = load double, double* %call1, align 8, !tbaa !45
  %sub = fsub double %0, %1
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dtfixedEv(%class.Domain* %domain)
  %2 = load double, double* %call2, align 8, !tbaa !45
  %cmp = fcmp ole double %2, 0.000000e+00
  br i1 %cmp, label %land.lhs.true, label %if.end36

land.lhs.true:                                    ; preds = %entry
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %domain)
  %3 = load i32, i32* %call3, align 4, !tbaa !34
  %cmp4 = icmp ne i32 %3, 0
  br i1 %cmp4, label %if.then, label %if.end36

if.then:                                          ; preds = %land.lhs.true
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %4 = load double, double* %call5, align 8, !tbaa !45
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %domain)
  %5 = load double, double* %call6, align 8, !tbaa !45
  %cmp7 = fcmp olt double %5, 1.000000e+20
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %domain)
  %6 = load double, double* %call9, align 8, !tbaa !45
  %div = fdiv double %6, 2.000000e+00
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %gnewdt.0 = phi double [ %div, %if.then8 ], [ 1.000000e+20, %if.then ]
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %domain)
  %7 = load double, double* %call10, align 8, !tbaa !45
  %cmp11 = fcmp olt double %7, %gnewdt.0
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %domain)
  %8 = load double, double* %call13, align 8, !tbaa !45
  %mul = fmul double %8, 2.000000e+00
  %div14 = fdiv double %mul, 3.000000e+00
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end
  %gnewdt.1 = phi double [ %div14, %if.then12 ], [ %gnewdt.0, %if.end ]
  %div16 = fdiv double %gnewdt.1, %4
  %cmp17 = fcmp oge double %div16, 1.000000e+00
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end15
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultlbEv(%class.Domain* %domain)
  %9 = load double, double* %call19, align 8, !tbaa !45
  %cmp20 = fcmp olt double %div16, %9
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  br label %if.end28

if.else:                                          ; preds = %if.then18
  %call22 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %domain)
  %10 = load double, double* %call22, align 8, !tbaa !45
  %cmp23 = fcmp ogt double %div16, %10
  br i1 %cmp23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.else
  %call25 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain15deltatimemultubEv(%class.Domain* %domain)
  %11 = load double, double* %call25, align 8, !tbaa !45
  %mul26 = fmul double %4, %11
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.else
  %newdt.0 = phi double [ %mul26, %if.then24 ], [ %gnewdt.1, %if.else ]
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then21
  %newdt.1 = phi double [ %4, %if.then21 ], [ %newdt.0, %if.end27 ]
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end15
  %newdt.2 = phi double [ %newdt.1, %if.end28 ], [ %gnewdt.1, %if.end15 ]
  %call30 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %domain)
  %12 = load double, double* %call30, align 8, !tbaa !45
  %cmp31 = fcmp ogt double %newdt.2, %12
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end29
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain5dtmaxEv(%class.Domain* %domain)
  %13 = load double, double* %call33, align 8, !tbaa !45
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end29
  %newdt.3 = phi double [ %13, %if.then32 ], [ %newdt.2, %if.end29 ]
  %call35 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  store double %newdt.3, double* %call35, align 8, !tbaa !45
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %land.lhs.true, %entry
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %14 = load double, double* %call37, align 8, !tbaa !45
  %cmp38 = fcmp ogt double %sub, %14
  br i1 %cmp38, label %land.lhs.true39, label %if.end48

land.lhs.true39:                                  ; preds = %if.end36
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %15 = load double, double* %call40, align 8, !tbaa !45
  %mul41 = fmul double 4.000000e+00, %15
  %div42 = fdiv double %mul41, 3.000000e+00
  %cmp43 = fcmp olt double %sub, %div42
  br i1 %cmp43, label %if.then44, label %if.end48

if.then44:                                        ; preds = %land.lhs.true39
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %16 = load double, double* %call45, align 8, !tbaa !45
  %mul46 = fmul double 2.000000e+00, %16
  %div47 = fdiv double %mul46, 3.000000e+00
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %land.lhs.true39, %if.end36
  %targetdt.0 = phi double [ %div47, %if.then44 ], [ %sub, %land.lhs.true39 ], [ %sub, %if.end36 ]
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %17 = load double, double* %call49, align 8, !tbaa !45
  %cmp50 = fcmp olt double %targetdt.0, %17
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %if.end48
  %call52 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  store double %targetdt.0, double* %call52, align 8, !tbaa !45
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end48
  %call54 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %18 = load double, double* %call54, align 8, !tbaa !45
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4timeEv(%class.Domain* %domain)
  %19 = load double, double* %call55, align 8, !tbaa !45
  %add = fadd double %19, %18
  store double %add, double* %call55, align 8, !tbaa !45
  %call56 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %domain)
  %20 = load i32, i32* %call56, align 4, !tbaa !34
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %call56, align 4, !tbaa !34
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL16LagrangeLeapFrogR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  call void @_ZL13LagrangeNodalR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  call void @_ZL16LagrangeElementsR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %0)
  call void @_ZL27CalcTimeConstraintsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(216) %"class.std::ios_base"* @_ZSt10scientificRSt8ios_base(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %__base) #7 comdat {
entry:
  %call = call i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %__base, i32 256, i32 260)
  ret %"class.std::ios_base"* %__base
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(%"class.std::ios_base"* %this, i32 %__mask) #0 comdat align 2 {
entry:
  %call = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %__mask)
  %_M_flags = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 3
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags, i32 %call)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStcoSt13_Ios_Fmtflags(i32 %__a) #10 comdat {
entry:
  %neg = xor i32 %__a, -1
  ret i32 %neg
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %__a, i32 %__b) #7 comdat {
entry:
  %0 = load i32, i32* %__a, align 4, !tbaa !147
  %call = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %0, i32 %__b)
  store i32 %call, i32* %__a, align 4, !tbaa !147
  ret i32* %__a
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #10 comdat {
entry:
  %and = and i32 %__a, %__b
  ret i32 %and
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"*, double) #12

; Function Attrs: uwtable
define linkonce_odr dso_local i32 @_ZNSt8ios_base4setfESt13_Ios_FmtflagsS0_(%"class.std::ios_base"* %this, i32 %__fmtfl, i32 %__mask) #0 comdat align 2 {
entry:
  %_M_flags = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 3
  %0 = load i32, i32* %_M_flags, align 8, !tbaa !149
  %call = call i32 @_ZStcoSt13_Ios_Fmtflags(i32 %__mask)
  %_M_flags2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 3
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZStaNRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags2, i32 %call)
  %call4 = call i32 @_ZStanSt13_Ios_FmtflagsS_(i32 %__fmtfl, i32 %__mask)
  %_M_flags5 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 3
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %_M_flags5, i32 %call4)
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 4 dereferenceable(4) i32* @_ZStoRRSt13_Ios_FmtflagsS_(i32* nonnull align 4 dereferenceable(4) %__a, i32 %__b) #7 comdat {
entry:
  %0 = load i32, i32* %__a, align 4, !tbaa !147
  %call = call i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %0, i32 %__b)
  store i32 %call, i32* %__a, align 4, !tbaa !147
  ret i32* %__a
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt13_Ios_FmtflagsS_(i32 %__a, i32 %__b) #10 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL13LagrangeNodalR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %0 = load double, double* %call, align 8, !tbaa !45
  %call1 = call double @_ZNK6Domain5u_cutEv(%class.Domain* %domain)
  call void @_ZL17CalcForceForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %domain)
  %1 = load i32, i32* %call2, align 4, !tbaa !34
  call void @_ZL24CalcAccelerationForNodesR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %1)
  call void @_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %domain)
  %2 = load i32, i32* %call3, align 4, !tbaa !34
  call void @_ZL20CalcVelocityForNodesR6Domainddi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %0, double %call1, i32 %2)
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %domain)
  %3 = load i32, i32* %call4, align 4, !tbaa !34
  call void @_ZL20CalcPositionForNodesR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %0, i32 %3)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL16LagrangeElementsR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %numElem) #7 {
entry:
  call void @_ZL20CalcLagrangeElementsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  call void @_ZL13CalcQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  call void @_ZL31ApplyMaterialPropertiesForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  %call = call double @_ZNK6Domain5v_cutEv(%class.Domain* %domain)
  call void @_ZL21UpdateVolumesForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %call, i32 %numElem)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL27CalcTimeConstraintsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %domain)
  store double 1.000000e+20, double* %call, align 8, !tbaa !45
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %domain)
  store double 1.000000e+20, double* %call1, align 8, !tbaa !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %domain)
  %0 = load i32, i32* %call2, align 4, !tbaa !34
  %cmp = icmp slt i32 %r.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %domain, i32 %r.0)
  %1 = load i32, i32* %call3, align 4, !tbaa !34
  %call4 = call i32* @_ZN6Domain11regElemlistEi(%class.Domain* %domain, i32 %r.0)
  %call5 = call double @_ZNK6Domain3qqcEv(%class.Domain* %domain)
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9dtcourantEv(%class.Domain* %domain)
  call void @_ZL29CalcCourantConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %1, i32* %call4, double %call5, double* nonnull align 8 dereferenceable(8) %call6)
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %domain, i32 %r.0)
  %2 = load i32, i32* %call7, align 4, !tbaa !34
  %call8 = call i32* @_ZN6Domain11regElemlistEi(%class.Domain* %domain, i32 %r.0)
  %call9 = call double @_ZNK6Domain7dvovmaxEv(%class.Domain* %domain)
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7dthydroEv(%class.Domain* %domain)
  call void @_ZL27CalcHydroConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %2, i32* %call8, double %call9, double* nonnull align 8 dereferenceable(8) %call10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %r.0, 1
  br label %for.cond, !llvm.loop !154

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZN6Domain11regElemlistEi(%class.Domain* %this, i32 %r) #1 comdat align 2 {
entry:
  %m_regElemlist = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 20
  %0 = load i32**, i32*** %m_regElemlist, align 8, !tbaa !12
  %idxprom = sext i32 %r to i64
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 %idxprom
  %1 = load i32*, i32** %arrayidx, align 8, !tbaa !77
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain3qqcEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_qqc = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 63
  %0 = load double, double* %m_qqc, align 8, !tbaa !25
  ret double %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL29CalcCourantConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %length, i32* %regElemlist, double %qqc, double* nonnull align 8 dereferenceable(8) %dtcourant) #10 {
entry:
  %courant_elem_per_thread = alloca [1 x i32], align 4
  %dtcourant_per_thread = alloca [1 x double], align 8
  %0 = bitcast [1 x i32]* %courant_elem_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  %1 = bitcast [1 x double]* %dtcourant_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %mul = fmul double 6.400000e+01, %qqc
  %mul1 = fmul double %mul, %qqc
  %2 = load double, double* %dtcourant, align 8, !tbaa !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %dtcourant_tmp.0 = phi double [ %2, %entry ], [ %dtcourant_tmp.2, %for.inc ]
  %courant_elem.0 = phi i32 [ -1, %entry ], [ %courant_elem.2, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %length
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %regElemlist, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %domain, i32 %3)
  %4 = load double, double* %call, align 8, !tbaa !45
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %domain, i32 %3)
  %5 = load double, double* %call2, align 8, !tbaa !45
  %mul3 = fmul double %4, %5
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %3)
  %6 = load double, double* %call4, align 8, !tbaa !45
  %cmp5 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %domain, i32 %3)
  %7 = load double, double* %call6, align 8, !tbaa !45
  %mul7 = fmul double %mul1, %7
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %domain, i32 %3)
  %8 = load double, double* %call8, align 8, !tbaa !45
  %mul9 = fmul double %mul7, %8
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %3)
  %9 = load double, double* %call10, align 8, !tbaa !45
  %mul11 = fmul double %mul9, %9
  %call12 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %3)
  %10 = load double, double* %call12, align 8, !tbaa !45
  %mul13 = fmul double %mul11, %10
  %add = fadd double %mul3, %mul13
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %dtf.0 = phi double [ %add, %if.then ], [ %mul3, %for.body ]
  %call14 = call double @_Z4SQRTd(double %dtf.0)
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain6arealgEi(%class.Domain* %domain, i32 %3)
  %11 = load double, double* %call15, align 8, !tbaa !45
  %div = fdiv double %11, %call14
  %call16 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %3)
  %12 = load double, double* %call16, align 8, !tbaa !45
  %cmp17 = fcmp une double %12, 0.000000e+00
  br i1 %cmp17, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end
  %cmp19 = fcmp olt double %div, %dtcourant_tmp.0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then18
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then18
  %dtcourant_tmp.1 = phi double [ %div, %if.then20 ], [ %dtcourant_tmp.0, %if.then18 ]
  %courant_elem.1 = phi i32 [ %3, %if.then20 ], [ %courant_elem.0, %if.then18 ]
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end
  %dtcourant_tmp.2 = phi double [ %dtcourant_tmp.1, %if.end21 ], [ %dtcourant_tmp.0, %if.end ]
  %courant_elem.2 = phi i32 [ %courant_elem.1, %if.end21 ], [ %courant_elem.0, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end22
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !155

for.end:                                          ; preds = %for.cond.cleanup
  %arrayidx24 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 0
  store double %dtcourant_tmp.0, double* %arrayidx24, align 8, !tbaa !45
  %arrayidx26 = getelementptr inbounds [1 x i32], [1 x i32]* %courant_elem_per_thread, i64 0, i64 0
  store i32 %courant_elem.0, i32* %arrayidx26, align 4, !tbaa !34
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc44, %for.end
  br i1 false, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond28
  br label %for.end46

for.body31:                                       ; preds = %for.cond28
  br i1 undef, label %if.then36, label %if.end43

if.then36:                                        ; preds = %for.body31
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %for.body31
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  br label %for.cond28, !llvm.loop !156

for.end46:                                        ; preds = %for.cond.cleanup30
  %arrayidx47 = getelementptr inbounds [1 x i32], [1 x i32]* %courant_elem_per_thread, i64 0, i64 0
  %13 = load i32, i32* %arrayidx47, align 4, !tbaa !34
  %cmp48 = icmp ne i32 %13, -1
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.end46
  %arrayidx50 = getelementptr inbounds [1 x double], [1 x double]* %dtcourant_per_thread, i64 0, i64 0
  %14 = load double, double* %arrayidx50, align 8, !tbaa !45
  store double %14, double* %dtcourant, align 8, !tbaa !45
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %for.end46
  %15 = bitcast [1 x double]* %dtcourant_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #14
  %16 = bitcast [1 x i32]* %courant_elem_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7dvovmaxEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_dvovmax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 68
  %0 = load double, double* %m_dvovmax, align 8, !tbaa !30
  ret double %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL27CalcHydroConstraintForElemsR6DomainiPidRd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %length, i32* %regElemlist, double %dvovmax, double* nonnull align 8 dereferenceable(8) %dthydro) #10 {
entry:
  %hydro_elem_per_thread = alloca [1 x i32], align 4
  %dthydro_per_thread = alloca [1 x double], align 8
  %0 = bitcast [1 x i32]* %hydro_elem_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #14
  %1 = bitcast [1 x double]* %dthydro_per_thread to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %2 = load double, double* %dthydro, align 8, !tbaa !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %dthydro_tmp.0 = phi double [ %2, %entry ], [ %dthydro_tmp.2, %for.inc ]
  %hydro_elem.0 = phi i32 [ -1, %entry ], [ %hydro_elem.2, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %length
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %regElemlist, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %3)
  %4 = load double, double* %call, align 8, !tbaa !45
  %cmp1 = fcmp une double %4, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %3)
  %5 = load double, double* %call2, align 8, !tbaa !45
  %call3 = call double @_Z4FABSd(double %5)
  %add = fadd double %call3, 0x3BC79CA10C924223
  %div = fdiv double %dvovmax, %add
  %cmp4 = fcmp ogt double %dthydro_tmp.0, %div
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %dthydro_tmp.1 = phi double [ %div, %if.then5 ], [ %dthydro_tmp.0, %if.then ]
  %hydro_elem.1 = phi i32 [ %3, %if.then5 ], [ %hydro_elem.0, %if.then ]
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body
  %dthydro_tmp.2 = phi double [ %dthydro_tmp.1, %if.end ], [ %dthydro_tmp.0, %for.body ]
  %hydro_elem.2 = phi i32 [ %hydro_elem.1, %if.end ], [ %hydro_elem.0, %for.body ]
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !157

for.end:                                          ; preds = %for.cond.cleanup
  %arrayidx8 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 0
  store double %dthydro_tmp.0, double* %arrayidx8, align 8, !tbaa !45
  %arrayidx10 = getelementptr inbounds [1 x i32], [1 x i32]* %hydro_elem_per_thread, i64 0, i64 0
  store i32 %hydro_elem.0, i32* %arrayidx10, align 4, !tbaa !34
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end
  br i1 false, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  br label %for.end30

for.body15:                                       ; preds = %for.cond12
  br i1 undef, label %if.then20, label %if.end27

if.then20:                                        ; preds = %for.body15
  br label %if.end27

if.end27:                                         ; preds = %if.then20, %for.body15
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  br label %for.cond12, !llvm.loop !158

for.end30:                                        ; preds = %for.cond.cleanup14
  %arrayidx31 = getelementptr inbounds [1 x i32], [1 x i32]* %hydro_elem_per_thread, i64 0, i64 0
  %6 = load i32, i32* %arrayidx31, align 4, !tbaa !34
  %cmp32 = icmp ne i32 %6, -1
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.end30
  %arrayidx34 = getelementptr inbounds [1 x double], [1 x double]* %dthydro_per_thread, i64 0, i64 0
  %7 = load double, double* %arrayidx34, align 8, !tbaa !45
  store double %7, double* %dthydro, align 8, !tbaa !45
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end30
  %8 = bitcast [1 x double]* %dthydro_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #14
  %9 = bitcast [1 x i32]* %hydro_elem_per_thread to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_vdov = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 47
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_vdov, i64 %conv) #14
  ret double* %call
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_Z4FABSd(double %arg) #10 comdat {
entry:
  %0 = call double @llvm.fabs.f64(double %arg)
  ret double %0
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

; Function Attrs: inlinehint uwtable
define internal void @_ZL20CalcLagrangeElementsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end16

if.then:                                          ; preds = %entry
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9deltatimeEv(%class.Domain* %domain)
  %1 = load double, double* %call1, align 8, !tbaa !45
  call void @_ZN6Domain15AllocateStrainsEi(%class.Domain* %domain, i32 %0)
  call void @_Z22CalcKinematicsForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %1, i32 %0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %k.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp2 = icmp slt i32 %k.0, %0
  br i1 %cmp2, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %domain, i32 %k.0)
  %2 = load double, double* %call3, align 8, !tbaa !45
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %domain, i32 %k.0)
  %3 = load double, double* %call4, align 8, !tbaa !45
  %add = fadd double %2, %3
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %domain, i32 %k.0)
  %4 = load double, double* %call5, align 8, !tbaa !45
  %add6 = fadd double %add, %4
  %div = fdiv double %add6, 3.000000e+00
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %k.0)
  store double %add6, double* %call7, align 8, !tbaa !45
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dxxEi(%class.Domain* %domain, i32 %k.0)
  %5 = load double, double* %call8, align 8, !tbaa !45
  %sub = fsub double %5, %div
  store double %sub, double* %call8, align 8, !tbaa !45
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dyyEi(%class.Domain* %domain, i32 %k.0)
  %6 = load double, double* %call9, align 8, !tbaa !45
  %sub10 = fsub double %6, %div
  store double %sub10, double* %call9, align 8, !tbaa !45
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3dzzEi(%class.Domain* %domain, i32 %k.0)
  %7 = load double, double* %call11, align 8, !tbaa !45
  %sub12 = fsub double %7, %div
  store double %sub12, double* %call11, align 8, !tbaa !45
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %domain, i32 %k.0)
  %8 = load double, double* %call13, align 8, !tbaa !45
  %cmp14 = fcmp ole double %8, 0.000000e+00
  br i1 %cmp14, label %if.then15, label %if.end

if.then15:                                        ; preds = %for.body
  call void @exit(i32 -1) #19
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !159

for.end:                                          ; preds = %for.cond.cleanup
  call void @_ZN6Domain17DeallocateStrainsEv(%class.Domain* %domain)
  br label %if.end16

if.end16:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL13CalcQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end22

if.then:                                          ; preds = %entry
  %call1 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %domain)
  %1 = load i32, i32* %call1, align 4, !tbaa !34
  %mul = mul nsw i32 2, %1
  %call2 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %domain)
  %2 = load i32, i32* %call2, align 4, !tbaa !34
  %mul3 = mul nsw i32 %mul, %2
  %add = add nsw i32 %0, %mul3
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %domain)
  %3 = load i32, i32* %call4, align 4, !tbaa !34
  %mul5 = mul nsw i32 2, %3
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %domain)
  %4 = load i32, i32* %call6, align 4, !tbaa !34
  %mul7 = mul nsw i32 %mul5, %4
  %add8 = add nsw i32 %add, %mul7
  %call9 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeYEv(%class.Domain* %domain)
  %5 = load i32, i32* %call9, align 4, !tbaa !34
  %mul10 = mul nsw i32 2, %5
  %call11 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeZEv(%class.Domain* %domain)
  %6 = load i32, i32* %call11, align 4, !tbaa !34
  %mul12 = mul nsw i32 %mul10, %6
  %add13 = add nsw i32 %add8, %mul12
  call void @_ZN6Domain17AllocateGradientsEii(%class.Domain* %domain, i32 %0, i32 %add13)
  call void @_ZL31CalcMonotonicQGradientsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  call void @_ZL22CalcMonotonicQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  call void @_ZN6Domain19DeallocateGradientsEv(%class.Domain* %domain)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp14 = icmp slt i32 %i.0, %0
  br i1 %cmp14, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %domain, i32 %i.0)
  %7 = load double, double* %call15, align 8, !tbaa !45
  %call16 = call double @_ZNK6Domain5qstopEv(%class.Domain* %domain)
  %cmp17 = fcmp ogt double %7, %call16
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %for.body
  br label %cleanup

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !160

cleanup:                                          ; preds = %if.then18, %for.cond.cleanup
  %idx.0 = phi i32 [ %i.0, %if.then18 ], [ -1, %for.cond.cleanup ]
  br label %for.end

for.end:                                          ; preds = %cleanup
  %cmp19 = icmp sge i32 %idx.0, 0
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %for.end
  call void @exit(i32 -2) #19
  unreachable

if.end21:                                         ; preds = %for.end
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %entry
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL31ApplyMaterialPropertiesForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %vnewc = alloca double*, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end90

if.then:                                          ; preds = %entry
  %call1 = call double @_ZNK6Domain7eosvminEv(%class.Domain* %domain)
  %call2 = call double @_ZNK6Domain7eosvmaxEv(%class.Domain* %domain)
  %1 = bitcast double** %vnewc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %conv = sext i32 %0 to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call3, double** %vnewc, align 8, !tbaa !77
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp4 = icmp slt i32 %i.0, %0
  br i1 %cmp4, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %domain, i32 %i.0)
  %2 = load double, double* %call5, align 8, !tbaa !45
  %3 = load double*, double** %vnewc, align 8, !tbaa !77
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds double, double* %3, i64 %idxprom
  store double %2, double* %arrayidx, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !161

for.end:                                          ; preds = %for.cond.cleanup
  %cmp6 = fcmp une double %call1, 0.000000e+00
  br i1 %cmp6, label %if.then7, label %if.end22

if.then7:                                         ; preds = %for.end
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc19, %if.then7
  %i8.0 = phi i32 [ 0, %if.then7 ], [ %inc20, %for.inc19 ]
  %cmp10 = icmp slt i32 %i8.0, %0
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  br label %for.end21

for.body12:                                       ; preds = %for.cond9
  %4 = load double*, double** %vnewc, align 8, !tbaa !77
  %idxprom13 = sext i32 %i8.0 to i64
  %arrayidx14 = getelementptr inbounds double, double* %4, i64 %idxprom13
  %5 = load double, double* %arrayidx14, align 8, !tbaa !45
  %cmp15 = fcmp olt double %5, %call1
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %for.body12
  %6 = load double*, double** %vnewc, align 8, !tbaa !77
  %idxprom17 = sext i32 %i8.0 to i64
  %arrayidx18 = getelementptr inbounds double, double* %6, i64 %idxprom17
  store double %call1, double* %arrayidx18, align 8, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then16, %for.body12
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %inc20 = add nsw i32 %i8.0, 1
  br label %for.cond9, !llvm.loop !162

for.end21:                                        ; preds = %for.cond.cleanup11
  br label %if.end22

if.end22:                                         ; preds = %for.end21, %for.end
  %cmp23 = fcmp une double %call2, 0.000000e+00
  br i1 %cmp23, label %if.then24, label %if.end40

if.then24:                                        ; preds = %if.end22
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc37, %if.then24
  %i25.0 = phi i32 [ 0, %if.then24 ], [ %inc38, %for.inc37 ]
  %cmp27 = icmp slt i32 %i25.0, %0
  br i1 %cmp27, label %for.body29, label %for.cond.cleanup28

for.cond.cleanup28:                               ; preds = %for.cond26
  br label %for.end39

for.body29:                                       ; preds = %for.cond26
  %7 = load double*, double** %vnewc, align 8, !tbaa !77
  %idxprom30 = sext i32 %i25.0 to i64
  %arrayidx31 = getelementptr inbounds double, double* %7, i64 %idxprom30
  %8 = load double, double* %arrayidx31, align 8, !tbaa !45
  %cmp32 = fcmp ogt double %8, %call2
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %for.body29
  %9 = load double*, double** %vnewc, align 8, !tbaa !77
  %idxprom34 = sext i32 %i25.0 to i64
  %arrayidx35 = getelementptr inbounds double, double* %9, i64 %idxprom34
  store double %call2, double* %arrayidx35, align 8, !tbaa !45
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %for.body29
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %inc38 = add nsw i32 %i25.0, 1
  br label %for.cond26, !llvm.loop !163

for.end39:                                        ; preds = %for.cond.cleanup28
  br label %if.end40

if.end40:                                         ; preds = %for.end39, %if.end22
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc62, %if.end40
  %i41.0 = phi i32 [ 0, %if.end40 ], [ %inc63, %for.inc62 ]
  %cmp43 = icmp slt i32 %i41.0, %0
  br i1 %cmp43, label %for.body45, label %for.cond.cleanup44

for.cond.cleanup44:                               ; preds = %for.cond42
  br label %for.end64

for.body45:                                       ; preds = %for.cond42
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %domain, i32 %i41.0)
  %10 = load double, double* %call46, align 8, !tbaa !45
  %cmp47 = fcmp une double %call1, 0.000000e+00
  br i1 %cmp47, label %if.then48, label %if.end52

if.then48:                                        ; preds = %for.body45
  %cmp49 = fcmp olt double %10, %call1
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then48
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.then48
  %vc.0 = phi double [ %call1, %if.then50 ], [ %10, %if.then48 ]
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %for.body45
  %vc.1 = phi double [ %vc.0, %if.end51 ], [ %10, %for.body45 ]
  %cmp53 = fcmp une double %call2, 0.000000e+00
  br i1 %cmp53, label %if.then54, label %if.end58

if.then54:                                        ; preds = %if.end52
  %cmp55 = fcmp ogt double %vc.1, %call2
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then54
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then54
  %vc.2 = phi double [ %call2, %if.then56 ], [ %vc.1, %if.then54 ]
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end52
  %vc.3 = phi double [ %vc.2, %if.end57 ], [ %vc.1, %if.end52 ]
  %cmp59 = fcmp ole double %vc.3, 0.000000e+00
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @exit(i32 -1) #19
  unreachable

if.end61:                                         ; preds = %if.end58
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %inc63 = add nsw i32 %i41.0, 1
  br label %for.cond42, !llvm.loop !164

for.end64:                                        ; preds = %for.cond.cleanup44
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc87, %for.end64
  %r.0 = phi i32 [ 0, %for.end64 ], [ %inc88, %for.inc87 ]
  %call66 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %domain)
  %11 = load i32, i32* %call66, align 4, !tbaa !34
  %cmp67 = icmp slt i32 %r.0, %11
  br i1 %cmp67, label %for.body69, label %for.cond.cleanup68

for.cond.cleanup68:                               ; preds = %for.cond65
  br label %for.end89

for.body69:                                       ; preds = %for.cond65
  %call70 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %domain, i32 %r.0)
  %12 = load i32, i32* %call70, align 4, !tbaa !34
  %call71 = call i32* @_ZN6Domain11regElemlistEi(%class.Domain* %domain, i32 %r.0)
  %call72 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %domain)
  %13 = load i32, i32* %call72, align 4, !tbaa !34
  %div = sdiv i32 %13, 2
  %cmp73 = icmp slt i32 %r.0, %div
  br i1 %cmp73, label %if.then74, label %if.else

if.then74:                                        ; preds = %for.body69
  br label %if.end86

if.else:                                          ; preds = %for.body69
  %call75 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %domain)
  %14 = load i32, i32* %call75, align 4, !tbaa !34
  %call76 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %domain)
  %15 = load i32, i32* %call76, align 4, !tbaa !34
  %add = add nsw i32 %15, 15
  %div77 = sdiv i32 %add, 20
  %sub = sub nsw i32 %14, %div77
  %cmp78 = icmp slt i32 %r.0, %sub
  br i1 %cmp78, label %if.then79, label %if.else82

if.then79:                                        ; preds = %if.else
  %call80 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %domain)
  %16 = load i32, i32* %call80, align 4, !tbaa !34
  %add81 = add nsw i32 1, %16
  br label %if.end85

if.else82:                                        ; preds = %if.else
  %call83 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4costEv(%class.Domain* %domain)
  %17 = load i32, i32* %call83, align 4, !tbaa !34
  %add84 = add nsw i32 1, %17
  %mul = mul nsw i32 10, %add84
  br label %if.end85

if.end85:                                         ; preds = %if.else82, %if.then79
  %rep.0 = phi i32 [ %add81, %if.then79 ], [ %mul, %if.else82 ]
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then74
  %rep.1 = phi i32 [ 1, %if.then74 ], [ %rep.0, %if.end85 ]
  %18 = load double*, double** %vnewc, align 8, !tbaa !77
  call void @_ZL15EvalEOSForElemsR6DomainPdiPii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %18, i32 %12, i32* %call71, i32 %rep.1)
  br label %for.inc87

for.inc87:                                        ; preds = %if.end86
  %inc88 = add nsw i32 %r.0, 1
  br label %for.cond65, !llvm.loop !165

for.end89:                                        ; preds = %for.cond.cleanup68
  call void @_Z7ReleaseIdEvPPT_(double** %vnewc)
  %19 = bitcast double** %vnewc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #14
  br label %if.end90

if.end90:                                         ; preds = %for.end89, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5v_cutEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_v_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 54
  %0 = load double, double* %m_v_cut, align 8, !tbaa !16
  ret double %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL21UpdateVolumesForElemsR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %v_cut, i32 %length) #10 {
entry:
  %cmp = icmp ne i32 %length, 0
  br i1 %cmp, label %if.then, label %if.end6

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp1 = icmp slt i32 %i.0, %length
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %domain, i32 %i.0)
  %0 = load double, double* %call, align 8, !tbaa !45
  %sub = fsub double %0, 1.000000e+00
  %call2 = call double @_Z4FABSd(double %sub)
  %cmp3 = fcmp olt double %call2, %v_cut
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %for.body
  br label %if.end

if.end:                                           ; preds = %if.then4, %for.body
  %tmpV.0 = phi double [ 1.000000e+00, %if.then4 ], [ %0, %for.body ]
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %domain, i32 %i.0)
  store double %tmpV.0, double* %call5, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !166

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end6

if.end6:                                          ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7eosvminEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_eosvmin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 65
  %0 = load double, double* %m_eosvmin, align 8, !tbaa !27
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7eosvmaxEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_eosvmax = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 64
  %0 = load double, double* %m_eosvmax, align 8, !tbaa !26
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double* @_Z8AllocateIdEPT_m(i64 %size) #1 comdat {
entry:
  %mul = mul i64 8, %size
  %call = call noalias i8* @malloc(i64 %mul) #14
  %0 = bitcast i8* %call to double*
  ret double* %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL15EvalEOSForElemsR6DomainPdiPii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %vnewc, i32 %numElemReg, i32* %regElemList, i32 %rep) #7 {
entry:
  %e_old = alloca double*, align 8
  %delvc = alloca double*, align 8
  %p_old = alloca double*, align 8
  %q_old = alloca double*, align 8
  %compression = alloca double*, align 8
  %compHalfStep = alloca double*, align 8
  %qq_old = alloca double*, align 8
  %ql_old = alloca double*, align 8
  %work = alloca double*, align 8
  %p_new = alloca double*, align 8
  %e_new = alloca double*, align 8
  %q_new = alloca double*, align 8
  %bvc = alloca double*, align 8
  %pbvc = alloca double*, align 8
  %call = call double @_ZNK6Domain5e_cutEv(%class.Domain* %domain)
  %call1 = call double @_ZNK6Domain5p_cutEv(%class.Domain* %domain)
  %call2 = call double @_ZNK6Domain5ss4o3Ev(%class.Domain* %domain)
  %call3 = call double @_ZNK6Domain5q_cutEv(%class.Domain* %domain)
  %call4 = call double @_ZNK6Domain7eosvmaxEv(%class.Domain* %domain)
  %call5 = call double @_ZNK6Domain7eosvminEv(%class.Domain* %domain)
  %call6 = call double @_ZNK6Domain4pminEv(%class.Domain* %domain)
  %call7 = call double @_ZNK6Domain4eminEv(%class.Domain* %domain)
  %call8 = call double @_ZNK6Domain7refdensEv(%class.Domain* %domain)
  %0 = bitcast double** %e_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %conv = sext i32 %numElemReg to i64
  %call9 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call9, double** %e_old, align 8, !tbaa !77
  %1 = bitcast double** %delvc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %conv10 = sext i32 %numElemReg to i64
  %call11 = call double* @_Z8AllocateIdEPT_m(i64 %conv10)
  store double* %call11, double** %delvc, align 8, !tbaa !77
  %2 = bitcast double** %p_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  %conv12 = sext i32 %numElemReg to i64
  %call13 = call double* @_Z8AllocateIdEPT_m(i64 %conv12)
  store double* %call13, double** %p_old, align 8, !tbaa !77
  %3 = bitcast double** %q_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #14
  %conv14 = sext i32 %numElemReg to i64
  %call15 = call double* @_Z8AllocateIdEPT_m(i64 %conv14)
  store double* %call15, double** %q_old, align 8, !tbaa !77
  %4 = bitcast double** %compression to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #14
  %conv16 = sext i32 %numElemReg to i64
  %call17 = call double* @_Z8AllocateIdEPT_m(i64 %conv16)
  store double* %call17, double** %compression, align 8, !tbaa !77
  %5 = bitcast double** %compHalfStep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #14
  %conv18 = sext i32 %numElemReg to i64
  %call19 = call double* @_Z8AllocateIdEPT_m(i64 %conv18)
  store double* %call19, double** %compHalfStep, align 8, !tbaa !77
  %6 = bitcast double** %qq_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #14
  %conv20 = sext i32 %numElemReg to i64
  %call21 = call double* @_Z8AllocateIdEPT_m(i64 %conv20)
  store double* %call21, double** %qq_old, align 8, !tbaa !77
  %7 = bitcast double** %ql_old to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #14
  %conv22 = sext i32 %numElemReg to i64
  %call23 = call double* @_Z8AllocateIdEPT_m(i64 %conv22)
  store double* %call23, double** %ql_old, align 8, !tbaa !77
  %8 = bitcast double** %work to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #14
  %conv24 = sext i32 %numElemReg to i64
  %call25 = call double* @_Z8AllocateIdEPT_m(i64 %conv24)
  store double* %call25, double** %work, align 8, !tbaa !77
  %9 = bitcast double** %p_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #14
  %conv26 = sext i32 %numElemReg to i64
  %call27 = call double* @_Z8AllocateIdEPT_m(i64 %conv26)
  store double* %call27, double** %p_new, align 8, !tbaa !77
  %10 = bitcast double** %e_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #14
  %conv28 = sext i32 %numElemReg to i64
  %call29 = call double* @_Z8AllocateIdEPT_m(i64 %conv28)
  store double* %call29, double** %e_new, align 8, !tbaa !77
  %11 = bitcast double** %q_new to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #14
  %conv30 = sext i32 %numElemReg to i64
  %call31 = call double* @_Z8AllocateIdEPT_m(i64 %conv30)
  store double* %call31, double** %q_new, align 8, !tbaa !77
  %12 = bitcast double** %bvc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %12) #14
  %conv32 = sext i32 %numElemReg to i64
  %call33 = call double* @_Z8AllocateIdEPT_m(i64 %conv32)
  store double* %call33, double** %bvc, align 8, !tbaa !77
  %13 = bitcast double** %pbvc to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #14
  %conv34 = sext i32 %numElemReg to i64
  %call35 = call double* @_Z8AllocateIdEPT_m(i64 %conv34)
  store double* %call35, double** %pbvc, align 8, !tbaa !77
  br label %for.cond

for.cond:                                         ; preds = %for.inc138, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc139, %for.inc138 ]
  %cmp = icmp slt i32 %j.0, %rep
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end140

for.body:                                         ; preds = %for.cond
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp37 = icmp slt i32 %i.0, %numElemReg
  br i1 %cmp37, label %for.body39, label %for.cond.cleanup38

for.cond.cleanup38:                               ; preds = %for.cond36
  br label %for.end

for.body39:                                       ; preds = %for.cond36
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom
  %14 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %domain, i32 %14)
  %15 = load double, double* %call40, align 8, !tbaa !45
  %16 = load double*, double** %e_old, align 8, !tbaa !77
  %idxprom41 = sext i32 %i.0 to i64
  %arrayidx42 = getelementptr inbounds double, double* %16, i64 %idxprom41
  store double %15, double* %arrayidx42, align 8, !tbaa !45
  %call43 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4delvEi(%class.Domain* %domain, i32 %14)
  %17 = load double, double* %call43, align 8, !tbaa !45
  %18 = load double*, double** %delvc, align 8, !tbaa !77
  %idxprom44 = sext i32 %i.0 to i64
  %arrayidx45 = getelementptr inbounds double, double* %18, i64 %idxprom44
  store double %17, double* %arrayidx45, align 8, !tbaa !45
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %domain, i32 %14)
  %19 = load double, double* %call46, align 8, !tbaa !45
  %20 = load double*, double** %p_old, align 8, !tbaa !77
  %idxprom47 = sext i32 %i.0 to i64
  %arrayidx48 = getelementptr inbounds double, double* %20, i64 %idxprom47
  store double %19, double* %arrayidx48, align 8, !tbaa !45
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %domain, i32 %14)
  %21 = load double, double* %call49, align 8, !tbaa !45
  %22 = load double*, double** %q_old, align 8, !tbaa !77
  %idxprom50 = sext i32 %i.0 to i64
  %arrayidx51 = getelementptr inbounds double, double* %22, i64 %idxprom50
  store double %21, double* %arrayidx51, align 8, !tbaa !45
  %call52 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* %domain, i32 %14)
  %23 = load double, double* %call52, align 8, !tbaa !45
  %24 = load double*, double** %qq_old, align 8, !tbaa !77
  %idxprom53 = sext i32 %i.0 to i64
  %arrayidx54 = getelementptr inbounds double, double* %24, i64 %idxprom53
  store double %23, double* %arrayidx54, align 8, !tbaa !45
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* %domain, i32 %14)
  %25 = load double, double* %call55, align 8, !tbaa !45
  %26 = load double*, double** %ql_old, align 8, !tbaa !77
  %idxprom56 = sext i32 %i.0 to i64
  %arrayidx57 = getelementptr inbounds double, double* %26, i64 %idxprom56
  store double %25, double* %arrayidx57, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body39
  %inc = add nsw i32 %i.0, 1
  br label %for.cond36, !llvm.loop !167

for.end:                                          ; preds = %for.cond.cleanup38
  br label %for.cond59

for.cond59:                                       ; preds = %for.inc79, %for.end
  %i58.0 = phi i32 [ 0, %for.end ], [ %inc80, %for.inc79 ]
  %cmp60 = icmp slt i32 %i58.0, %numElemReg
  br i1 %cmp60, label %for.body62, label %for.cond.cleanup61

for.cond.cleanup61:                               ; preds = %for.cond59
  br label %for.end81

for.body62:                                       ; preds = %for.cond59
  %idxprom64 = sext i32 %i58.0 to i64
  %arrayidx65 = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom64
  %27 = load i32, i32* %arrayidx65, align 4, !tbaa !34
  %idxprom66 = sext i32 %27 to i64
  %arrayidx67 = getelementptr inbounds double, double* %vnewc, i64 %idxprom66
  %28 = load double, double* %arrayidx67, align 8, !tbaa !45
  %div = fdiv double 1.000000e+00, %28
  %sub = fsub double %div, 1.000000e+00
  %29 = load double*, double** %compression, align 8, !tbaa !77
  %idxprom68 = sext i32 %i58.0 to i64
  %arrayidx69 = getelementptr inbounds double, double* %29, i64 %idxprom68
  store double %sub, double* %arrayidx69, align 8, !tbaa !45
  %idxprom70 = sext i32 %27 to i64
  %arrayidx71 = getelementptr inbounds double, double* %vnewc, i64 %idxprom70
  %30 = load double, double* %arrayidx71, align 8, !tbaa !45
  %31 = load double*, double** %delvc, align 8, !tbaa !77
  %idxprom72 = sext i32 %i58.0 to i64
  %arrayidx73 = getelementptr inbounds double, double* %31, i64 %idxprom72
  %32 = load double, double* %arrayidx73, align 8, !tbaa !45
  %mul = fmul double %32, 5.000000e-01
  %sub74 = fsub double %30, %mul
  %div75 = fdiv double 1.000000e+00, %sub74
  %sub76 = fsub double %div75, 1.000000e+00
  %33 = load double*, double** %compHalfStep, align 8, !tbaa !77
  %idxprom77 = sext i32 %i58.0 to i64
  %arrayidx78 = getelementptr inbounds double, double* %33, i64 %idxprom77
  store double %sub76, double* %arrayidx78, align 8, !tbaa !45
  br label %for.inc79

for.inc79:                                        ; preds = %for.body62
  %inc80 = add nsw i32 %i58.0, 1
  br label %for.cond59, !llvm.loop !168

for.end81:                                        ; preds = %for.cond.cleanup61
  %cmp82 = fcmp une double %call5, 0.000000e+00
  br i1 %cmp82, label %if.then, label %if.end102

if.then:                                          ; preds = %for.end81
  br label %for.cond84

for.cond84:                                       ; preds = %for.inc99, %if.then
  %i83.0 = phi i32 [ 0, %if.then ], [ %inc100, %for.inc99 ]
  %cmp85 = icmp slt i32 %i83.0, %numElemReg
  br i1 %cmp85, label %for.body87, label %for.cond.cleanup86

for.cond.cleanup86:                               ; preds = %for.cond84
  br label %for.end101

for.body87:                                       ; preds = %for.cond84
  %idxprom89 = sext i32 %i83.0 to i64
  %arrayidx90 = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom89
  %34 = load i32, i32* %arrayidx90, align 4, !tbaa !34
  %idxprom91 = sext i32 %34 to i64
  %arrayidx92 = getelementptr inbounds double, double* %vnewc, i64 %idxprom91
  %35 = load double, double* %arrayidx92, align 8, !tbaa !45
  %cmp93 = fcmp ole double %35, %call5
  br i1 %cmp93, label %if.then94, label %if.end

if.then94:                                        ; preds = %for.body87
  %36 = load double*, double** %compression, align 8, !tbaa !77
  %idxprom95 = sext i32 %i83.0 to i64
  %arrayidx96 = getelementptr inbounds double, double* %36, i64 %idxprom95
  %37 = load double, double* %arrayidx96, align 8, !tbaa !45
  %38 = load double*, double** %compHalfStep, align 8, !tbaa !77
  %idxprom97 = sext i32 %i83.0 to i64
  %arrayidx98 = getelementptr inbounds double, double* %38, i64 %idxprom97
  store double %37, double* %arrayidx98, align 8, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then94, %for.body87
  br label %for.inc99

for.inc99:                                        ; preds = %if.end
  %inc100 = add nsw i32 %i83.0, 1
  br label %for.cond84, !llvm.loop !169

for.end101:                                       ; preds = %for.cond.cleanup86
  br label %if.end102

if.end102:                                        ; preds = %for.end101, %for.end81
  %cmp103 = fcmp une double %call4, 0.000000e+00
  br i1 %cmp103, label %if.then104, label %if.end127

if.then104:                                       ; preds = %if.end102
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc124, %if.then104
  %i105.0 = phi i32 [ 0, %if.then104 ], [ %inc125, %for.inc124 ]
  %cmp107 = icmp slt i32 %i105.0, %numElemReg
  br i1 %cmp107, label %for.body109, label %for.cond.cleanup108

for.cond.cleanup108:                              ; preds = %for.cond106
  br label %for.end126

for.body109:                                      ; preds = %for.cond106
  %idxprom111 = sext i32 %i105.0 to i64
  %arrayidx112 = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom111
  %39 = load i32, i32* %arrayidx112, align 4, !tbaa !34
  %idxprom113 = sext i32 %39 to i64
  %arrayidx114 = getelementptr inbounds double, double* %vnewc, i64 %idxprom113
  %40 = load double, double* %arrayidx114, align 8, !tbaa !45
  %cmp115 = fcmp oge double %40, %call4
  br i1 %cmp115, label %if.then116, label %if.end123

if.then116:                                       ; preds = %for.body109
  %41 = load double*, double** %p_old, align 8, !tbaa !77
  %idxprom117 = sext i32 %i105.0 to i64
  %arrayidx118 = getelementptr inbounds double, double* %41, i64 %idxprom117
  store double 0.000000e+00, double* %arrayidx118, align 8, !tbaa !45
  %42 = load double*, double** %compression, align 8, !tbaa !77
  %idxprom119 = sext i32 %i105.0 to i64
  %arrayidx120 = getelementptr inbounds double, double* %42, i64 %idxprom119
  store double 0.000000e+00, double* %arrayidx120, align 8, !tbaa !45
  %43 = load double*, double** %compHalfStep, align 8, !tbaa !77
  %idxprom121 = sext i32 %i105.0 to i64
  %arrayidx122 = getelementptr inbounds double, double* %43, i64 %idxprom121
  store double 0.000000e+00, double* %arrayidx122, align 8, !tbaa !45
  br label %if.end123

if.end123:                                        ; preds = %if.then116, %for.body109
  br label %for.inc124

for.inc124:                                       ; preds = %if.end123
  %inc125 = add nsw i32 %i105.0, 1
  br label %for.cond106, !llvm.loop !170

for.end126:                                       ; preds = %for.cond.cleanup108
  br label %if.end127

if.end127:                                        ; preds = %for.end126, %if.end102
  br label %for.cond129

for.cond129:                                      ; preds = %for.inc135, %if.end127
  %i128.0 = phi i32 [ 0, %if.end127 ], [ %inc136, %for.inc135 ]
  %cmp130 = icmp slt i32 %i128.0, %numElemReg
  br i1 %cmp130, label %for.body132, label %for.cond.cleanup131

for.cond.cleanup131:                              ; preds = %for.cond129
  br label %for.end137

for.body132:                                      ; preds = %for.cond129
  %44 = load double*, double** %work, align 8, !tbaa !77
  %idxprom133 = sext i32 %i128.0 to i64
  %arrayidx134 = getelementptr inbounds double, double* %44, i64 %idxprom133
  store double 0.000000e+00, double* %arrayidx134, align 8, !tbaa !45
  br label %for.inc135

for.inc135:                                       ; preds = %for.body132
  %inc136 = add nsw i32 %i128.0, 1
  br label %for.cond129, !llvm.loop !171

for.end137:                                       ; preds = %for.cond.cleanup131
  %45 = load double*, double** %p_new, align 8, !tbaa !77
  %46 = load double*, double** %e_new, align 8, !tbaa !77
  %47 = load double*, double** %q_new, align 8, !tbaa !77
  %48 = load double*, double** %bvc, align 8, !tbaa !77
  %49 = load double*, double** %pbvc, align 8, !tbaa !77
  %50 = load double*, double** %p_old, align 8, !tbaa !77
  %51 = load double*, double** %e_old, align 8, !tbaa !77
  %52 = load double*, double** %q_old, align 8, !tbaa !77
  %53 = load double*, double** %compression, align 8, !tbaa !77
  %54 = load double*, double** %compHalfStep, align 8, !tbaa !77
  %55 = load double*, double** %work, align 8, !tbaa !77
  %56 = load double*, double** %delvc, align 8, !tbaa !77
  %57 = load double*, double** %qq_old, align 8, !tbaa !77
  %58 = load double*, double** %ql_old, align 8, !tbaa !77
  call void @_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi(double* %45, double* %46, double* %47, double* %48, double* %49, double* %50, double* %51, double* %52, double* %53, double* %54, double* %vnewc, double* %55, double* %56, double %call6, double %call1, double %call, double %call3, double %call7, double* %57, double* %58, double %call8, double %call4, i32 %numElemReg, i32* %regElemList)
  br label %for.inc138

for.inc138:                                       ; preds = %for.end137
  %inc139 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !172

for.end140:                                       ; preds = %for.cond.cleanup
  br label %for.cond142

for.cond142:                                      ; preds = %for.inc158, %for.end140
  %i141.0 = phi i32 [ 0, %for.end140 ], [ %inc159, %for.inc158 ]
  %cmp143 = icmp slt i32 %i141.0, %numElemReg
  br i1 %cmp143, label %for.body145, label %for.cond.cleanup144

for.cond.cleanup144:                              ; preds = %for.cond142
  br label %for.end160

for.body145:                                      ; preds = %for.cond142
  %idxprom147 = sext i32 %i141.0 to i64
  %arrayidx148 = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom147
  %59 = load i32, i32* %arrayidx148, align 4, !tbaa !34
  %60 = load double*, double** %p_new, align 8, !tbaa !77
  %idxprom149 = sext i32 %i141.0 to i64
  %arrayidx150 = getelementptr inbounds double, double* %60, i64 %idxprom149
  %61 = load double, double* %arrayidx150, align 8, !tbaa !45
  %call151 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %domain, i32 %59)
  store double %61, double* %call151, align 8, !tbaa !45
  %62 = load double*, double** %e_new, align 8, !tbaa !77
  %idxprom152 = sext i32 %i141.0 to i64
  %arrayidx153 = getelementptr inbounds double, double* %62, i64 %idxprom152
  %63 = load double, double* %arrayidx153, align 8, !tbaa !45
  %call154 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %domain, i32 %59)
  store double %63, double* %call154, align 8, !tbaa !45
  %64 = load double*, double** %q_new, align 8, !tbaa !77
  %idxprom155 = sext i32 %i141.0 to i64
  %arrayidx156 = getelementptr inbounds double, double* %64, i64 %idxprom155
  %65 = load double, double* %arrayidx156, align 8, !tbaa !45
  %call157 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %domain, i32 %59)
  store double %65, double* %call157, align 8, !tbaa !45
  br label %for.inc158

for.inc158:                                       ; preds = %for.body145
  %inc159 = add nsw i32 %i141.0, 1
  br label %for.cond142, !llvm.loop !173

for.end160:                                       ; preds = %for.cond.cleanup144
  %66 = load double*, double** %e_new, align 8, !tbaa !77
  %67 = load double*, double** %p_new, align 8, !tbaa !77
  %68 = load double*, double** %pbvc, align 8, !tbaa !77
  %69 = load double*, double** %bvc, align 8, !tbaa !77
  call void @_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %vnewc, double %call8, double* %66, double* %67, double* %68, double* %69, double %call2, i32 %numElemReg, i32* %regElemList)
  call void @_Z7ReleaseIdEvPPT_(double** %pbvc)
  call void @_Z7ReleaseIdEvPPT_(double** %bvc)
  call void @_Z7ReleaseIdEvPPT_(double** %q_new)
  call void @_Z7ReleaseIdEvPPT_(double** %e_new)
  call void @_Z7ReleaseIdEvPPT_(double** %p_new)
  call void @_Z7ReleaseIdEvPPT_(double** %work)
  call void @_Z7ReleaseIdEvPPT_(double** %ql_old)
  call void @_Z7ReleaseIdEvPPT_(double** %qq_old)
  call void @_Z7ReleaseIdEvPPT_(double** %compHalfStep)
  call void @_Z7ReleaseIdEvPPT_(double** %compression)
  call void @_Z7ReleaseIdEvPPT_(double** %q_old)
  call void @_Z7ReleaseIdEvPPT_(double** %p_old)
  call void @_Z7ReleaseIdEvPPT_(double** %delvc)
  call void @_Z7ReleaseIdEvPPT_(double** %e_old)
  %70 = bitcast double** %pbvc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %70) #14
  %71 = bitcast double** %bvc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #14
  %72 = bitcast double** %q_new to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #14
  %73 = bitcast double** %e_new to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %73) #14
  %74 = bitcast double** %p_new to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #14
  %75 = bitcast double** %work to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #14
  %76 = bitcast double** %ql_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #14
  %77 = bitcast double** %qq_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #14
  %78 = bitcast double** %compHalfStep to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %78) #14
  %79 = bitcast double** %compression to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %79) #14
  %80 = bitcast double** %q_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %80) #14
  %81 = bitcast double** %p_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %81) #14
  %82 = bitcast double** %delvc to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %82) #14
  %83 = bitcast double** %e_old to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %83) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_Z7ReleaseIdEvPPT_(double** %ptr) #1 comdat {
entry:
  %0 = load double*, double** %ptr, align 8, !tbaa !77
  %cmp = icmp ne double* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double*, double** %ptr, align 8, !tbaa !77
  %2 = bitcast double* %1 to i8*
  call void @free(i8* %2) #14
  store double* null, double** %ptr, align 8, !tbaa !77
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5e_cutEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_e_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 51
  %0 = load double, double* %m_e_cut, align 8, !tbaa !13
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5p_cutEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_p_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 52
  %0 = load double, double* %m_p_cut, align 8, !tbaa !14
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5ss4o3Ev(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_ss4o3 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 57
  %0 = load double, double* %m_ss4o3, align 8, !tbaa !19
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5q_cutEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_q_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 53
  %0 = load double, double* %m_q_cut, align 8, !tbaa !15
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain4pminEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_pmin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 66
  %0 = load double, double* %m_pmin, align 8, !tbaa !28
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain4eminEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_emin = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 67
  %0 = load double, double* %m_emin, align 8, !tbaa !29
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain7refdensEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_refdens = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 69
  %0 = load double, double* %m_refdens, align 8, !tbaa !31
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_qq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 42
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_qq, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_ql = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 41
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_ql, i64 %conv) #14
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL18CalcEnergyForElemsPdS_S_S_S_S_S_S_S_S_S_S_S_dddddS_S_ddiPi(double* %p_new, double* %e_new, double* %q_new, double* %bvc, double* %pbvc, double* %p_old, double* %e_old, double* %q_old, double* %compression, double* %compHalfStep, double* %vnewc, double* %work, double* %delvc, double %pmin, double %p_cut, double %e_cut, double %q_cut, double %emin, double* %qq_old, double* %ql_old, double %rho0, double %eosvmax, i32 %length, i32* %regElemList) #7 {
entry:
  %pHalfStep = alloca double*, align 8
  %0 = bitcast double** %pHalfStep to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %conv = sext i32 %length to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call, double** %pHalfStep, align 8, !tbaa !77
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %length
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds double, double* %e_old, i64 %idxprom
  %1 = load double, double* %arrayidx, align 8, !tbaa !45
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds double, double* %delvc, i64 %idxprom1
  %2 = load double, double* %arrayidx2, align 8, !tbaa !45
  %mul = fmul double 5.000000e-01, %2
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds double, double* %p_old, i64 %idxprom3
  %3 = load double, double* %arrayidx4, align 8, !tbaa !45
  %idxprom5 = sext i32 %i.0 to i64
  %arrayidx6 = getelementptr inbounds double, double* %q_old, i64 %idxprom5
  %4 = load double, double* %arrayidx6, align 8, !tbaa !45
  %add = fadd double %3, %4
  %mul7 = fmul double %mul, %add
  %sub = fsub double %1, %mul7
  %idxprom8 = sext i32 %i.0 to i64
  %arrayidx9 = getelementptr inbounds double, double* %work, i64 %idxprom8
  %5 = load double, double* %arrayidx9, align 8, !tbaa !45
  %mul10 = fmul double 5.000000e-01, %5
  %add11 = fadd double %sub, %mul10
  %idxprom12 = sext i32 %i.0 to i64
  %arrayidx13 = getelementptr inbounds double, double* %e_new, i64 %idxprom12
  store double %add11, double* %arrayidx13, align 8, !tbaa !45
  %idxprom14 = sext i32 %i.0 to i64
  %arrayidx15 = getelementptr inbounds double, double* %e_new, i64 %idxprom14
  %6 = load double, double* %arrayidx15, align 8, !tbaa !45
  %cmp16 = fcmp olt double %6, %emin
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %idxprom17 = sext i32 %i.0 to i64
  %arrayidx18 = getelementptr inbounds double, double* %e_new, i64 %idxprom17
  store double %emin, double* %arrayidx18, align 8, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !174

for.end:                                          ; preds = %for.cond.cleanup
  %7 = load double*, double** %pHalfStep, align 8, !tbaa !77
  call void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %7, double* %bvc, double* %pbvc, double* %e_new, double* %compHalfStep, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc83, %for.end
  %i19.0 = phi i32 [ 0, %for.end ], [ %inc84, %for.inc83 ]
  %cmp21 = icmp slt i32 %i19.0, %length
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond20
  br label %for.end85

for.body23:                                       ; preds = %for.cond20
  %idxprom24 = sext i32 %i19.0 to i64
  %arrayidx25 = getelementptr inbounds double, double* %compHalfStep, i64 %idxprom24
  %8 = load double, double* %arrayidx25, align 8, !tbaa !45
  %add26 = fadd double 1.000000e+00, %8
  %div = fdiv double 1.000000e+00, %add26
  %idxprom27 = sext i32 %i19.0 to i64
  %arrayidx28 = getelementptr inbounds double, double* %delvc, i64 %idxprom27
  %9 = load double, double* %arrayidx28, align 8, !tbaa !45
  %cmp29 = fcmp ogt double %9, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.body23
  %idxprom31 = sext i32 %i19.0 to i64
  %arrayidx32 = getelementptr inbounds double, double* %q_new, i64 %idxprom31
  store double 0.000000e+00, double* %arrayidx32, align 8, !tbaa !45
  br label %if.end60

if.else:                                          ; preds = %for.body23
  %idxprom33 = sext i32 %i19.0 to i64
  %arrayidx34 = getelementptr inbounds double, double* %pbvc, i64 %idxprom33
  %10 = load double, double* %arrayidx34, align 8, !tbaa !45
  %idxprom35 = sext i32 %i19.0 to i64
  %arrayidx36 = getelementptr inbounds double, double* %e_new, i64 %idxprom35
  %11 = load double, double* %arrayidx36, align 8, !tbaa !45
  %mul37 = fmul double %10, %11
  %mul38 = fmul double %div, %div
  %idxprom39 = sext i32 %i19.0 to i64
  %arrayidx40 = getelementptr inbounds double, double* %bvc, i64 %idxprom39
  %12 = load double, double* %arrayidx40, align 8, !tbaa !45
  %mul41 = fmul double %mul38, %12
  %13 = load double*, double** %pHalfStep, align 8, !tbaa !77
  %idxprom42 = sext i32 %i19.0 to i64
  %arrayidx43 = getelementptr inbounds double, double* %13, i64 %idxprom42
  %14 = load double, double* %arrayidx43, align 8, !tbaa !45
  %mul44 = fmul double %mul41, %14
  %add45 = fadd double %mul37, %mul44
  %div46 = fdiv double %add45, %rho0
  %cmp47 = fcmp ole double %div46, 0x3842E7922A37D1A0
  br i1 %cmp47, label %if.then48, label %if.else49

if.then48:                                        ; preds = %if.else
  br label %if.end51

if.else49:                                        ; preds = %if.else
  %call50 = call double @_Z4SQRTd(double %div46)
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then48
  %ssc.0 = phi double [ 0x3C18987CEE7F439D, %if.then48 ], [ %call50, %if.else49 ]
  %idxprom52 = sext i32 %i19.0 to i64
  %arrayidx53 = getelementptr inbounds double, double* %ql_old, i64 %idxprom52
  %15 = load double, double* %arrayidx53, align 8, !tbaa !45
  %mul54 = fmul double %ssc.0, %15
  %idxprom55 = sext i32 %i19.0 to i64
  %arrayidx56 = getelementptr inbounds double, double* %qq_old, i64 %idxprom55
  %16 = load double, double* %arrayidx56, align 8, !tbaa !45
  %add57 = fadd double %mul54, %16
  %idxprom58 = sext i32 %i19.0 to i64
  %arrayidx59 = getelementptr inbounds double, double* %q_new, i64 %idxprom58
  store double %add57, double* %arrayidx59, align 8, !tbaa !45
  br label %if.end60

if.end60:                                         ; preds = %if.end51, %if.then30
  %idxprom61 = sext i32 %i19.0 to i64
  %arrayidx62 = getelementptr inbounds double, double* %e_new, i64 %idxprom61
  %17 = load double, double* %arrayidx62, align 8, !tbaa !45
  %idxprom63 = sext i32 %i19.0 to i64
  %arrayidx64 = getelementptr inbounds double, double* %delvc, i64 %idxprom63
  %18 = load double, double* %arrayidx64, align 8, !tbaa !45
  %mul65 = fmul double 5.000000e-01, %18
  %idxprom66 = sext i32 %i19.0 to i64
  %arrayidx67 = getelementptr inbounds double, double* %p_old, i64 %idxprom66
  %19 = load double, double* %arrayidx67, align 8, !tbaa !45
  %idxprom68 = sext i32 %i19.0 to i64
  %arrayidx69 = getelementptr inbounds double, double* %q_old, i64 %idxprom68
  %20 = load double, double* %arrayidx69, align 8, !tbaa !45
  %add70 = fadd double %19, %20
  %mul71 = fmul double 3.000000e+00, %add70
  %21 = load double*, double** %pHalfStep, align 8, !tbaa !77
  %idxprom72 = sext i32 %i19.0 to i64
  %arrayidx73 = getelementptr inbounds double, double* %21, i64 %idxprom72
  %22 = load double, double* %arrayidx73, align 8, !tbaa !45
  %idxprom74 = sext i32 %i19.0 to i64
  %arrayidx75 = getelementptr inbounds double, double* %q_new, i64 %idxprom74
  %23 = load double, double* %arrayidx75, align 8, !tbaa !45
  %add76 = fadd double %22, %23
  %mul77 = fmul double 4.000000e+00, %add76
  %sub78 = fsub double %mul71, %mul77
  %mul79 = fmul double %mul65, %sub78
  %add80 = fadd double %17, %mul79
  %idxprom81 = sext i32 %i19.0 to i64
  %arrayidx82 = getelementptr inbounds double, double* %e_new, i64 %idxprom81
  store double %add80, double* %arrayidx82, align 8, !tbaa !45
  br label %for.inc83

for.inc83:                                        ; preds = %if.end60
  %inc84 = add nsw i32 %i19.0, 1
  br label %for.cond20, !llvm.loop !175

for.end85:                                        ; preds = %for.cond.cleanup22
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc112, %for.end85
  %i86.0 = phi i32 [ 0, %for.end85 ], [ %inc113, %for.inc112 ]
  %cmp88 = icmp slt i32 %i86.0, %length
  br i1 %cmp88, label %for.body90, label %for.cond.cleanup89

for.cond.cleanup89:                               ; preds = %for.cond87
  br label %for.end114

for.body90:                                       ; preds = %for.cond87
  %idxprom91 = sext i32 %i86.0 to i64
  %arrayidx92 = getelementptr inbounds double, double* %work, i64 %idxprom91
  %24 = load double, double* %arrayidx92, align 8, !tbaa !45
  %mul93 = fmul double 5.000000e-01, %24
  %idxprom94 = sext i32 %i86.0 to i64
  %arrayidx95 = getelementptr inbounds double, double* %e_new, i64 %idxprom94
  %25 = load double, double* %arrayidx95, align 8, !tbaa !45
  %add96 = fadd double %25, %mul93
  store double %add96, double* %arrayidx95, align 8, !tbaa !45
  %idxprom97 = sext i32 %i86.0 to i64
  %arrayidx98 = getelementptr inbounds double, double* %e_new, i64 %idxprom97
  %26 = load double, double* %arrayidx98, align 8, !tbaa !45
  %call99 = call double @_Z4FABSd(double %26)
  %cmp100 = fcmp olt double %call99, %e_cut
  br i1 %cmp100, label %if.then101, label %if.end104

if.then101:                                       ; preds = %for.body90
  %idxprom102 = sext i32 %i86.0 to i64
  %arrayidx103 = getelementptr inbounds double, double* %e_new, i64 %idxprom102
  store double 0.000000e+00, double* %arrayidx103, align 8, !tbaa !45
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %for.body90
  %idxprom105 = sext i32 %i86.0 to i64
  %arrayidx106 = getelementptr inbounds double, double* %e_new, i64 %idxprom105
  %27 = load double, double* %arrayidx106, align 8, !tbaa !45
  %cmp107 = fcmp olt double %27, %emin
  br i1 %cmp107, label %if.then108, label %if.end111

if.then108:                                       ; preds = %if.end104
  %idxprom109 = sext i32 %i86.0 to i64
  %arrayidx110 = getelementptr inbounds double, double* %e_new, i64 %idxprom109
  store double %emin, double* %arrayidx110, align 8, !tbaa !45
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %if.end104
  br label %for.inc112

for.inc112:                                       ; preds = %if.end111
  %inc113 = add nsw i32 %i86.0, 1
  br label %for.cond87, !llvm.loop !176

for.end114:                                       ; preds = %for.cond.cleanup89
  call void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %p_new, double* %bvc, double* %pbvc, double* %e_new, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc199, %for.end114
  %i115.0 = phi i32 [ 0, %for.end114 ], [ %inc200, %for.inc199 ]
  %cmp117 = icmp slt i32 %i115.0, %length
  br i1 %cmp117, label %for.body119, label %for.cond.cleanup118

for.cond.cleanup118:                              ; preds = %for.cond116
  br label %for.end201

for.body119:                                      ; preds = %for.cond116
  %idxprom120 = sext i32 %i115.0 to i64
  %arrayidx121 = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom120
  %28 = load i32, i32* %arrayidx121, align 4, !tbaa !34
  %idxprom122 = sext i32 %i115.0 to i64
  %arrayidx123 = getelementptr inbounds double, double* %delvc, i64 %idxprom122
  %29 = load double, double* %arrayidx123, align 8, !tbaa !45
  %cmp124 = fcmp ogt double %29, 0.000000e+00
  br i1 %cmp124, label %if.then125, label %if.else126

if.then125:                                       ; preds = %for.body119
  br label %if.end157

if.else126:                                       ; preds = %for.body119
  %idxprom128 = sext i32 %i115.0 to i64
  %arrayidx129 = getelementptr inbounds double, double* %pbvc, i64 %idxprom128
  %30 = load double, double* %arrayidx129, align 8, !tbaa !45
  %idxprom130 = sext i32 %i115.0 to i64
  %arrayidx131 = getelementptr inbounds double, double* %e_new, i64 %idxprom130
  %31 = load double, double* %arrayidx131, align 8, !tbaa !45
  %mul132 = fmul double %30, %31
  %idxprom133 = sext i32 %28 to i64
  %arrayidx134 = getelementptr inbounds double, double* %vnewc, i64 %idxprom133
  %32 = load double, double* %arrayidx134, align 8, !tbaa !45
  %idxprom135 = sext i32 %28 to i64
  %arrayidx136 = getelementptr inbounds double, double* %vnewc, i64 %idxprom135
  %33 = load double, double* %arrayidx136, align 8, !tbaa !45
  %mul137 = fmul double %32, %33
  %idxprom138 = sext i32 %i115.0 to i64
  %arrayidx139 = getelementptr inbounds double, double* %bvc, i64 %idxprom138
  %34 = load double, double* %arrayidx139, align 8, !tbaa !45
  %mul140 = fmul double %mul137, %34
  %idxprom141 = sext i32 %i115.0 to i64
  %arrayidx142 = getelementptr inbounds double, double* %p_new, i64 %idxprom141
  %35 = load double, double* %arrayidx142, align 8, !tbaa !45
  %mul143 = fmul double %mul140, %35
  %add144 = fadd double %mul132, %mul143
  %div145 = fdiv double %add144, %rho0
  %cmp146 = fcmp ole double %div145, 0x3842E7922A37D1A0
  br i1 %cmp146, label %if.then147, label %if.else148

if.then147:                                       ; preds = %if.else126
  br label %if.end150

if.else148:                                       ; preds = %if.else126
  %call149 = call double @_Z4SQRTd(double %div145)
  br label %if.end150

if.end150:                                        ; preds = %if.else148, %if.then147
  %ssc127.0 = phi double [ 0x3C18987CEE7F439D, %if.then147 ], [ %call149, %if.else148 ]
  %idxprom151 = sext i32 %i115.0 to i64
  %arrayidx152 = getelementptr inbounds double, double* %ql_old, i64 %idxprom151
  %36 = load double, double* %arrayidx152, align 8, !tbaa !45
  %mul153 = fmul double %ssc127.0, %36
  %idxprom154 = sext i32 %i115.0 to i64
  %arrayidx155 = getelementptr inbounds double, double* %qq_old, i64 %idxprom154
  %37 = load double, double* %arrayidx155, align 8, !tbaa !45
  %add156 = fadd double %mul153, %37
  br label %if.end157

if.end157:                                        ; preds = %if.end150, %if.then125
  %q_tilde.0 = phi double [ 0.000000e+00, %if.then125 ], [ %add156, %if.end150 ]
  %idxprom158 = sext i32 %i115.0 to i64
  %arrayidx159 = getelementptr inbounds double, double* %e_new, i64 %idxprom158
  %38 = load double, double* %arrayidx159, align 8, !tbaa !45
  %idxprom160 = sext i32 %i115.0 to i64
  %arrayidx161 = getelementptr inbounds double, double* %p_old, i64 %idxprom160
  %39 = load double, double* %arrayidx161, align 8, !tbaa !45
  %idxprom162 = sext i32 %i115.0 to i64
  %arrayidx163 = getelementptr inbounds double, double* %q_old, i64 %idxprom162
  %40 = load double, double* %arrayidx163, align 8, !tbaa !45
  %add164 = fadd double %39, %40
  %mul165 = fmul double 7.000000e+00, %add164
  %41 = load double*, double** %pHalfStep, align 8, !tbaa !77
  %idxprom166 = sext i32 %i115.0 to i64
  %arrayidx167 = getelementptr inbounds double, double* %41, i64 %idxprom166
  %42 = load double, double* %arrayidx167, align 8, !tbaa !45
  %idxprom168 = sext i32 %i115.0 to i64
  %arrayidx169 = getelementptr inbounds double, double* %q_new, i64 %idxprom168
  %43 = load double, double* %arrayidx169, align 8, !tbaa !45
  %add170 = fadd double %42, %43
  %mul171 = fmul double 8.000000e+00, %add170
  %sub172 = fsub double %mul165, %mul171
  %idxprom173 = sext i32 %i115.0 to i64
  %arrayidx174 = getelementptr inbounds double, double* %p_new, i64 %idxprom173
  %44 = load double, double* %arrayidx174, align 8, !tbaa !45
  %add175 = fadd double %44, %q_tilde.0
  %add176 = fadd double %sub172, %add175
  %idxprom177 = sext i32 %i115.0 to i64
  %arrayidx178 = getelementptr inbounds double, double* %delvc, i64 %idxprom177
  %45 = load double, double* %arrayidx178, align 8, !tbaa !45
  %mul179 = fmul double %add176, %45
  %mul180 = fmul double %mul179, 0x3FC5555555555555
  %sub181 = fsub double %38, %mul180
  %idxprom182 = sext i32 %i115.0 to i64
  %arrayidx183 = getelementptr inbounds double, double* %e_new, i64 %idxprom182
  store double %sub181, double* %arrayidx183, align 8, !tbaa !45
  %idxprom184 = sext i32 %i115.0 to i64
  %arrayidx185 = getelementptr inbounds double, double* %e_new, i64 %idxprom184
  %46 = load double, double* %arrayidx185, align 8, !tbaa !45
  %call186 = call double @_Z4FABSd(double %46)
  %cmp187 = fcmp olt double %call186, %e_cut
  br i1 %cmp187, label %if.then188, label %if.end191

if.then188:                                       ; preds = %if.end157
  %idxprom189 = sext i32 %i115.0 to i64
  %arrayidx190 = getelementptr inbounds double, double* %e_new, i64 %idxprom189
  store double 0.000000e+00, double* %arrayidx190, align 8, !tbaa !45
  br label %if.end191

if.end191:                                        ; preds = %if.then188, %if.end157
  %idxprom192 = sext i32 %i115.0 to i64
  %arrayidx193 = getelementptr inbounds double, double* %e_new, i64 %idxprom192
  %47 = load double, double* %arrayidx193, align 8, !tbaa !45
  %cmp194 = fcmp olt double %47, %emin
  br i1 %cmp194, label %if.then195, label %if.end198

if.then195:                                       ; preds = %if.end191
  %idxprom196 = sext i32 %i115.0 to i64
  %arrayidx197 = getelementptr inbounds double, double* %e_new, i64 %idxprom196
  store double %emin, double* %arrayidx197, align 8, !tbaa !45
  br label %if.end198

if.end198:                                        ; preds = %if.then195, %if.end191
  br label %for.inc199

for.inc199:                                       ; preds = %if.end198
  %inc200 = add nsw i32 %i115.0, 1
  br label %for.cond116, !llvm.loop !177

for.end201:                                       ; preds = %for.cond.cleanup118
  call void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %p_new, double* %bvc, double* %pbvc, double* %e_new, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList)
  br label %for.cond203

for.cond203:                                      ; preds = %for.inc255, %for.end201
  %i202.0 = phi i32 [ 0, %for.end201 ], [ %inc256, %for.inc255 ]
  %cmp204 = icmp slt i32 %i202.0, %length
  br i1 %cmp204, label %for.body206, label %for.cond.cleanup205

for.cond.cleanup205:                              ; preds = %for.cond203
  br label %for.end257

for.body206:                                      ; preds = %for.cond203
  %idxprom208 = sext i32 %i202.0 to i64
  %arrayidx209 = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom208
  %48 = load i32, i32* %arrayidx209, align 4, !tbaa !34
  %idxprom210 = sext i32 %i202.0 to i64
  %arrayidx211 = getelementptr inbounds double, double* %delvc, i64 %idxprom210
  %49 = load double, double* %arrayidx211, align 8, !tbaa !45
  %cmp212 = fcmp ole double %49, 0.000000e+00
  br i1 %cmp212, label %if.then213, label %if.end254

if.then213:                                       ; preds = %for.body206
  %idxprom215 = sext i32 %i202.0 to i64
  %arrayidx216 = getelementptr inbounds double, double* %pbvc, i64 %idxprom215
  %50 = load double, double* %arrayidx216, align 8, !tbaa !45
  %idxprom217 = sext i32 %i202.0 to i64
  %arrayidx218 = getelementptr inbounds double, double* %e_new, i64 %idxprom217
  %51 = load double, double* %arrayidx218, align 8, !tbaa !45
  %mul219 = fmul double %50, %51
  %idxprom220 = sext i32 %48 to i64
  %arrayidx221 = getelementptr inbounds double, double* %vnewc, i64 %idxprom220
  %52 = load double, double* %arrayidx221, align 8, !tbaa !45
  %idxprom222 = sext i32 %48 to i64
  %arrayidx223 = getelementptr inbounds double, double* %vnewc, i64 %idxprom222
  %53 = load double, double* %arrayidx223, align 8, !tbaa !45
  %mul224 = fmul double %52, %53
  %idxprom225 = sext i32 %i202.0 to i64
  %arrayidx226 = getelementptr inbounds double, double* %bvc, i64 %idxprom225
  %54 = load double, double* %arrayidx226, align 8, !tbaa !45
  %mul227 = fmul double %mul224, %54
  %idxprom228 = sext i32 %i202.0 to i64
  %arrayidx229 = getelementptr inbounds double, double* %p_new, i64 %idxprom228
  %55 = load double, double* %arrayidx229, align 8, !tbaa !45
  %mul230 = fmul double %mul227, %55
  %add231 = fadd double %mul219, %mul230
  %div232 = fdiv double %add231, %rho0
  %cmp233 = fcmp ole double %div232, 0x3842E7922A37D1A0
  br i1 %cmp233, label %if.then234, label %if.else235

if.then234:                                       ; preds = %if.then213
  br label %if.end237

if.else235:                                       ; preds = %if.then213
  %call236 = call double @_Z4SQRTd(double %div232)
  br label %if.end237

if.end237:                                        ; preds = %if.else235, %if.then234
  %ssc214.0 = phi double [ 0x3C18987CEE7F439D, %if.then234 ], [ %call236, %if.else235 ]
  %idxprom238 = sext i32 %i202.0 to i64
  %arrayidx239 = getelementptr inbounds double, double* %ql_old, i64 %idxprom238
  %56 = load double, double* %arrayidx239, align 8, !tbaa !45
  %mul240 = fmul double %ssc214.0, %56
  %idxprom241 = sext i32 %i202.0 to i64
  %arrayidx242 = getelementptr inbounds double, double* %qq_old, i64 %idxprom241
  %57 = load double, double* %arrayidx242, align 8, !tbaa !45
  %add243 = fadd double %mul240, %57
  %idxprom244 = sext i32 %i202.0 to i64
  %arrayidx245 = getelementptr inbounds double, double* %q_new, i64 %idxprom244
  store double %add243, double* %arrayidx245, align 8, !tbaa !45
  %idxprom246 = sext i32 %i202.0 to i64
  %arrayidx247 = getelementptr inbounds double, double* %q_new, i64 %idxprom246
  %58 = load double, double* %arrayidx247, align 8, !tbaa !45
  %call248 = call double @_Z4FABSd(double %58)
  %cmp249 = fcmp olt double %call248, %q_cut
  br i1 %cmp249, label %if.then250, label %if.end253

if.then250:                                       ; preds = %if.end237
  %idxprom251 = sext i32 %i202.0 to i64
  %arrayidx252 = getelementptr inbounds double, double* %q_new, i64 %idxprom251
  store double 0.000000e+00, double* %arrayidx252, align 8, !tbaa !45
  br label %if.end253

if.end253:                                        ; preds = %if.then250, %if.end237
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %for.body206
  br label %for.inc255

for.inc255:                                       ; preds = %if.end254
  %inc256 = add nsw i32 %i202.0, 1
  br label %for.cond203, !llvm.loop !178

for.end257:                                       ; preds = %for.cond.cleanup205
  call void @_Z7ReleaseIdEvPPT_(double** %pHalfStep)
  %59 = bitcast double** %pHalfStep to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %59) #14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL22CalcSoundSpeedForElemsR6DomainPddS1_S1_S1_S1_diPi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %vnewc, double %rho0, double* %enewc, double* %pnewc, double* %pbvc, double* %bvc, double %ss4o3, i32 %len, i32* %regElemList) #10 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %len
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds double, double* %pbvc, i64 %idxprom1
  %1 = load double, double* %arrayidx2, align 8, !tbaa !45
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds double, double* %enewc, i64 %idxprom3
  %2 = load double, double* %arrayidx4, align 8, !tbaa !45
  %mul = fmul double %1, %2
  %idxprom5 = sext i32 %0 to i64
  %arrayidx6 = getelementptr inbounds double, double* %vnewc, i64 %idxprom5
  %3 = load double, double* %arrayidx6, align 8, !tbaa !45
  %idxprom7 = sext i32 %0 to i64
  %arrayidx8 = getelementptr inbounds double, double* %vnewc, i64 %idxprom7
  %4 = load double, double* %arrayidx8, align 8, !tbaa !45
  %mul9 = fmul double %3, %4
  %idxprom10 = sext i32 %i.0 to i64
  %arrayidx11 = getelementptr inbounds double, double* %bvc, i64 %idxprom10
  %5 = load double, double* %arrayidx11, align 8, !tbaa !45
  %mul12 = fmul double %mul9, %5
  %idxprom13 = sext i32 %i.0 to i64
  %arrayidx14 = getelementptr inbounds double, double* %pnewc, i64 %idxprom13
  %6 = load double, double* %arrayidx14, align 8, !tbaa !45
  %mul15 = fmul double %mul12, %6
  %add = fadd double %mul, %mul15
  %div = fdiv double %add, %rho0
  %cmp16 = fcmp ole double %div, 0x3842E7922A37D1A0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %if.end

if.else:                                          ; preds = %for.body
  %call = call double @_Z4SQRTd(double %div)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ssTmp.0 = phi double [ 0x3C18987CEE7F439D, %if.then ], [ %call, %if.else ]
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %domain, i32 %0)
  store double %ssTmp.0, double* %call17, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !179

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL20CalcPressureForElemsPdS_S_S_S_S_dddiPi(double* %p_new, double* %bvc, double* %pbvc, double* %e_old, double* %compression, double* %vnewc, double %pmin, double %p_cut, double %eosvmax, i32 %length, i32* %regElemList) #10 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %length
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds double, double* %compression, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8, !tbaa !45
  %add = fadd double %0, 1.000000e+00
  %mul = fmul double 0x3FE5555555555555, %add
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds double, double* %bvc, i64 %idxprom1
  store double %mul, double* %arrayidx2, align 8, !tbaa !45
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds double, double* %pbvc, i64 %idxprom3
  store double 0x3FE5555555555555, double* %arrayidx4, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !180

for.end:                                          ; preds = %for.cond.cleanup
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc38, %for.end
  %i5.0 = phi i32 [ 0, %for.end ], [ %inc39, %for.inc38 ]
  %cmp7 = icmp slt i32 %i5.0, %length
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  br label %for.end40

for.body9:                                        ; preds = %for.cond6
  %idxprom10 = sext i32 %i5.0 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %regElemList, i64 %idxprom10
  %1 = load i32, i32* %arrayidx11, align 4, !tbaa !34
  %idxprom12 = sext i32 %i5.0 to i64
  %arrayidx13 = getelementptr inbounds double, double* %bvc, i64 %idxprom12
  %2 = load double, double* %arrayidx13, align 8, !tbaa !45
  %idxprom14 = sext i32 %i5.0 to i64
  %arrayidx15 = getelementptr inbounds double, double* %e_old, i64 %idxprom14
  %3 = load double, double* %arrayidx15, align 8, !tbaa !45
  %mul16 = fmul double %2, %3
  %idxprom17 = sext i32 %i5.0 to i64
  %arrayidx18 = getelementptr inbounds double, double* %p_new, i64 %idxprom17
  store double %mul16, double* %arrayidx18, align 8, !tbaa !45
  %idxprom19 = sext i32 %i5.0 to i64
  %arrayidx20 = getelementptr inbounds double, double* %p_new, i64 %idxprom19
  %4 = load double, double* %arrayidx20, align 8, !tbaa !45
  %call = call double @_Z4FABSd(double %4)
  %cmp21 = fcmp olt double %call, %p_cut
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %idxprom22 = sext i32 %i5.0 to i64
  %arrayidx23 = getelementptr inbounds double, double* %p_new, i64 %idxprom22
  store double 0.000000e+00, double* %arrayidx23, align 8, !tbaa !45
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  %idxprom24 = sext i32 %1 to i64
  %arrayidx25 = getelementptr inbounds double, double* %vnewc, i64 %idxprom24
  %5 = load double, double* %arrayidx25, align 8, !tbaa !45
  %cmp26 = fcmp oge double %5, %eosvmax
  br i1 %cmp26, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end
  %idxprom28 = sext i32 %i5.0 to i64
  %arrayidx29 = getelementptr inbounds double, double* %p_new, i64 %idxprom28
  store double 0.000000e+00, double* %arrayidx29, align 8, !tbaa !45
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end
  %idxprom31 = sext i32 %i5.0 to i64
  %arrayidx32 = getelementptr inbounds double, double* %p_new, i64 %idxprom31
  %6 = load double, double* %arrayidx32, align 8, !tbaa !45
  %cmp33 = fcmp olt double %6, %pmin
  br i1 %cmp33, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end30
  %idxprom35 = sext i32 %i5.0 to i64
  %arrayidx36 = getelementptr inbounds double, double* %p_new, i64 %idxprom35
  store double %pmin, double* %arrayidx36, align 8, !tbaa !45
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %inc39 = add nsw i32 %i5.0, 1
  br label %for.cond6, !llvm.loop !181

for.end40:                                        ; preds = %for.cond.cleanup8
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain17AllocateGradientsEii(%class.Domain* %this, i32 %numElem, i32 %allElem) #1 comdat align 2 {
entry:
  %conv = sext i32 %numElem to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  %m_delx_xi = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 35
  store double* %call, double** %m_delx_xi, align 8, !tbaa !182
  %conv2 = sext i32 %numElem to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv2)
  %m_delx_eta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 36
  store double* %call3, double** %m_delx_eta, align 8, !tbaa !183
  %conv4 = sext i32 %numElem to i64
  %call5 = call double* @_Z8AllocateIdEPT_m(i64 %conv4)
  %m_delx_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 37
  store double* %call5, double** %m_delx_zeta, align 8, !tbaa !184
  %conv6 = sext i32 %allElem to i64
  %call7 = call double* @_Z8AllocateIdEPT_m(i64 %conv6)
  %m_delv_xi = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 32
  store double* %call7, double** %m_delv_xi, align 8, !tbaa !185
  %conv8 = sext i32 %allElem to i64
  %call9 = call double* @_Z8AllocateIdEPT_m(i64 %conv8)
  %m_delv_eta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 33
  store double* %call9, double** %m_delv_eta, align 8, !tbaa !186
  %conv10 = sext i32 %allElem to i64
  %call11 = call double* @_Z8AllocateIdEPT_m(i64 %conv10)
  %m_delv_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 34
  store double* %call11, double** %m_delv_zeta, align 8, !tbaa !187
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL31CalcMonotonicQGradientsForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %domain, i32 %i.0)
  %arrayidx = getelementptr inbounds i32, i32* %call1, i64 0
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %arrayidx2 = getelementptr inbounds i32, i32* %call1, i64 1
  %2 = load i32, i32* %arrayidx2, align 4, !tbaa !34
  %arrayidx3 = getelementptr inbounds i32, i32* %call1, i64 2
  %3 = load i32, i32* %arrayidx3, align 4, !tbaa !34
  %arrayidx4 = getelementptr inbounds i32, i32* %call1, i64 3
  %4 = load i32, i32* %arrayidx4, align 4, !tbaa !34
  %arrayidx5 = getelementptr inbounds i32, i32* %call1, i64 4
  %5 = load i32, i32* %arrayidx5, align 4, !tbaa !34
  %arrayidx6 = getelementptr inbounds i32, i32* %call1, i64 5
  %6 = load i32, i32* %arrayidx6, align 4, !tbaa !34
  %arrayidx7 = getelementptr inbounds i32, i32* %call1, i64 6
  %7 = load i32, i32* %arrayidx7, align 4, !tbaa !34
  %arrayidx8 = getelementptr inbounds i32, i32* %call1, i64 7
  %8 = load i32, i32* %arrayidx8, align 4, !tbaa !34
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %1)
  %9 = load double, double* %call9, align 8, !tbaa !45
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %2)
  %10 = load double, double* %call10, align 8, !tbaa !45
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %3)
  %11 = load double, double* %call11, align 8, !tbaa !45
  %call12 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %4)
  %12 = load double, double* %call12, align 8, !tbaa !45
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %5)
  %13 = load double, double* %call13, align 8, !tbaa !45
  %call14 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %6)
  %14 = load double, double* %call14, align 8, !tbaa !45
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %7)
  %15 = load double, double* %call15, align 8, !tbaa !45
  %call16 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %8)
  %16 = load double, double* %call16, align 8, !tbaa !45
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %1)
  %17 = load double, double* %call17, align 8, !tbaa !45
  %call18 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %2)
  %18 = load double, double* %call18, align 8, !tbaa !45
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %3)
  %19 = load double, double* %call19, align 8, !tbaa !45
  %call20 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %4)
  %20 = load double, double* %call20, align 8, !tbaa !45
  %call21 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %5)
  %21 = load double, double* %call21, align 8, !tbaa !45
  %call22 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %6)
  %22 = load double, double* %call22, align 8, !tbaa !45
  %call23 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %7)
  %23 = load double, double* %call23, align 8, !tbaa !45
  %call24 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %8)
  %24 = load double, double* %call24, align 8, !tbaa !45
  %call25 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %1)
  %25 = load double, double* %call25, align 8, !tbaa !45
  %call26 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %2)
  %26 = load double, double* %call26, align 8, !tbaa !45
  %call27 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %3)
  %27 = load double, double* %call27, align 8, !tbaa !45
  %call28 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %4)
  %28 = load double, double* %call28, align 8, !tbaa !45
  %call29 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %5)
  %29 = load double, double* %call29, align 8, !tbaa !45
  %call30 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %6)
  %30 = load double, double* %call30, align 8, !tbaa !45
  %call31 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %7)
  %31 = load double, double* %call31, align 8, !tbaa !45
  %call32 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %8)
  %32 = load double, double* %call32, align 8, !tbaa !45
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %1)
  %33 = load double, double* %call33, align 8, !tbaa !45
  %call34 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %2)
  %34 = load double, double* %call34, align 8, !tbaa !45
  %call35 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %3)
  %35 = load double, double* %call35, align 8, !tbaa !45
  %call36 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %4)
  %36 = load double, double* %call36, align 8, !tbaa !45
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %5)
  %37 = load double, double* %call37, align 8, !tbaa !45
  %call38 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %6)
  %38 = load double, double* %call38, align 8, !tbaa !45
  %call39 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %7)
  %39 = load double, double* %call39, align 8, !tbaa !45
  %call40 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %8)
  %40 = load double, double* %call40, align 8, !tbaa !45
  %call41 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %1)
  %41 = load double, double* %call41, align 8, !tbaa !45
  %call42 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %2)
  %42 = load double, double* %call42, align 8, !tbaa !45
  %call43 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %3)
  %43 = load double, double* %call43, align 8, !tbaa !45
  %call44 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %4)
  %44 = load double, double* %call44, align 8, !tbaa !45
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %5)
  %45 = load double, double* %call45, align 8, !tbaa !45
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %6)
  %46 = load double, double* %call46, align 8, !tbaa !45
  %call47 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %7)
  %47 = load double, double* %call47, align 8, !tbaa !45
  %call48 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %8)
  %48 = load double, double* %call48, align 8, !tbaa !45
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %1)
  %49 = load double, double* %call49, align 8, !tbaa !45
  %call50 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %2)
  %50 = load double, double* %call50, align 8, !tbaa !45
  %call51 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %3)
  %51 = load double, double* %call51, align 8, !tbaa !45
  %call52 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %4)
  %52 = load double, double* %call52, align 8, !tbaa !45
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %5)
  %53 = load double, double* %call53, align 8, !tbaa !45
  %call54 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %6)
  %54 = load double, double* %call54, align 8, !tbaa !45
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %7)
  %55 = load double, double* %call55, align 8, !tbaa !45
  %call56 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %8)
  %56 = load double, double* %call56, align 8, !tbaa !45
  %call57 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %domain, i32 %i.0)
  %57 = load double, double* %call57, align 8, !tbaa !45
  %call58 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %domain, i32 %i.0)
  %58 = load double, double* %call58, align 8, !tbaa !45
  %mul = fmul double %57, %58
  %add = fadd double %mul, 0x38754484932D2E72
  %div = fdiv double 1.000000e+00, %add
  %add59 = fadd double %9, %10
  %add60 = fadd double %add59, %14
  %add61 = fadd double %add60, %13
  %add62 = fadd double %12, %11
  %add63 = fadd double %add62, %15
  %add64 = fadd double %add63, %16
  %sub = fsub double %add61, %add64
  %mul65 = fmul double -2.500000e-01, %sub
  %add66 = fadd double %17, %18
  %add67 = fadd double %add66, %22
  %add68 = fadd double %add67, %21
  %add69 = fadd double %20, %19
  %add70 = fadd double %add69, %23
  %add71 = fadd double %add70, %24
  %sub72 = fsub double %add68, %add71
  %mul73 = fmul double -2.500000e-01, %sub72
  %add74 = fadd double %25, %26
  %add75 = fadd double %add74, %30
  %add76 = fadd double %add75, %29
  %add77 = fadd double %28, %27
  %add78 = fadd double %add77, %31
  %add79 = fadd double %add78, %32
  %sub80 = fsub double %add76, %add79
  %mul81 = fmul double -2.500000e-01, %sub80
  %add82 = fadd double %10, %11
  %add83 = fadd double %add82, %15
  %add84 = fadd double %add83, %14
  %add85 = fadd double %9, %12
  %add86 = fadd double %add85, %16
  %add87 = fadd double %add86, %13
  %sub88 = fsub double %add84, %add87
  %mul89 = fmul double 2.500000e-01, %sub88
  %add90 = fadd double %18, %19
  %add91 = fadd double %add90, %23
  %add92 = fadd double %add91, %22
  %add93 = fadd double %17, %20
  %add94 = fadd double %add93, %24
  %add95 = fadd double %add94, %21
  %sub96 = fsub double %add92, %add95
  %mul97 = fmul double 2.500000e-01, %sub96
  %add98 = fadd double %26, %27
  %add99 = fadd double %add98, %31
  %add100 = fadd double %add99, %30
  %add101 = fadd double %25, %28
  %add102 = fadd double %add101, %32
  %add103 = fadd double %add102, %29
  %sub104 = fsub double %add100, %add103
  %mul105 = fmul double 2.500000e-01, %sub104
  %add106 = fadd double %13, %14
  %add107 = fadd double %add106, %15
  %add108 = fadd double %add107, %16
  %add109 = fadd double %9, %10
  %add110 = fadd double %add109, %11
  %add111 = fadd double %add110, %12
  %sub112 = fsub double %add108, %add111
  %mul113 = fmul double 2.500000e-01, %sub112
  %add114 = fadd double %21, %22
  %add115 = fadd double %add114, %23
  %add116 = fadd double %add115, %24
  %add117 = fadd double %17, %18
  %add118 = fadd double %add117, %19
  %add119 = fadd double %add118, %20
  %sub120 = fsub double %add116, %add119
  %mul121 = fmul double 2.500000e-01, %sub120
  %add122 = fadd double %29, %30
  %add123 = fadd double %add122, %31
  %add124 = fadd double %add123, %32
  %add125 = fadd double %25, %26
  %add126 = fadd double %add125, %27
  %add127 = fadd double %add126, %28
  %sub128 = fsub double %add124, %add127
  %mul129 = fmul double 2.500000e-01, %sub128
  %mul130 = fmul double %mul97, %mul81
  %mul131 = fmul double %mul105, %mul73
  %sub132 = fsub double %mul130, %mul131
  %mul133 = fmul double %mul105, %mul65
  %mul134 = fmul double %mul89, %mul81
  %sub135 = fsub double %mul133, %mul134
  %mul136 = fmul double %mul89, %mul73
  %mul137 = fmul double %mul97, %mul65
  %sub138 = fsub double %mul136, %mul137
  %mul139 = fmul double %sub132, %sub132
  %mul140 = fmul double %sub135, %sub135
  %add141 = fadd double %mul139, %mul140
  %mul142 = fmul double %sub138, %sub138
  %add143 = fadd double %add141, %mul142
  %add144 = fadd double %add143, 0x38754484932D2E72
  %call145 = call double @_Z4SQRTd(double %add144)
  %div146 = fdiv double %mul, %call145
  %call147 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* %domain, i32 %i.0)
  store double %div146, double* %call147, align 8, !tbaa !45
  %mul148 = fmul double %sub132, %div
  %mul149 = fmul double %sub135, %div
  %mul150 = fmul double %sub138, %div
  %add151 = fadd double %37, %38
  %add152 = fadd double %add151, %39
  %add153 = fadd double %add152, %40
  %add154 = fadd double %33, %34
  %add155 = fadd double %add154, %35
  %add156 = fadd double %add155, %36
  %sub157 = fsub double %add153, %add156
  %mul158 = fmul double 2.500000e-01, %sub157
  %add159 = fadd double %45, %46
  %add160 = fadd double %add159, %47
  %add161 = fadd double %add160, %48
  %add162 = fadd double %41, %42
  %add163 = fadd double %add162, %43
  %add164 = fadd double %add163, %44
  %sub165 = fsub double %add161, %add164
  %mul166 = fmul double 2.500000e-01, %sub165
  %add167 = fadd double %53, %54
  %add168 = fadd double %add167, %55
  %add169 = fadd double %add168, %56
  %add170 = fadd double %49, %50
  %add171 = fadd double %add170, %51
  %add172 = fadd double %add171, %52
  %sub173 = fsub double %add169, %add172
  %mul174 = fmul double 2.500000e-01, %sub173
  %mul175 = fmul double %mul148, %mul158
  %mul176 = fmul double %mul149, %mul166
  %add177 = fadd double %mul175, %mul176
  %mul178 = fmul double %mul150, %mul174
  %add179 = fadd double %add177, %mul178
  %call180 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %domain, i32 %i.0)
  store double %add179, double* %call180, align 8, !tbaa !45
  %mul181 = fmul double %mul73, %mul129
  %mul182 = fmul double %mul81, %mul121
  %sub183 = fsub double %mul181, %mul182
  %mul184 = fmul double %mul81, %mul113
  %mul185 = fmul double %mul65, %mul129
  %sub186 = fsub double %mul184, %mul185
  %mul187 = fmul double %mul65, %mul121
  %mul188 = fmul double %mul73, %mul113
  %sub189 = fsub double %mul187, %mul188
  %mul190 = fmul double %sub183, %sub183
  %mul191 = fmul double %sub186, %sub186
  %add192 = fadd double %mul190, %mul191
  %mul193 = fmul double %sub189, %sub189
  %add194 = fadd double %add192, %mul193
  %add195 = fadd double %add194, 0x38754484932D2E72
  %call196 = call double @_Z4SQRTd(double %add195)
  %div197 = fdiv double %mul, %call196
  %call198 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* %domain, i32 %i.0)
  store double %div197, double* %call198, align 8, !tbaa !45
  %mul199 = fmul double %sub183, %div
  %mul200 = fmul double %sub186, %div
  %mul201 = fmul double %sub189, %div
  %add202 = fadd double %34, %35
  %add203 = fadd double %add202, %39
  %add204 = fadd double %add203, %38
  %add205 = fadd double %33, %36
  %add206 = fadd double %add205, %40
  %add207 = fadd double %add206, %37
  %sub208 = fsub double %add204, %add207
  %mul209 = fmul double 2.500000e-01, %sub208
  %add210 = fadd double %42, %43
  %add211 = fadd double %add210, %47
  %add212 = fadd double %add211, %46
  %add213 = fadd double %41, %44
  %add214 = fadd double %add213, %48
  %add215 = fadd double %add214, %45
  %sub216 = fsub double %add212, %add215
  %mul217 = fmul double 2.500000e-01, %sub216
  %add218 = fadd double %50, %51
  %add219 = fadd double %add218, %55
  %add220 = fadd double %add219, %54
  %add221 = fadd double %49, %52
  %add222 = fadd double %add221, %56
  %add223 = fadd double %add222, %53
  %sub224 = fsub double %add220, %add223
  %mul225 = fmul double 2.500000e-01, %sub224
  %mul226 = fmul double %mul199, %mul209
  %mul227 = fmul double %mul200, %mul217
  %add228 = fadd double %mul226, %mul227
  %mul229 = fmul double %mul201, %mul225
  %add230 = fadd double %add228, %mul229
  %call231 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %domain, i32 %i.0)
  store double %add230, double* %call231, align 8, !tbaa !45
  %mul232 = fmul double %mul121, %mul105
  %mul233 = fmul double %mul129, %mul97
  %sub234 = fsub double %mul232, %mul233
  %mul235 = fmul double %mul129, %mul89
  %mul236 = fmul double %mul113, %mul105
  %sub237 = fsub double %mul235, %mul236
  %mul238 = fmul double %mul113, %mul97
  %mul239 = fmul double %mul121, %mul89
  %sub240 = fsub double %mul238, %mul239
  %mul241 = fmul double %sub234, %sub234
  %mul242 = fmul double %sub237, %sub237
  %add243 = fadd double %mul241, %mul242
  %mul244 = fmul double %sub240, %sub240
  %add245 = fadd double %add243, %mul244
  %add246 = fadd double %add245, 0x38754484932D2E72
  %call247 = call double @_Z4SQRTd(double %add246)
  %div248 = fdiv double %mul, %call247
  %call249 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* %domain, i32 %i.0)
  store double %div248, double* %call249, align 8, !tbaa !45
  %mul250 = fmul double %sub234, %div
  %mul251 = fmul double %sub237, %div
  %mul252 = fmul double %sub240, %div
  %add253 = fadd double %33, %34
  %add254 = fadd double %add253, %38
  %add255 = fadd double %add254, %37
  %add256 = fadd double %36, %35
  %add257 = fadd double %add256, %39
  %add258 = fadd double %add257, %40
  %sub259 = fsub double %add255, %add258
  %mul260 = fmul double -2.500000e-01, %sub259
  %add261 = fadd double %41, %42
  %add262 = fadd double %add261, %46
  %add263 = fadd double %add262, %45
  %add264 = fadd double %44, %43
  %add265 = fadd double %add264, %47
  %add266 = fadd double %add265, %48
  %sub267 = fsub double %add263, %add266
  %mul268 = fmul double -2.500000e-01, %sub267
  %add269 = fadd double %49, %50
  %add270 = fadd double %add269, %54
  %add271 = fadd double %add270, %53
  %add272 = fadd double %52, %51
  %add273 = fadd double %add272, %55
  %add274 = fadd double %add273, %56
  %sub275 = fsub double %add271, %add274
  %mul276 = fmul double -2.500000e-01, %sub275
  %mul277 = fmul double %mul250, %mul260
  %mul278 = fmul double %mul251, %mul268
  %add279 = fadd double %mul277, %mul278
  %mul280 = fmul double %mul252, %mul276
  %add281 = fadd double %add279, %mul280
  %call282 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %domain, i32 %i.0)
  store double %add281, double* %call282, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !188

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL22CalcMonotonicQForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6numRegEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %cmp = icmp slt i32 %r.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %domain, i32 %r.0)
  %1 = load i32, i32* %call1, align 4, !tbaa !34
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @_ZL28CalcMonotonicQRegionForElemsR6Domainid(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %r.0, double 0x38754484932D2E72)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %r.0, 1
  br label %for.cond, !llvm.loop !189

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain19DeallocateGradientsEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_delx_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 37
  call void @_Z7ReleaseIdEvPPT_(double** %m_delx_zeta)
  %m_delx_eta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 36
  call void @_Z7ReleaseIdEvPPT_(double** %m_delx_eta)
  %m_delx_xi = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 35
  call void @_Z7ReleaseIdEvPPT_(double** %m_delx_xi)
  %m_delv_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 34
  call void @_Z7ReleaseIdEvPPT_(double** %m_delv_zeta)
  %m_delv_eta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 33
  call void @_Z7ReleaseIdEvPPT_(double** %m_delv_eta)
  %m_delv_xi = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 32
  call void @_Z7ReleaseIdEvPPT_(double** %m_delv_xi)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5qstopEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_qstop = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 58
  %0 = load double, double* %m_qstop, align 8, !tbaa !20
  ret double %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL28CalcMonotonicQRegionForElemsR6Domainid(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %r, double %ptiny) #7 {
entry:
  %call = call double @_ZNK6Domain18monoq_limiter_multEv(%class.Domain* %domain)
  %call1 = call double @_ZNK6Domain15monoq_max_slopeEv(%class.Domain* %domain)
  %call2 = call double @_ZNK6Domain9qlc_monoqEv(%class.Domain* %domain)
  %call3 = call double @_ZNK6Domain9qqc_monoqEv(%class.Domain* %domain)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %call4 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemSizeEi(%class.Domain* %domain, i32 %r)
  %0 = load i32, i32* %call4, align 4, !tbaa !34
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain11regElemlistEii(%class.Domain* %domain, i32 %r, i32 %i.0)
  %1 = load i32, i32* %call5, align 4, !tbaa !34
  %call6 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6elemBCEi(%class.Domain* %domain, i32 %1)
  %2 = load i32, i32* %call6, align 4, !tbaa !34
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %domain, i32 %1)
  %3 = load double, double* %call7, align 8, !tbaa !45
  %add = fadd double %3, %ptiny
  %div = fdiv double 1.000000e+00, %add
  %and = and i32 %2, 7
  switch i32 %and, label %sw.default [
    i32 4, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb12
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %call8 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lximEi(%class.Domain* %domain, i32 %1)
  %4 = load i32, i32* %call8, align 4, !tbaa !34
  %call9 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %domain, i32 %4)
  %5 = load double, double* %call9, align 8, !tbaa !45
  br label %sw.epilog

sw.bb10:                                          ; preds = %for.body
  %call11 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %domain, i32 %1)
  %6 = load double, double* %call11, align 8, !tbaa !45
  br label %sw.epilog

sw.bb12:                                          ; preds = %for.body
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !77
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1787)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb12, %sw.bb10, %sw.bb
  %delvm.0 = phi double [ 0.000000e+00, %sw.default ], [ 0.000000e+00, %sw.bb12 ], [ %6, %sw.bb10 ], [ %5, %sw.bb ]
  %and14 = and i32 %2, 56
  switch i32 %and14, label %sw.default21 [
    i32 32, label %sw.bb15
    i32 0, label %sw.bb15
    i32 8, label %sw.bb18
    i32 16, label %sw.bb20
  ]

sw.bb15:                                          ; preds = %sw.epilog, %sw.epilog
  %call16 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain4lxipEi(%class.Domain* %domain, i32 %1)
  %8 = load i32, i32* %call16, align 4, !tbaa !34
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %domain, i32 %8)
  %9 = load double, double* %call17, align 8, !tbaa !45
  br label %sw.epilog23

sw.bb18:                                          ; preds = %sw.epilog
  %call19 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %domain, i32 %1)
  %10 = load double, double* %call19, align 8, !tbaa !45
  br label %sw.epilog23

sw.bb20:                                          ; preds = %sw.epilog
  br label %sw.epilog23

sw.default21:                                     ; preds = %sw.epilog
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !77
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1797)
  br label %sw.epilog23

sw.epilog23:                                      ; preds = %sw.default21, %sw.bb20, %sw.bb18, %sw.bb15
  %delvp.0 = phi double [ 0.000000e+00, %sw.default21 ], [ 0.000000e+00, %sw.bb20 ], [ %10, %sw.bb18 ], [ %9, %sw.bb15 ]
  %mul = fmul double %delvm.0, %div
  %mul24 = fmul double %delvp.0, %div
  %add25 = fadd double %mul, %mul24
  %mul26 = fmul double 5.000000e-01, %add25
  %mul27 = fmul double %mul, %call
  %mul28 = fmul double %mul24, %call
  %cmp29 = fcmp olt double %mul27, %mul26
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog23
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog23
  %phixi.0 = phi double [ %mul27, %if.then ], [ %mul26, %sw.epilog23 ]
  %cmp30 = fcmp olt double %mul28, %phixi.0
  br i1 %cmp30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end
  %phixi.1 = phi double [ %mul28, %if.then31 ], [ %phixi.0, %if.end ]
  %cmp33 = fcmp olt double %phixi.1, 0.000000e+00
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end32
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.end32
  %phixi.2 = phi double [ 0.000000e+00, %if.then34 ], [ %phixi.1, %if.end32 ]
  %cmp36 = fcmp ogt double %phixi.2, %call1
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end35
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35
  %phixi.3 = phi double [ %call1, %if.then37 ], [ %phixi.2, %if.end35 ]
  %call39 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %domain, i32 %1)
  %12 = load double, double* %call39, align 8, !tbaa !45
  %add40 = fadd double %12, %ptiny
  %div41 = fdiv double 1.000000e+00, %add40
  %and42 = and i32 %2, 448
  switch i32 %and42, label %sw.default49 [
    i32 256, label %sw.bb43
    i32 0, label %sw.bb43
    i32 64, label %sw.bb46
    i32 128, label %sw.bb48
  ]

sw.bb43:                                          ; preds = %if.end38, %if.end38
  %call44 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letamEi(%class.Domain* %domain, i32 %1)
  %13 = load i32, i32* %call44, align 4, !tbaa !34
  %call45 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %domain, i32 %13)
  %14 = load double, double* %call45, align 8, !tbaa !45
  br label %sw.epilog51

sw.bb46:                                          ; preds = %if.end38
  %call47 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %domain, i32 %1)
  %15 = load double, double* %call47, align 8, !tbaa !45
  br label %sw.epilog51

sw.bb48:                                          ; preds = %if.end38
  br label %sw.epilog51

sw.default49:                                     ; preds = %if.end38
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !77
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1825)
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %sw.default49, %sw.bb48, %sw.bb46, %sw.bb43
  %delvm.1 = phi double [ 0.000000e+00, %sw.default49 ], [ 0.000000e+00, %sw.bb48 ], [ %15, %sw.bb46 ], [ %14, %sw.bb43 ]
  %and52 = and i32 %2, 3584
  switch i32 %and52, label %sw.default59 [
    i32 2048, label %sw.bb53
    i32 0, label %sw.bb53
    i32 512, label %sw.bb56
    i32 1024, label %sw.bb58
  ]

sw.bb53:                                          ; preds = %sw.epilog51, %sw.epilog51
  %call54 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5letapEi(%class.Domain* %domain, i32 %1)
  %17 = load i32, i32* %call54, align 4, !tbaa !34
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %domain, i32 %17)
  %18 = load double, double* %call55, align 8, !tbaa !45
  br label %sw.epilog61

sw.bb56:                                          ; preds = %sw.epilog51
  %call57 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %domain, i32 %1)
  %19 = load double, double* %call57, align 8, !tbaa !45
  br label %sw.epilog61

sw.bb58:                                          ; preds = %sw.epilog51
  br label %sw.epilog61

sw.default59:                                     ; preds = %sw.epilog51
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !77
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1835)
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.default59, %sw.bb58, %sw.bb56, %sw.bb53
  %delvp.1 = phi double [ 0.000000e+00, %sw.default59 ], [ 0.000000e+00, %sw.bb58 ], [ %19, %sw.bb56 ], [ %18, %sw.bb53 ]
  %mul62 = fmul double %delvm.1, %div41
  %mul63 = fmul double %delvp.1, %div41
  %add64 = fadd double %mul62, %mul63
  %mul65 = fmul double 5.000000e-01, %add64
  %mul66 = fmul double %mul62, %call
  %mul67 = fmul double %mul63, %call
  %cmp68 = fcmp olt double %mul66, %mul65
  br i1 %cmp68, label %if.then69, label %if.end70

if.then69:                                        ; preds = %sw.epilog61
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %sw.epilog61
  %phieta.0 = phi double [ %mul66, %if.then69 ], [ %mul65, %sw.epilog61 ]
  %cmp71 = fcmp olt double %mul67, %phieta.0
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end70
  br label %if.end73

if.end73:                                         ; preds = %if.then72, %if.end70
  %phieta.1 = phi double [ %mul67, %if.then72 ], [ %phieta.0, %if.end70 ]
  %cmp74 = fcmp olt double %phieta.1, 0.000000e+00
  br i1 %cmp74, label %if.then75, label %if.end76

if.then75:                                        ; preds = %if.end73
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %if.end73
  %phieta.2 = phi double [ 0.000000e+00, %if.then75 ], [ %phieta.1, %if.end73 ]
  %cmp77 = fcmp ogt double %phieta.2, %call1
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.end76
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end76
  %phieta.3 = phi double [ %call1, %if.then78 ], [ %phieta.2, %if.end76 ]
  %call80 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %domain, i32 %1)
  %21 = load double, double* %call80, align 8, !tbaa !45
  %add81 = fadd double %21, %ptiny
  %div82 = fdiv double 1.000000e+00, %add81
  %and83 = and i32 %2, 28672
  switch i32 %and83, label %sw.default90 [
    i32 16384, label %sw.bb84
    i32 0, label %sw.bb84
    i32 4096, label %sw.bb87
    i32 8192, label %sw.bb89
  ]

sw.bb84:                                          ; preds = %if.end79, %if.end79
  %call85 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetamEi(%class.Domain* %domain, i32 %1)
  %22 = load i32, i32* %call85, align 4, !tbaa !34
  %call86 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %domain, i32 %22)
  %23 = load double, double* %call86, align 8, !tbaa !45
  br label %sw.epilog92

sw.bb87:                                          ; preds = %if.end79
  %call88 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %domain, i32 %1)
  %24 = load double, double* %call88, align 8, !tbaa !45
  br label %sw.epilog92

sw.bb89:                                          ; preds = %if.end79
  br label %sw.epilog92

sw.default90:                                     ; preds = %if.end79
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !77
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1862)
  br label %sw.epilog92

sw.epilog92:                                      ; preds = %sw.default90, %sw.bb89, %sw.bb87, %sw.bb84
  %delvm.2 = phi double [ 0.000000e+00, %sw.default90 ], [ 0.000000e+00, %sw.bb89 ], [ %24, %sw.bb87 ], [ %23, %sw.bb84 ]
  %and93 = and i32 %2, 229376
  switch i32 %and93, label %sw.default100 [
    i32 131072, label %sw.bb94
    i32 0, label %sw.bb94
    i32 32768, label %sw.bb97
    i32 65536, label %sw.bb99
  ]

sw.bb94:                                          ; preds = %sw.epilog92, %sw.epilog92
  %call95 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain6lzetapEi(%class.Domain* %domain, i32 %1)
  %26 = load i32, i32* %call95, align 4, !tbaa !34
  %call96 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %domain, i32 %26)
  %27 = load double, double* %call96, align 8, !tbaa !45
  br label %sw.epilog102

sw.bb97:                                          ; preds = %sw.epilog92
  %call98 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %domain, i32 %1)
  %28 = load double, double* %call98, align 8, !tbaa !45
  br label %sw.epilog102

sw.bb99:                                          ; preds = %sw.epilog92
  br label %sw.epilog102

sw.default100:                                    ; preds = %sw.epilog92
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !77
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i32 1872)
  br label %sw.epilog102

sw.epilog102:                                     ; preds = %sw.default100, %sw.bb99, %sw.bb97, %sw.bb94
  %delvp.2 = phi double [ 0.000000e+00, %sw.default100 ], [ 0.000000e+00, %sw.bb99 ], [ %28, %sw.bb97 ], [ %27, %sw.bb94 ]
  %mul103 = fmul double %delvm.2, %div82
  %mul104 = fmul double %delvp.2, %div82
  %add105 = fadd double %mul103, %mul104
  %mul106 = fmul double 5.000000e-01, %add105
  %mul107 = fmul double %mul103, %call
  %mul108 = fmul double %mul104, %call
  %cmp109 = fcmp olt double %mul107, %mul106
  br i1 %cmp109, label %if.then110, label %if.end111

if.then110:                                       ; preds = %sw.epilog102
  br label %if.end111

if.end111:                                        ; preds = %if.then110, %sw.epilog102
  %phizeta.0 = phi double [ %mul107, %if.then110 ], [ %mul106, %sw.epilog102 ]
  %cmp112 = fcmp olt double %mul108, %phizeta.0
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end111
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end111
  %phizeta.1 = phi double [ %mul108, %if.then113 ], [ %phizeta.0, %if.end111 ]
  %cmp115 = fcmp olt double %phizeta.1, 0.000000e+00
  br i1 %cmp115, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end114
  br label %if.end117

if.end117:                                        ; preds = %if.then116, %if.end114
  %phizeta.2 = phi double [ 0.000000e+00, %if.then116 ], [ %phizeta.1, %if.end114 ]
  %cmp118 = fcmp ogt double %phizeta.2, %call1
  br i1 %cmp118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.end117
  br label %if.end120

if.end120:                                        ; preds = %if.then119, %if.end117
  %phizeta.3 = phi double [ %call1, %if.then119 ], [ %phizeta.2, %if.end117 ]
  %call121 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vdovEi(%class.Domain* %domain, i32 %1)
  %30 = load double, double* %call121, align 8, !tbaa !45
  %cmp122 = fcmp ogt double %30, 0.000000e+00
  br i1 %cmp122, label %if.then123, label %if.else

if.then123:                                       ; preds = %if.end120
  br label %if.end172

if.else:                                          ; preds = %if.end120
  %call124 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %domain, i32 %1)
  %31 = load double, double* %call124, align 8, !tbaa !45
  %call125 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* %domain, i32 %1)
  %32 = load double, double* %call125, align 8, !tbaa !45
  %mul126 = fmul double %31, %32
  %call127 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %domain, i32 %1)
  %33 = load double, double* %call127, align 8, !tbaa !45
  %call128 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* %domain, i32 %1)
  %34 = load double, double* %call128, align 8, !tbaa !45
  %mul129 = fmul double %33, %34
  %call130 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %domain, i32 %1)
  %35 = load double, double* %call130, align 8, !tbaa !45
  %call131 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* %domain, i32 %1)
  %36 = load double, double* %call131, align 8, !tbaa !45
  %mul132 = fmul double %35, %36
  %cmp133 = fcmp ogt double %mul126, 0.000000e+00
  br i1 %cmp133, label %if.then134, label %if.end135

if.then134:                                       ; preds = %if.else
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.else
  %delvxxi.0 = phi double [ 0.000000e+00, %if.then134 ], [ %mul126, %if.else ]
  %cmp136 = fcmp ogt double %mul129, 0.000000e+00
  br i1 %cmp136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end135
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end135
  %delvxeta.0 = phi double [ 0.000000e+00, %if.then137 ], [ %mul129, %if.end135 ]
  %cmp139 = fcmp ogt double %mul132, 0.000000e+00
  br i1 %cmp139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end138
  br label %if.end141

if.end141:                                        ; preds = %if.then140, %if.end138
  %delvxzeta.0 = phi double [ 0.000000e+00, %if.then140 ], [ %mul132, %if.end138 ]
  %call142 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %domain, i32 %1)
  %37 = load double, double* %call142, align 8, !tbaa !45
  %call143 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %domain, i32 %1)
  %38 = load double, double* %call143, align 8, !tbaa !45
  %call144 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4vnewEi(%class.Domain* %domain, i32 %1)
  %39 = load double, double* %call144, align 8, !tbaa !45
  %mul145 = fmul double %38, %39
  %div146 = fdiv double %37, %mul145
  %fneg = fneg double %call2
  %mul147 = fmul double %fneg, %div146
  %sub = fsub double 1.000000e+00, %phixi.3
  %mul148 = fmul double %delvxxi.0, %sub
  %sub149 = fsub double 1.000000e+00, %phieta.3
  %mul150 = fmul double %delvxeta.0, %sub149
  %add151 = fadd double %mul148, %mul150
  %sub152 = fsub double 1.000000e+00, %phizeta.3
  %mul153 = fmul double %delvxzeta.0, %sub152
  %add154 = fadd double %add151, %mul153
  %mul155 = fmul double %mul147, %add154
  %mul156 = fmul double %call3, %div146
  %mul157 = fmul double %delvxxi.0, %delvxxi.0
  %mul158 = fmul double %phixi.3, %phixi.3
  %sub159 = fsub double 1.000000e+00, %mul158
  %mul160 = fmul double %mul157, %sub159
  %mul161 = fmul double %delvxeta.0, %delvxeta.0
  %mul162 = fmul double %phieta.3, %phieta.3
  %sub163 = fsub double 1.000000e+00, %mul162
  %mul164 = fmul double %mul161, %sub163
  %add165 = fadd double %mul160, %mul164
  %mul166 = fmul double %delvxzeta.0, %delvxzeta.0
  %mul167 = fmul double %phizeta.3, %phizeta.3
  %sub168 = fsub double 1.000000e+00, %mul167
  %mul169 = fmul double %mul166, %sub168
  %add170 = fadd double %add165, %mul169
  %mul171 = fmul double %mul156, %add170
  br label %if.end172

if.end172:                                        ; preds = %if.end141, %if.then123
  %qquad.0 = phi double [ 0.000000e+00, %if.then123 ], [ %mul171, %if.end141 ]
  %qlin.0 = phi double [ 0.000000e+00, %if.then123 ], [ %mul155, %if.end141 ]
  %call173 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qqEi(%class.Domain* %domain, i32 %1)
  store double %qquad.0, double* %call173, align 8, !tbaa !45
  %call174 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2qlEi(%class.Domain* %domain, i32 %1)
  store double %qlin.0, double* %call174, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %if.end172
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !190

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain18monoq_limiter_multEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_monoq_limiter_mult = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 60
  %0 = load double, double* %m_monoq_limiter_mult, align 8, !tbaa !22
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain15monoq_max_slopeEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_monoq_max_slope = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 59
  %0 = load double, double* %m_monoq_max_slope, align 8, !tbaa !21
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain9qlc_monoqEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_qlc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 61
  %0 = load double, double* %m_qlc_monoq, align 8, !tbaa !23
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain9qqc_monoqEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_qqc_monoq = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 62
  %0 = load double, double* %m_qqc_monoq, align 8, !tbaa !24
  ret double %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delv_xiEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_delv_xi = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 32
  %0 = load double*, double** %m_delv_xi, align 8, !tbaa !185
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delv_etaEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_delv_eta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 33
  %0 = load double*, double** %m_delv_eta, align 8, !tbaa !186
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delv_zetaEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_delv_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 34
  %0 = load double*, double** %m_delv_zeta, align 8, !tbaa !187
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain7delx_xiEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_delx_xi = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 35
  %0 = load double*, double** %m_delx_xi, align 8, !tbaa !182
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain8delx_etaEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_delx_eta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 36
  %0 = load double*, double** %m_delx_eta, align 8, !tbaa !183
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain9delx_zetaEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_delx_zeta = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 37
  %0 = load double*, double** %m_delx_zeta, align 8, !tbaa !184
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds double, double* %0, i64 %idxprom
  ret double* %arrayidx
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain15AllocateStrainsEi(%class.Domain* %this, i32 %numElem) #1 comdat align 2 {
entry:
  %conv = sext i32 %numElem to i64
  %call = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  %m_dxx = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 29
  store double* %call, double** %m_dxx, align 8, !tbaa !128
  %conv2 = sext i32 %numElem to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv2)
  %m_dyy = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 30
  store double* %call3, double** %m_dyy, align 8, !tbaa !129
  %conv4 = sext i32 %numElem to i64
  %call5 = call double* @_Z8AllocateIdEPT_m(i64 %conv4)
  %m_dzz = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 31
  store double* %call5, double** %m_dzz, align 8, !tbaa !130
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN6Domain17DeallocateStrainsEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_dzz = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 31
  call void @_Z7ReleaseIdEvPPT_(double** %m_dzz)
  %m_dyy = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 30
  call void @_Z7ReleaseIdEvPPT_(double** %m_dyy)
  %m_dxx = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 29
  call void @_Z7ReleaseIdEvPPT_(double** %m_dxx)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain5u_cutEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_u_cut = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 55
  %0 = load double, double* %m_u_cut, align 8, !tbaa !17
  ret double %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL17CalcForceForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %i.0)
  store double 0.000000e+00, double* %call1, align 8, !tbaa !45
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %i.0)
  store double 0.000000e+00, double* %call2, align 8, !tbaa !45
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %i.0)
  store double 0.000000e+00, double* %call3, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !191

for.end:                                          ; preds = %for.cond.cleanup
  call void @_ZL23CalcVolumeForceForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL24CalcAccelerationForNodesR6Domaini(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %numNode) #7 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %numNode
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %i.0)
  %0 = load double, double* %call, align 8, !tbaa !45
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %domain, i32 %i.0)
  %1 = load double, double* %call1, align 8, !tbaa !45
  %div = fdiv double %0, %1
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %domain, i32 %i.0)
  store double %div, double* %call2, align 8, !tbaa !45
  %call3 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %i.0)
  %2 = load double, double* %call3, align 8, !tbaa !45
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %domain, i32 %i.0)
  %3 = load double, double* %call4, align 8, !tbaa !45
  %div5 = fdiv double %2, %3
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %domain, i32 %i.0)
  store double %div5, double* %call6, align 8, !tbaa !45
  %call7 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %i.0)
  %4 = load double, double* %call7, align 8, !tbaa !45
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain9nodalMassEi(%class.Domain* %domain, i32 %i.0)
  %5 = load double, double* %call8, align 8, !tbaa !45
  %div9 = fdiv double %4, %5
  %call10 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %domain, i32 %i.0)
  store double %div9, double* %call10, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !192

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL43ApplyAccelerationBoundaryConditionsForNodesR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5sizeXEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %add = add nsw i32 %0, 1
  %add1 = add nsw i32 %0, 1
  %mul = mul nsw i32 %add, %add1
  %call2 = call zeroext i1 @_ZN6Domain10symmXemptyEv(%class.Domain* %domain)
  %lnot = xor i1 %call2, true
  %conv = zext i1 %lnot to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp3 = icmp slt i32 %i.0, %mul
  br i1 %cmp3, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call4 = call i32 @_ZN6Domain5symmXEi(%class.Domain* %domain, i32 %i.0)
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %domain, i32 %call4)
  store double 0.000000e+00, double* %call5, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !193

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %call6 = call zeroext i1 @_ZN6Domain10symmYemptyEv(%class.Domain* %domain)
  %lnot7 = xor i1 %call6, true
  %conv8 = zext i1 %lnot7 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then10, label %if.end21

if.then10:                                        ; preds = %if.end
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc18, %if.then10
  %i11.0 = phi i32 [ 0, %if.then10 ], [ %inc19, %for.inc18 ]
  %cmp13 = icmp slt i32 %i11.0, %mul
  br i1 %cmp13, label %for.body15, label %for.cond.cleanup14

for.cond.cleanup14:                               ; preds = %for.cond12
  br label %for.end20

for.body15:                                       ; preds = %for.cond12
  %call16 = call i32 @_ZN6Domain5symmYEi(%class.Domain* %domain, i32 %i11.0)
  %call17 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %domain, i32 %call16)
  store double 0.000000e+00, double* %call17, align 8, !tbaa !45
  br label %for.inc18

for.inc18:                                        ; preds = %for.body15
  %inc19 = add nsw i32 %i11.0, 1
  br label %for.cond12, !llvm.loop !194

for.end20:                                        ; preds = %for.cond.cleanup14
  br label %if.end21

if.end21:                                         ; preds = %for.end20, %if.end
  %call22 = call zeroext i1 @_ZN6Domain10symmZemptyEv(%class.Domain* %domain)
  %lnot23 = xor i1 %call22, true
  %conv24 = zext i1 %lnot23 to i32
  %cmp25 = icmp ne i32 %conv24, 0
  br i1 %cmp25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %if.end21
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %if.then26
  %i27.0 = phi i32 [ 0, %if.then26 ], [ %inc35, %for.inc34 ]
  %cmp29 = icmp slt i32 %i27.0, %mul
  br i1 %cmp29, label %for.body31, label %for.cond.cleanup30

for.cond.cleanup30:                               ; preds = %for.cond28
  br label %for.end36

for.body31:                                       ; preds = %for.cond28
  %call32 = call i32 @_ZN6Domain5symmZEi(%class.Domain* %domain, i32 %i27.0)
  %call33 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %domain, i32 %call32)
  store double 0.000000e+00, double* %call33, align 8, !tbaa !45
  br label %for.inc34

for.inc34:                                        ; preds = %for.body31
  %inc35 = add nsw i32 %i27.0, 1
  br label %for.cond28, !llvm.loop !195

for.end36:                                        ; preds = %for.cond.cleanup30
  br label %if.end37

if.end37:                                         ; preds = %for.end36, %if.end21
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL20CalcVelocityForNodesR6Domainddi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %dt, double %u_cut, i32 %numNode) #7 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %numNode
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %i.0)
  %0 = load double, double* %call, align 8, !tbaa !45
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3xddEi(%class.Domain* %domain, i32 %i.0)
  %1 = load double, double* %call1, align 8, !tbaa !45
  %mul = fmul double %1, %dt
  %add = fadd double %0, %mul
  %call2 = call double @_Z4FABSd(double %add)
  %cmp3 = fcmp olt double %call2, %u_cut
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %xdtmp.0 = phi double [ 0.000000e+00, %if.then ], [ %add, %for.body ]
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %i.0)
  store double %xdtmp.0, double* %call4, align 8, !tbaa !45
  %call5 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %i.0)
  %2 = load double, double* %call5, align 8, !tbaa !45
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3yddEi(%class.Domain* %domain, i32 %i.0)
  %3 = load double, double* %call6, align 8, !tbaa !45
  %mul7 = fmul double %3, %dt
  %add8 = fadd double %2, %mul7
  %call9 = call double @_Z4FABSd(double %add8)
  %cmp10 = fcmp olt double %call9, %u_cut
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end
  %ydtmp.0 = phi double [ 0.000000e+00, %if.then11 ], [ %add8, %if.end ]
  %call13 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %i.0)
  store double %ydtmp.0, double* %call13, align 8, !tbaa !45
  %call14 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %i.0)
  %4 = load double, double* %call14, align 8, !tbaa !45
  %call15 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain3zddEi(%class.Domain* %domain, i32 %i.0)
  %5 = load double, double* %call15, align 8, !tbaa !45
  %mul16 = fmul double %5, %dt
  %add17 = fadd double %4, %mul16
  %call18 = call double @_Z4FABSd(double %add17)
  %cmp19 = fcmp olt double %call18, %u_cut
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end12
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end12
  %zdtmp.0 = phi double [ 0.000000e+00, %if.then20 ], [ %add17, %if.end12 ]
  %call22 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %i.0)
  store double %zdtmp.0, double* %call22, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !196

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL20CalcPositionForNodesR6Domaindi(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double %dt, i32 %numNode) #10 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %numNode
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %i.0)
  %0 = load double, double* %call, align 8, !tbaa !45
  %mul = fmul double %0, %dt
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1xEi(%class.Domain* %domain, i32 %i.0)
  %1 = load double, double* %call1, align 8, !tbaa !45
  %add = fadd double %1, %mul
  store double %add, double* %call1, align 8, !tbaa !45
  %call2 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %i.0)
  %2 = load double, double* %call2, align 8, !tbaa !45
  %mul3 = fmul double %2, %dt
  %call4 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1yEi(%class.Domain* %domain, i32 %i.0)
  %3 = load double, double* %call4, align 8, !tbaa !45
  %add5 = fadd double %3, %mul3
  store double %add5, double* %call4, align 8, !tbaa !45
  %call6 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %i.0)
  %4 = load double, double* %call6, align 8, !tbaa !45
  %mul7 = fmul double %4, %dt
  %call8 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1zEi(%class.Domain* %domain, i32 %i.0)
  %5 = load double, double* %call8, align 8, !tbaa !45
  %add9 = fadd double %5, %mul7
  store double %add9, double* %call8, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !197

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6Domain10symmXemptyEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 13
  %call = call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %m_symmX) #14
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain5symmXEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_symmX = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 13
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmX, i64 %conv) #14
  %0 = load i32, i32* %call, align 4, !tbaa !34
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6Domain10symmYemptyEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 14
  %call = call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %m_symmY) #14
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain5symmYEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_symmY = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 14
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmY, i64 %conv) #14
  %0 = load i32, i32* %call, align 4, !tbaa !34
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN6Domain10symmZemptyEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 15
  %call = call zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %m_symmZ) #14
  ret i1 %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain5symmZEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_symmZ = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 15
  %conv = sext i32 %idx to i64
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZNSt6vectorIiSaIiEEixEm(%"class.std::vector.0"* %m_symmZ, i64 %conv) #14
  %0 = load i32, i32* %call, align 4, !tbaa !34
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(%"class.std::vector.0"* %this) #1 comdat align 2 {
entry:
  %ref.tmp = alloca %"class.std::move_iterator.5", align 8
  %ref.tmp2 = alloca %"class.std::move_iterator.5", align 8
  %0 = bitcast %"class.std::move_iterator.5"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %call = call i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %this) #14
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %ref.tmp, i32 0, i32 0
  store i32* %call, i32** %coerce.dive, align 8
  %1 = bitcast %"class.std::move_iterator.5"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %call3 = call i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this) #14
  %coerce.dive4 = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %ref.tmp2, i32 0, i32 0
  store i32* %call3, i32** %coerce.dive4, align 8
  %call5 = call zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.std::move_iterator.5"* nonnull align 8 dereferenceable(8) %ref.tmp, %"class.std::move_iterator.5"* nonnull align 8 dereferenceable(8) %ref.tmp2) #14
  %2 = bitcast %"class.std::move_iterator.5"* %ref.tmp2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %2) #14
  %3 = bitcast %"class.std::move_iterator.5"* %ref.tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %3) #14
  ret i1 %call5
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE5beginEv(%"class.std::vector.0"* %this) #1 comdat align 2 {
entry:
  %retval = alloca %"class.std::move_iterator.5", align 8
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_start = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 0
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.std::move_iterator.5"* %retval, i32** nonnull align 8 dereferenceable(8) %_M_start) #14
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZNKSt6vectorIiSaIiEE3endEv(%"class.std::vector.0"* %this) #1 comdat align 2 {
entry:
  %retval = alloca %"class.std::move_iterator.5", align 8
  %0 = bitcast %"class.std::vector.0"* %this to %"struct.std::_Vector_base.1"*
  %_M_impl = getelementptr inbounds %"struct.std::_Vector_base.1", %"struct.std::_Vector_base.1"* %0, i32 0, i32 0
  %_M_finish = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl"* %_M_impl, i32 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.std::move_iterator.5"* %retval, i32** nonnull align 8 dereferenceable(8) %_M_finish) #14
  %coerce.dive = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %retval, i32 0, i32 0
  %1 = load i32*, i32** %coerce.dive, align 8
  ret i32* %1
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(%"class.std::move_iterator.5"* nonnull align 8 dereferenceable(8) %__lhs, %"class.std::move_iterator.5"* nonnull align 8 dereferenceable(8) %__rhs) #10 comdat {
entry:
  %call = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.std::move_iterator.5"* %__lhs) #14
  %0 = load i32*, i32** %call, align 8, !tbaa !77
  %call1 = call nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.std::move_iterator.5"* %__rhs) #14
  %1 = load i32*, i32** %call1, align 8, !tbaa !77
  %cmp = icmp eq i32* %0, %1
  ret i1 %cmp
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) i32** @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(%"class.std::move_iterator.5"* %this) #1 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %this, i32 0, i32 0
  ret i32** %_M_current
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(%"class.std::move_iterator.5"* %this, i32** nonnull align 8 dereferenceable(8) %__i) unnamed_addr #1 comdat align 2 {
entry:
  %_M_current = getelementptr inbounds %"class.std::move_iterator.5", %"class.std::move_iterator.5"* %this, i32 0, i32 0
  %0 = load i32*, i32** %__i, align 8, !tbaa !77
  store i32* %0, i32** %_M_current, align 8, !tbaa !198
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_fx = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 9
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_fx, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_fy = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 10
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_fy, i64 %conv) #14
  ret double* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_fz = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 11
  %conv = sext i32 %idx to i64
  %call = call nonnull align 8 dereferenceable(8) double* @_ZNSt6vectorIdSaIdEEixEm(%"class.std::vector"* %m_fz, i64 %conv) #14
  ret double* %call
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL23CalcVolumeForceForElemsR6Domain(%class.Domain* nonnull align 8 dereferenceable(1312) %domain) #7 {
entry:
  %sigxx = alloca double*, align 8
  %sigyy = alloca double*, align 8
  %sigzz = alloca double*, align 8
  %determ = alloca double*, align 8
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %call1 = call double @_ZNK6Domain6hgcoefEv(%class.Domain* %domain)
  %1 = bitcast double** %sigxx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %conv = sext i32 %0 to i64
  %call2 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call2, double** %sigxx, align 8, !tbaa !77
  %2 = bitcast double** %sigyy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  %conv3 = sext i32 %0 to i64
  %call4 = call double* @_Z8AllocateIdEPT_m(i64 %conv3)
  store double* %call4, double** %sigyy, align 8, !tbaa !77
  %3 = bitcast double** %sigzz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #14
  %conv5 = sext i32 %0 to i64
  %call6 = call double* @_Z8AllocateIdEPT_m(i64 %conv5)
  store double* %call6, double** %sigzz, align 8, !tbaa !77
  %4 = bitcast double** %determ to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #14
  %conv7 = sext i32 %0 to i64
  %call8 = call double* @_Z8AllocateIdEPT_m(i64 %conv7)
  store double* %call8, double** %determ, align 8, !tbaa !77
  %5 = load double*, double** %sigxx, align 8, !tbaa !77
  %6 = load double*, double** %sigyy, align 8, !tbaa !77
  %7 = load double*, double** %sigzz, align 8, !tbaa !77
  call void @_ZL23InitStressTermsForElemsR6DomainPdS1_S1_i(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %5, double* %6, double* %7, i32 %0)
  %8 = load double*, double** %sigxx, align 8, !tbaa !77
  %9 = load double*, double** %sigyy, align 8, !tbaa !77
  %10 = load double*, double** %sigzz, align 8, !tbaa !77
  %11 = load double*, double** %determ, align 8, !tbaa !77
  %call9 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %domain)
  %12 = load i32, i32* %call9, align 4, !tbaa !34
  call void @_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %8, double* %9, double* %10, double* %11, i32 %0, i32 %12)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %k.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ]
  %cmp10 = icmp slt i32 %k.0, %0
  br i1 %cmp10, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load double*, double** %determ, align 8, !tbaa !77
  %idxprom = sext i32 %k.0 to i64
  %arrayidx = getelementptr inbounds double, double* %13, i64 %idxprom
  %14 = load double, double* %arrayidx, align 8, !tbaa !45
  %cmp11 = fcmp ole double %14, 0.000000e+00
  br i1 %cmp11, label %if.then12, label %if.end

if.then12:                                        ; preds = %for.body
  call void @exit(i32 -1) #19
  unreachable

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !200

for.end:                                          ; preds = %for.cond.cleanup
  %15 = load double*, double** %determ, align 8, !tbaa !77
  call void @_ZL28CalcHourglassControlForElemsR6DomainPdd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %15, double %call1)
  call void @_Z7ReleaseIdEvPPT_(double** %determ)
  call void @_Z7ReleaseIdEvPPT_(double** %sigzz)
  call void @_Z7ReleaseIdEvPPT_(double** %sigyy)
  call void @_Z7ReleaseIdEvPPT_(double** %sigxx)
  %16 = bitcast double** %determ to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %16) #14
  %17 = bitcast double** %sigzz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %17) #14
  %18 = bitcast double** %sigyy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %18) #14
  %19 = bitcast double** %sigxx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #14
  br label %if.end13

if.end13:                                         ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local double @_ZNK6Domain6hgcoefEv(%class.Domain* %this) #1 comdat align 2 {
entry:
  %m_hgcoef = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 56
  %0 = load double, double* %m_hgcoef, align 8, !tbaa !18
  ret double %0
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL23InitStressTermsForElemsR6DomainPdS1_S1_i(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %sigxx, double* %sigyy, double* %sigzz, i32 %numElem) #7 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %numElem
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1pEi(%class.Domain* %domain, i32 %i.0)
  %0 = load double, double* %call, align 8, !tbaa !45
  %fneg = fneg double %0
  %call1 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1qEi(%class.Domain* %domain, i32 %i.0)
  %1 = load double, double* %call1, align 8, !tbaa !45
  %sub = fsub double %fneg, %1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds double, double* %sigzz, i64 %idxprom
  store double %sub, double* %arrayidx, align 8, !tbaa !45
  %idxprom2 = sext i32 %i.0 to i64
  %arrayidx3 = getelementptr inbounds double, double* %sigyy, i64 %idxprom2
  store double %sub, double* %arrayidx3, align 8, !tbaa !45
  %idxprom4 = sext i32 %i.0 to i64
  %arrayidx5 = getelementptr inbounds double, double* %sigxx, i64 %idxprom4
  store double %sub, double* %arrayidx5, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !201

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL23IntegrateStressForElemsR6DomainPdS1_S1_S1_ii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %sigxx, double* %sigyy, double* %sigzz, double* %determ, i32 %numElem, i32 %numNode) #7 {
entry:
  %fx_elem = alloca double*, align 8
  %fy_elem = alloca double*, align 8
  %fz_elem = alloca double*, align 8
  %fx_local = alloca [8 x double], align 16
  %fy_local = alloca [8 x double], align 16
  %fz_local = alloca [8 x double], align 16
  %B = alloca [3 x [8 x double]], align 16
  %x_local = alloca [8 x double], align 16
  %y_local = alloca [8 x double], align 16
  %z_local = alloca [8 x double], align 16
  %mul = mul nsw i32 %numElem, 8
  %0 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %1 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %2 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  %3 = bitcast [8 x double]* %fx_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %3) #14
  %4 = bitcast [8 x double]* %fy_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %4) #14
  %5 = bitcast [8 x double]* %fz_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %5) #14
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc68, %if.end
  %k.0 = phi i32 [ 0, %if.end ], [ %inc69, %for.inc68 ]
  %cmp5 = icmp slt i32 %k.0, %numElem
  br i1 %cmp5, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end70

for.body:                                         ; preds = %for.cond
  %call6 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %domain, i32 %k.0)
  %6 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 192, i8* %6) #14
  %7 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %7) #14
  %8 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %8) #14
  %9 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %9) #14
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay7 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay8 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  call void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32* %call6, double* %arraydecay, double* %arraydecay7, double* %arraydecay8)
  %arraydecay9 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay10 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay11 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  %arraydecay12 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %idxprom = sext i32 %k.0 to i64
  %arrayidx = getelementptr inbounds double, double* %determ, i64 %idxprom
  call void @_ZL32CalcElemShapeFunctionDerivativesPKdS0_S0_PA8_dPd(double* %arraydecay9, double* %arraydecay10, double* %arraydecay11, [8 x double]* %arraydecay12, double* %arrayidx)
  %arrayidx13 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx13, i64 0, i64 0
  %arrayidx15 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 1
  %arraydecay16 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx15, i64 0, i64 0
  %arrayidx17 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 2
  %arraydecay18 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx17, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [8 x double], [8 x double]* %x_local, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [8 x double], [8 x double]* %y_local, i64 0, i64 0
  %arraydecay21 = getelementptr inbounds [8 x double], [8 x double]* %z_local, i64 0, i64 0
  call void @_ZL19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* %arraydecay14, double* %arraydecay16, double* %arraydecay18, double* %arraydecay19, double* %arraydecay20, double* %arraydecay21)
  br i1 false, label %if.then23, label %if.else

if.then23:                                        ; preds = %for.body
  br label %if.end67

if.else:                                          ; preds = %for.body
  %arraydecay40 = getelementptr inbounds [3 x [8 x double]], [3 x [8 x double]]* %B, i64 0, i64 0
  %idxprom41 = sext i32 %k.0 to i64
  %arrayidx42 = getelementptr inbounds double, double* %sigxx, i64 %idxprom41
  %10 = load double, double* %arrayidx42, align 8, !tbaa !45
  %idxprom43 = sext i32 %k.0 to i64
  %arrayidx44 = getelementptr inbounds double, double* %sigyy, i64 %idxprom43
  %11 = load double, double* %arrayidx44, align 8, !tbaa !45
  %idxprom45 = sext i32 %k.0 to i64
  %arrayidx46 = getelementptr inbounds double, double* %sigzz, i64 %idxprom45
  %12 = load double, double* %arrayidx46, align 8, !tbaa !45
  %arraydecay47 = getelementptr inbounds [8 x double], [8 x double]* %fx_local, i64 0, i64 0
  %arraydecay48 = getelementptr inbounds [8 x double], [8 x double]* %fy_local, i64 0, i64 0
  %arraydecay49 = getelementptr inbounds [8 x double], [8 x double]* %fz_local, i64 0, i64 0
  call void @_ZL27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* %arraydecay40, double %10, double %11, double %12, double* %arraydecay47, double* %arraydecay48, double* %arraydecay49)
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc, %if.else
  %lnode.0 = phi i32 [ 0, %if.else ], [ %inc, %for.inc ]
  %cmp51 = icmp slt i32 %lnode.0, 8
  br i1 %cmp51, label %for.body53, label %for.cond.cleanup52

for.cond.cleanup52:                               ; preds = %for.cond50
  br label %for.end

for.body53:                                       ; preds = %for.cond50
  %idxprom54 = sext i32 %lnode.0 to i64
  %arrayidx55 = getelementptr inbounds i32, i32* %call6, i64 %idxprom54
  %13 = load i32, i32* %arrayidx55, align 4, !tbaa !34
  %idxprom56 = sext i32 %lnode.0 to i64
  %arrayidx57 = getelementptr inbounds [8 x double], [8 x double]* %fx_local, i64 0, i64 %idxprom56
  %14 = load double, double* %arrayidx57, align 8, !tbaa !45
  %call58 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %13)
  %15 = load double, double* %call58, align 8, !tbaa !45
  %add = fadd double %15, %14
  store double %add, double* %call58, align 8, !tbaa !45
  %idxprom59 = sext i32 %lnode.0 to i64
  %arrayidx60 = getelementptr inbounds [8 x double], [8 x double]* %fy_local, i64 0, i64 %idxprom59
  %16 = load double, double* %arrayidx60, align 8, !tbaa !45
  %call61 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %13)
  %17 = load double, double* %call61, align 8, !tbaa !45
  %add62 = fadd double %17, %16
  store double %add62, double* %call61, align 8, !tbaa !45
  %idxprom63 = sext i32 %lnode.0 to i64
  %arrayidx64 = getelementptr inbounds [8 x double], [8 x double]* %fz_local, i64 0, i64 %idxprom63
  %18 = load double, double* %arrayidx64, align 8, !tbaa !45
  %call65 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %13)
  %19 = load double, double* %call65, align 8, !tbaa !45
  %add66 = fadd double %19, %18
  store double %add66, double* %call65, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body53
  %inc = add nsw i32 %lnode.0, 1
  br label %for.cond50, !llvm.loop !202

for.end:                                          ; preds = %for.cond.cleanup52
  br label %if.end67

if.end67:                                         ; preds = %for.end, %if.then23
  %20 = bitcast [8 x double]* %z_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %20) #14
  %21 = bitcast [8 x double]* %y_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %21) #14
  %22 = bitcast [8 x double]* %x_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %22) #14
  %23 = bitcast [3 x [8 x double]]* %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 192, i8* %23) #14
  br label %for.inc68

for.inc68:                                        ; preds = %if.end67
  %inc69 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !203

for.end70:                                        ; preds = %for.cond.cleanup
  br i1 false, label %if.then72, label %if.end104

if.then72:                                        ; preds = %for.end70
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc101, %if.then72
  br i1 undef, label %for.body77, label %for.cond.cleanup76

for.cond.cleanup76:                               ; preds = %for.cond74
  br label %for.end103

for.body77:                                       ; preds = %for.cond74
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc95, %for.body77
  br i1 undef, label %for.body83, label %for.cond.cleanup82

for.cond.cleanup82:                               ; preds = %for.cond80
  br label %for.end97

for.body83:                                       ; preds = %for.cond80
  br label %for.inc95

for.inc95:                                        ; preds = %for.body83
  br label %for.cond80, !llvm.loop !204

for.end97:                                        ; preds = %for.cond.cleanup82
  br label %for.inc101

for.inc101:                                       ; preds = %for.end97
  br label %for.cond74, !llvm.loop !205

for.end103:                                       ; preds = %for.cond.cleanup76
  br label %if.end104

if.end104:                                        ; preds = %for.end103, %for.end70
  %24 = bitcast [8 x double]* %fz_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %24) #14
  %25 = bitcast [8 x double]* %fy_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %25) #14
  %26 = bitcast [8 x double]* %fx_local to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %26) #14
  %27 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #14
  %28 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #14
  %29 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %29) #14
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL28CalcHourglassControlForElemsR6DomainPdd(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %determ, double %hgcoef) #7 {
entry:
  %dvdx = alloca double*, align 8
  %dvdy = alloca double*, align 8
  %dvdz = alloca double*, align 8
  %x8n = alloca double*, align 8
  %y8n = alloca double*, align 8
  %z8n = alloca double*, align 8
  %x1 = alloca [8 x double], align 16
  %y1 = alloca [8 x double], align 16
  %z1 = alloca [8 x double], align 16
  %pfx = alloca [8 x double], align 16
  %pfy = alloca [8 x double], align 16
  %pfz = alloca [8 x double], align 16
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numElemEv(%class.Domain* %domain)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %mul = mul nsw i32 %0, 8
  %1 = bitcast double** %dvdx to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %conv = sext i32 %mul to i64
  %call1 = call double* @_Z8AllocateIdEPT_m(i64 %conv)
  store double* %call1, double** %dvdx, align 8, !tbaa !77
  %2 = bitcast double** %dvdy to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  %conv2 = sext i32 %mul to i64
  %call3 = call double* @_Z8AllocateIdEPT_m(i64 %conv2)
  store double* %call3, double** %dvdy, align 8, !tbaa !77
  %3 = bitcast double** %dvdz to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #14
  %conv4 = sext i32 %mul to i64
  %call5 = call double* @_Z8AllocateIdEPT_m(i64 %conv4)
  store double* %call5, double** %dvdz, align 8, !tbaa !77
  %4 = bitcast double** %x8n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #14
  %conv6 = sext i32 %mul to i64
  %call7 = call double* @_Z8AllocateIdEPT_m(i64 %conv6)
  store double* %call7, double** %x8n, align 8, !tbaa !77
  %5 = bitcast double** %y8n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #14
  %conv8 = sext i32 %mul to i64
  %call9 = call double* @_Z8AllocateIdEPT_m(i64 %conv8)
  store double* %call9, double** %y8n, align 8, !tbaa !77
  %6 = bitcast double** %z8n to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #14
  %conv10 = sext i32 %mul to i64
  %call11 = call double* @_Z8AllocateIdEPT_m(i64 %conv10)
  store double* %call11, double** %z8n, align 8, !tbaa !77
  br label %for.cond

for.cond:                                         ; preds = %for.inc55, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc56, %for.inc55 ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end57

for.body:                                         ; preds = %for.cond
  %7 = bitcast [8 x double]* %x1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %7) #14
  %8 = bitcast [8 x double]* %y1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %8) #14
  %9 = bitcast [8 x double]* %z1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %9) #14
  %10 = bitcast [8 x double]* %pfx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %10) #14
  %11 = bitcast [8 x double]* %pfy to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %11) #14
  %12 = bitcast [8 x double]* %pfz to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %12) #14
  %call12 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %domain, i32 %i.0)
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 0
  %arraydecay13 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 0
  %arraydecay14 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 0
  call void @_ZL29CollectDomainNodesToElemNodesR6DomainPKiPdS3_S3_(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32* %call12, double* %arraydecay, double* %arraydecay13, double* %arraydecay14)
  %arraydecay15 = getelementptr inbounds [8 x double], [8 x double]* %pfx, i64 0, i64 0
  %arraydecay16 = getelementptr inbounds [8 x double], [8 x double]* %pfy, i64 0, i64 0
  %arraydecay17 = getelementptr inbounds [8 x double], [8 x double]* %pfz, i64 0, i64 0
  %arraydecay18 = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 0
  %arraydecay20 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 0
  call void @_ZL24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* %arraydecay15, double* %arraydecay16, double* %arraydecay17, double* %arraydecay18, double* %arraydecay19, double* %arraydecay20)
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %for.body
  %ii.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp22 = icmp slt i32 %ii.0, 8
  br i1 %cmp22, label %for.body24, label %for.cond.cleanup23

for.cond.cleanup23:                               ; preds = %for.cond21
  br label %for.end

for.body24:                                       ; preds = %for.cond21
  %mul25 = mul nsw i32 8, %i.0
  %add = add nsw i32 %mul25, %ii.0
  %idxprom = sext i32 %ii.0 to i64
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %pfx, i64 0, i64 %idxprom
  %13 = load double, double* %arrayidx, align 8, !tbaa !45
  %14 = load double*, double** %dvdx, align 8, !tbaa !77
  %idxprom26 = sext i32 %add to i64
  %arrayidx27 = getelementptr inbounds double, double* %14, i64 %idxprom26
  store double %13, double* %arrayidx27, align 8, !tbaa !45
  %idxprom28 = sext i32 %ii.0 to i64
  %arrayidx29 = getelementptr inbounds [8 x double], [8 x double]* %pfy, i64 0, i64 %idxprom28
  %15 = load double, double* %arrayidx29, align 8, !tbaa !45
  %16 = load double*, double** %dvdy, align 8, !tbaa !77
  %idxprom30 = sext i32 %add to i64
  %arrayidx31 = getelementptr inbounds double, double* %16, i64 %idxprom30
  store double %15, double* %arrayidx31, align 8, !tbaa !45
  %idxprom32 = sext i32 %ii.0 to i64
  %arrayidx33 = getelementptr inbounds [8 x double], [8 x double]* %pfz, i64 0, i64 %idxprom32
  %17 = load double, double* %arrayidx33, align 8, !tbaa !45
  %18 = load double*, double** %dvdz, align 8, !tbaa !77
  %idxprom34 = sext i32 %add to i64
  %arrayidx35 = getelementptr inbounds double, double* %18, i64 %idxprom34
  store double %17, double* %arrayidx35, align 8, !tbaa !45
  %idxprom36 = sext i32 %ii.0 to i64
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* %x1, i64 0, i64 %idxprom36
  %19 = load double, double* %arrayidx37, align 8, !tbaa !45
  %20 = load double*, double** %x8n, align 8, !tbaa !77
  %idxprom38 = sext i32 %add to i64
  %arrayidx39 = getelementptr inbounds double, double* %20, i64 %idxprom38
  store double %19, double* %arrayidx39, align 8, !tbaa !45
  %idxprom40 = sext i32 %ii.0 to i64
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %y1, i64 0, i64 %idxprom40
  %21 = load double, double* %arrayidx41, align 8, !tbaa !45
  %22 = load double*, double** %y8n, align 8, !tbaa !77
  %idxprom42 = sext i32 %add to i64
  %arrayidx43 = getelementptr inbounds double, double* %22, i64 %idxprom42
  store double %21, double* %arrayidx43, align 8, !tbaa !45
  %idxprom44 = sext i32 %ii.0 to i64
  %arrayidx45 = getelementptr inbounds [8 x double], [8 x double]* %z1, i64 0, i64 %idxprom44
  %23 = load double, double* %arrayidx45, align 8, !tbaa !45
  %24 = load double*, double** %z8n, align 8, !tbaa !77
  %idxprom46 = sext i32 %add to i64
  %arrayidx47 = getelementptr inbounds double, double* %24, i64 %idxprom46
  store double %23, double* %arrayidx47, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body24
  %inc = add nsw i32 %ii.0, 1
  br label %for.cond21, !llvm.loop !206

for.end:                                          ; preds = %for.cond.cleanup23
  %call48 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain4voloEi(%class.Domain* %domain, i32 %i.0)
  %25 = load double, double* %call48, align 8, !tbaa !45
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %domain, i32 %i.0)
  %26 = load double, double* %call49, align 8, !tbaa !45
  %mul50 = fmul double %25, %26
  %idxprom51 = sext i32 %i.0 to i64
  %arrayidx52 = getelementptr inbounds double, double* %determ, i64 %idxprom51
  store double %mul50, double* %arrayidx52, align 8, !tbaa !45
  %call53 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1vEi(%class.Domain* %domain, i32 %i.0)
  %27 = load double, double* %call53, align 8, !tbaa !45
  %cmp54 = fcmp ole double %27, 0.000000e+00
  br i1 %cmp54, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  call void @exit(i32 -1) #19
  unreachable

if.end:                                           ; preds = %for.end
  %28 = bitcast [8 x double]* %pfz to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %28) #14
  %29 = bitcast [8 x double]* %pfy to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %29) #14
  %30 = bitcast [8 x double]* %pfx to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %30) #14
  %31 = bitcast [8 x double]* %z1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %31) #14
  %32 = bitcast [8 x double]* %y1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %32) #14
  %33 = bitcast [8 x double]* %x1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %33) #14
  br label %for.inc55

for.inc55:                                        ; preds = %if.end
  %inc56 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !207

for.end57:                                        ; preds = %for.cond.cleanup
  %cmp58 = fcmp ogt double %hgcoef, 0.000000e+00
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %for.end57
  %34 = load double*, double** %x8n, align 8, !tbaa !77
  %35 = load double*, double** %y8n, align 8, !tbaa !77
  %36 = load double*, double** %z8n, align 8, !tbaa !77
  %37 = load double*, double** %dvdx, align 8, !tbaa !77
  %38 = load double*, double** %dvdy, align 8, !tbaa !77
  %39 = load double*, double** %dvdz, align 8, !tbaa !77
  %call60 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain7numNodeEv(%class.Domain* %domain)
  %40 = load i32, i32* %call60, align 4, !tbaa !34
  call void @_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %determ, double* %34, double* %35, double* %36, double* %37, double* %38, double* %39, double %hgcoef, i32 %0, i32 %40)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %for.end57
  call void @_Z7ReleaseIdEvPPT_(double** %z8n)
  call void @_Z7ReleaseIdEvPPT_(double** %y8n)
  call void @_Z7ReleaseIdEvPPT_(double** %x8n)
  call void @_Z7ReleaseIdEvPPT_(double** %dvdz)
  call void @_Z7ReleaseIdEvPPT_(double** %dvdy)
  call void @_Z7ReleaseIdEvPPT_(double** %dvdx)
  %41 = bitcast double** %z8n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #14
  %42 = bitcast double** %y8n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #14
  %43 = bitcast double** %x8n to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #14
  %44 = bitcast double** %dvdz to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #14
  %45 = bitcast double** %dvdy to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #14
  %46 = bitcast double** %dvdx to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #14
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL24CalcElemVolumeDerivativePdS_S_PKdS1_S1_(double* %dvdx, double* %dvdy, double* %dvdz, double* %x, double* %y, double* %z) #7 {
entry:
  %arrayidx = getelementptr inbounds double, double* %x, i64 1
  %0 = load double, double* %arrayidx, align 8, !tbaa !45
  %arrayidx1 = getelementptr inbounds double, double* %x, i64 2
  %1 = load double, double* %arrayidx1, align 8, !tbaa !45
  %arrayidx2 = getelementptr inbounds double, double* %x, i64 3
  %2 = load double, double* %arrayidx2, align 8, !tbaa !45
  %arrayidx3 = getelementptr inbounds double, double* %x, i64 4
  %3 = load double, double* %arrayidx3, align 8, !tbaa !45
  %arrayidx4 = getelementptr inbounds double, double* %x, i64 5
  %4 = load double, double* %arrayidx4, align 8, !tbaa !45
  %arrayidx5 = getelementptr inbounds double, double* %x, i64 7
  %5 = load double, double* %arrayidx5, align 8, !tbaa !45
  %arrayidx6 = getelementptr inbounds double, double* %y, i64 1
  %6 = load double, double* %arrayidx6, align 8, !tbaa !45
  %arrayidx7 = getelementptr inbounds double, double* %y, i64 2
  %7 = load double, double* %arrayidx7, align 8, !tbaa !45
  %arrayidx8 = getelementptr inbounds double, double* %y, i64 3
  %8 = load double, double* %arrayidx8, align 8, !tbaa !45
  %arrayidx9 = getelementptr inbounds double, double* %y, i64 4
  %9 = load double, double* %arrayidx9, align 8, !tbaa !45
  %arrayidx10 = getelementptr inbounds double, double* %y, i64 5
  %10 = load double, double* %arrayidx10, align 8, !tbaa !45
  %arrayidx11 = getelementptr inbounds double, double* %y, i64 7
  %11 = load double, double* %arrayidx11, align 8, !tbaa !45
  %arrayidx12 = getelementptr inbounds double, double* %z, i64 1
  %12 = load double, double* %arrayidx12, align 8, !tbaa !45
  %arrayidx13 = getelementptr inbounds double, double* %z, i64 2
  %13 = load double, double* %arrayidx13, align 8, !tbaa !45
  %arrayidx14 = getelementptr inbounds double, double* %z, i64 3
  %14 = load double, double* %arrayidx14, align 8, !tbaa !45
  %arrayidx15 = getelementptr inbounds double, double* %z, i64 4
  %15 = load double, double* %arrayidx15, align 8, !tbaa !45
  %arrayidx16 = getelementptr inbounds double, double* %z, i64 5
  %16 = load double, double* %arrayidx16, align 8, !tbaa !45
  %arrayidx17 = getelementptr inbounds double, double* %z, i64 7
  %17 = load double, double* %arrayidx17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds double, double* %dvdx, i64 0
  %arrayidx19 = getelementptr inbounds double, double* %dvdy, i64 0
  %arrayidx20 = getelementptr inbounds double, double* %dvdz, i64 0
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11, double %12, double %13, double %14, double %15, double %16, double %17, double* %arrayidx18, double* %arrayidx19, double* %arrayidx20)
  %arrayidx21 = getelementptr inbounds double, double* %x, i64 0
  %18 = load double, double* %arrayidx21, align 8, !tbaa !45
  %arrayidx22 = getelementptr inbounds double, double* %x, i64 1
  %19 = load double, double* %arrayidx22, align 8, !tbaa !45
  %arrayidx23 = getelementptr inbounds double, double* %x, i64 2
  %20 = load double, double* %arrayidx23, align 8, !tbaa !45
  %arrayidx24 = getelementptr inbounds double, double* %x, i64 7
  %21 = load double, double* %arrayidx24, align 8, !tbaa !45
  %arrayidx25 = getelementptr inbounds double, double* %x, i64 4
  %22 = load double, double* %arrayidx25, align 8, !tbaa !45
  %arrayidx26 = getelementptr inbounds double, double* %x, i64 6
  %23 = load double, double* %arrayidx26, align 8, !tbaa !45
  %arrayidx27 = getelementptr inbounds double, double* %y, i64 0
  %24 = load double, double* %arrayidx27, align 8, !tbaa !45
  %arrayidx28 = getelementptr inbounds double, double* %y, i64 1
  %25 = load double, double* %arrayidx28, align 8, !tbaa !45
  %arrayidx29 = getelementptr inbounds double, double* %y, i64 2
  %26 = load double, double* %arrayidx29, align 8, !tbaa !45
  %arrayidx30 = getelementptr inbounds double, double* %y, i64 7
  %27 = load double, double* %arrayidx30, align 8, !tbaa !45
  %arrayidx31 = getelementptr inbounds double, double* %y, i64 4
  %28 = load double, double* %arrayidx31, align 8, !tbaa !45
  %arrayidx32 = getelementptr inbounds double, double* %y, i64 6
  %29 = load double, double* %arrayidx32, align 8, !tbaa !45
  %arrayidx33 = getelementptr inbounds double, double* %z, i64 0
  %30 = load double, double* %arrayidx33, align 8, !tbaa !45
  %arrayidx34 = getelementptr inbounds double, double* %z, i64 1
  %31 = load double, double* %arrayidx34, align 8, !tbaa !45
  %arrayidx35 = getelementptr inbounds double, double* %z, i64 2
  %32 = load double, double* %arrayidx35, align 8, !tbaa !45
  %arrayidx36 = getelementptr inbounds double, double* %z, i64 7
  %33 = load double, double* %arrayidx36, align 8, !tbaa !45
  %arrayidx37 = getelementptr inbounds double, double* %z, i64 4
  %34 = load double, double* %arrayidx37, align 8, !tbaa !45
  %arrayidx38 = getelementptr inbounds double, double* %z, i64 6
  %35 = load double, double* %arrayidx38, align 8, !tbaa !45
  %arrayidx39 = getelementptr inbounds double, double* %dvdx, i64 3
  %arrayidx40 = getelementptr inbounds double, double* %dvdy, i64 3
  %arrayidx41 = getelementptr inbounds double, double* %dvdz, i64 3
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %18, double %19, double %20, double %21, double %22, double %23, double %24, double %25, double %26, double %27, double %28, double %29, double %30, double %31, double %32, double %33, double %34, double %35, double* %arrayidx39, double* %arrayidx40, double* %arrayidx41)
  %arrayidx42 = getelementptr inbounds double, double* %x, i64 3
  %36 = load double, double* %arrayidx42, align 8, !tbaa !45
  %arrayidx43 = getelementptr inbounds double, double* %x, i64 0
  %37 = load double, double* %arrayidx43, align 8, !tbaa !45
  %arrayidx44 = getelementptr inbounds double, double* %x, i64 1
  %38 = load double, double* %arrayidx44, align 8, !tbaa !45
  %arrayidx45 = getelementptr inbounds double, double* %x, i64 6
  %39 = load double, double* %arrayidx45, align 8, !tbaa !45
  %arrayidx46 = getelementptr inbounds double, double* %x, i64 7
  %40 = load double, double* %arrayidx46, align 8, !tbaa !45
  %arrayidx47 = getelementptr inbounds double, double* %x, i64 5
  %41 = load double, double* %arrayidx47, align 8, !tbaa !45
  %arrayidx48 = getelementptr inbounds double, double* %y, i64 3
  %42 = load double, double* %arrayidx48, align 8, !tbaa !45
  %arrayidx49 = getelementptr inbounds double, double* %y, i64 0
  %43 = load double, double* %arrayidx49, align 8, !tbaa !45
  %arrayidx50 = getelementptr inbounds double, double* %y, i64 1
  %44 = load double, double* %arrayidx50, align 8, !tbaa !45
  %arrayidx51 = getelementptr inbounds double, double* %y, i64 6
  %45 = load double, double* %arrayidx51, align 8, !tbaa !45
  %arrayidx52 = getelementptr inbounds double, double* %y, i64 7
  %46 = load double, double* %arrayidx52, align 8, !tbaa !45
  %arrayidx53 = getelementptr inbounds double, double* %y, i64 5
  %47 = load double, double* %arrayidx53, align 8, !tbaa !45
  %arrayidx54 = getelementptr inbounds double, double* %z, i64 3
  %48 = load double, double* %arrayidx54, align 8, !tbaa !45
  %arrayidx55 = getelementptr inbounds double, double* %z, i64 0
  %49 = load double, double* %arrayidx55, align 8, !tbaa !45
  %arrayidx56 = getelementptr inbounds double, double* %z, i64 1
  %50 = load double, double* %arrayidx56, align 8, !tbaa !45
  %arrayidx57 = getelementptr inbounds double, double* %z, i64 6
  %51 = load double, double* %arrayidx57, align 8, !tbaa !45
  %arrayidx58 = getelementptr inbounds double, double* %z, i64 7
  %52 = load double, double* %arrayidx58, align 8, !tbaa !45
  %arrayidx59 = getelementptr inbounds double, double* %z, i64 5
  %53 = load double, double* %arrayidx59, align 8, !tbaa !45
  %arrayidx60 = getelementptr inbounds double, double* %dvdx, i64 2
  %arrayidx61 = getelementptr inbounds double, double* %dvdy, i64 2
  %arrayidx62 = getelementptr inbounds double, double* %dvdz, i64 2
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %36, double %37, double %38, double %39, double %40, double %41, double %42, double %43, double %44, double %45, double %46, double %47, double %48, double %49, double %50, double %51, double %52, double %53, double* %arrayidx60, double* %arrayidx61, double* %arrayidx62)
  %arrayidx63 = getelementptr inbounds double, double* %x, i64 2
  %54 = load double, double* %arrayidx63, align 8, !tbaa !45
  %arrayidx64 = getelementptr inbounds double, double* %x, i64 3
  %55 = load double, double* %arrayidx64, align 8, !tbaa !45
  %arrayidx65 = getelementptr inbounds double, double* %x, i64 0
  %56 = load double, double* %arrayidx65, align 8, !tbaa !45
  %arrayidx66 = getelementptr inbounds double, double* %x, i64 5
  %57 = load double, double* %arrayidx66, align 8, !tbaa !45
  %arrayidx67 = getelementptr inbounds double, double* %x, i64 6
  %58 = load double, double* %arrayidx67, align 8, !tbaa !45
  %arrayidx68 = getelementptr inbounds double, double* %x, i64 4
  %59 = load double, double* %arrayidx68, align 8, !tbaa !45
  %arrayidx69 = getelementptr inbounds double, double* %y, i64 2
  %60 = load double, double* %arrayidx69, align 8, !tbaa !45
  %arrayidx70 = getelementptr inbounds double, double* %y, i64 3
  %61 = load double, double* %arrayidx70, align 8, !tbaa !45
  %arrayidx71 = getelementptr inbounds double, double* %y, i64 0
  %62 = load double, double* %arrayidx71, align 8, !tbaa !45
  %arrayidx72 = getelementptr inbounds double, double* %y, i64 5
  %63 = load double, double* %arrayidx72, align 8, !tbaa !45
  %arrayidx73 = getelementptr inbounds double, double* %y, i64 6
  %64 = load double, double* %arrayidx73, align 8, !tbaa !45
  %arrayidx74 = getelementptr inbounds double, double* %y, i64 4
  %65 = load double, double* %arrayidx74, align 8, !tbaa !45
  %arrayidx75 = getelementptr inbounds double, double* %z, i64 2
  %66 = load double, double* %arrayidx75, align 8, !tbaa !45
  %arrayidx76 = getelementptr inbounds double, double* %z, i64 3
  %67 = load double, double* %arrayidx76, align 8, !tbaa !45
  %arrayidx77 = getelementptr inbounds double, double* %z, i64 0
  %68 = load double, double* %arrayidx77, align 8, !tbaa !45
  %arrayidx78 = getelementptr inbounds double, double* %z, i64 5
  %69 = load double, double* %arrayidx78, align 8, !tbaa !45
  %arrayidx79 = getelementptr inbounds double, double* %z, i64 6
  %70 = load double, double* %arrayidx79, align 8, !tbaa !45
  %arrayidx80 = getelementptr inbounds double, double* %z, i64 4
  %71 = load double, double* %arrayidx80, align 8, !tbaa !45
  %arrayidx81 = getelementptr inbounds double, double* %dvdx, i64 1
  %arrayidx82 = getelementptr inbounds double, double* %dvdy, i64 1
  %arrayidx83 = getelementptr inbounds double, double* %dvdz, i64 1
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %54, double %55, double %56, double %57, double %58, double %59, double %60, double %61, double %62, double %63, double %64, double %65, double %66, double %67, double %68, double %69, double %70, double %71, double* %arrayidx81, double* %arrayidx82, double* %arrayidx83)
  %arrayidx84 = getelementptr inbounds double, double* %x, i64 7
  %72 = load double, double* %arrayidx84, align 8, !tbaa !45
  %arrayidx85 = getelementptr inbounds double, double* %x, i64 6
  %73 = load double, double* %arrayidx85, align 8, !tbaa !45
  %arrayidx86 = getelementptr inbounds double, double* %x, i64 5
  %74 = load double, double* %arrayidx86, align 8, !tbaa !45
  %arrayidx87 = getelementptr inbounds double, double* %x, i64 0
  %75 = load double, double* %arrayidx87, align 8, !tbaa !45
  %arrayidx88 = getelementptr inbounds double, double* %x, i64 3
  %76 = load double, double* %arrayidx88, align 8, !tbaa !45
  %arrayidx89 = getelementptr inbounds double, double* %x, i64 1
  %77 = load double, double* %arrayidx89, align 8, !tbaa !45
  %arrayidx90 = getelementptr inbounds double, double* %y, i64 7
  %78 = load double, double* %arrayidx90, align 8, !tbaa !45
  %arrayidx91 = getelementptr inbounds double, double* %y, i64 6
  %79 = load double, double* %arrayidx91, align 8, !tbaa !45
  %arrayidx92 = getelementptr inbounds double, double* %y, i64 5
  %80 = load double, double* %arrayidx92, align 8, !tbaa !45
  %arrayidx93 = getelementptr inbounds double, double* %y, i64 0
  %81 = load double, double* %arrayidx93, align 8, !tbaa !45
  %arrayidx94 = getelementptr inbounds double, double* %y, i64 3
  %82 = load double, double* %arrayidx94, align 8, !tbaa !45
  %arrayidx95 = getelementptr inbounds double, double* %y, i64 1
  %83 = load double, double* %arrayidx95, align 8, !tbaa !45
  %arrayidx96 = getelementptr inbounds double, double* %z, i64 7
  %84 = load double, double* %arrayidx96, align 8, !tbaa !45
  %arrayidx97 = getelementptr inbounds double, double* %z, i64 6
  %85 = load double, double* %arrayidx97, align 8, !tbaa !45
  %arrayidx98 = getelementptr inbounds double, double* %z, i64 5
  %86 = load double, double* %arrayidx98, align 8, !tbaa !45
  %arrayidx99 = getelementptr inbounds double, double* %z, i64 0
  %87 = load double, double* %arrayidx99, align 8, !tbaa !45
  %arrayidx100 = getelementptr inbounds double, double* %z, i64 3
  %88 = load double, double* %arrayidx100, align 8, !tbaa !45
  %arrayidx101 = getelementptr inbounds double, double* %z, i64 1
  %89 = load double, double* %arrayidx101, align 8, !tbaa !45
  %arrayidx102 = getelementptr inbounds double, double* %dvdx, i64 4
  %arrayidx103 = getelementptr inbounds double, double* %dvdy, i64 4
  %arrayidx104 = getelementptr inbounds double, double* %dvdz, i64 4
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %72, double %73, double %74, double %75, double %76, double %77, double %78, double %79, double %80, double %81, double %82, double %83, double %84, double %85, double %86, double %87, double %88, double %89, double* %arrayidx102, double* %arrayidx103, double* %arrayidx104)
  %arrayidx105 = getelementptr inbounds double, double* %x, i64 4
  %90 = load double, double* %arrayidx105, align 8, !tbaa !45
  %arrayidx106 = getelementptr inbounds double, double* %x, i64 7
  %91 = load double, double* %arrayidx106, align 8, !tbaa !45
  %arrayidx107 = getelementptr inbounds double, double* %x, i64 6
  %92 = load double, double* %arrayidx107, align 8, !tbaa !45
  %arrayidx108 = getelementptr inbounds double, double* %x, i64 1
  %93 = load double, double* %arrayidx108, align 8, !tbaa !45
  %arrayidx109 = getelementptr inbounds double, double* %x, i64 0
  %94 = load double, double* %arrayidx109, align 8, !tbaa !45
  %arrayidx110 = getelementptr inbounds double, double* %x, i64 2
  %95 = load double, double* %arrayidx110, align 8, !tbaa !45
  %arrayidx111 = getelementptr inbounds double, double* %y, i64 4
  %96 = load double, double* %arrayidx111, align 8, !tbaa !45
  %arrayidx112 = getelementptr inbounds double, double* %y, i64 7
  %97 = load double, double* %arrayidx112, align 8, !tbaa !45
  %arrayidx113 = getelementptr inbounds double, double* %y, i64 6
  %98 = load double, double* %arrayidx113, align 8, !tbaa !45
  %arrayidx114 = getelementptr inbounds double, double* %y, i64 1
  %99 = load double, double* %arrayidx114, align 8, !tbaa !45
  %arrayidx115 = getelementptr inbounds double, double* %y, i64 0
  %100 = load double, double* %arrayidx115, align 8, !tbaa !45
  %arrayidx116 = getelementptr inbounds double, double* %y, i64 2
  %101 = load double, double* %arrayidx116, align 8, !tbaa !45
  %arrayidx117 = getelementptr inbounds double, double* %z, i64 4
  %102 = load double, double* %arrayidx117, align 8, !tbaa !45
  %arrayidx118 = getelementptr inbounds double, double* %z, i64 7
  %103 = load double, double* %arrayidx118, align 8, !tbaa !45
  %arrayidx119 = getelementptr inbounds double, double* %z, i64 6
  %104 = load double, double* %arrayidx119, align 8, !tbaa !45
  %arrayidx120 = getelementptr inbounds double, double* %z, i64 1
  %105 = load double, double* %arrayidx120, align 8, !tbaa !45
  %arrayidx121 = getelementptr inbounds double, double* %z, i64 0
  %106 = load double, double* %arrayidx121, align 8, !tbaa !45
  %arrayidx122 = getelementptr inbounds double, double* %z, i64 2
  %107 = load double, double* %arrayidx122, align 8, !tbaa !45
  %arrayidx123 = getelementptr inbounds double, double* %dvdx, i64 5
  %arrayidx124 = getelementptr inbounds double, double* %dvdy, i64 5
  %arrayidx125 = getelementptr inbounds double, double* %dvdz, i64 5
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %90, double %91, double %92, double %93, double %94, double %95, double %96, double %97, double %98, double %99, double %100, double %101, double %102, double %103, double %104, double %105, double %106, double %107, double* %arrayidx123, double* %arrayidx124, double* %arrayidx125)
  %arrayidx126 = getelementptr inbounds double, double* %x, i64 5
  %108 = load double, double* %arrayidx126, align 8, !tbaa !45
  %arrayidx127 = getelementptr inbounds double, double* %x, i64 4
  %109 = load double, double* %arrayidx127, align 8, !tbaa !45
  %arrayidx128 = getelementptr inbounds double, double* %x, i64 7
  %110 = load double, double* %arrayidx128, align 8, !tbaa !45
  %arrayidx129 = getelementptr inbounds double, double* %x, i64 2
  %111 = load double, double* %arrayidx129, align 8, !tbaa !45
  %arrayidx130 = getelementptr inbounds double, double* %x, i64 1
  %112 = load double, double* %arrayidx130, align 8, !tbaa !45
  %arrayidx131 = getelementptr inbounds double, double* %x, i64 3
  %113 = load double, double* %arrayidx131, align 8, !tbaa !45
  %arrayidx132 = getelementptr inbounds double, double* %y, i64 5
  %114 = load double, double* %arrayidx132, align 8, !tbaa !45
  %arrayidx133 = getelementptr inbounds double, double* %y, i64 4
  %115 = load double, double* %arrayidx133, align 8, !tbaa !45
  %arrayidx134 = getelementptr inbounds double, double* %y, i64 7
  %116 = load double, double* %arrayidx134, align 8, !tbaa !45
  %arrayidx135 = getelementptr inbounds double, double* %y, i64 2
  %117 = load double, double* %arrayidx135, align 8, !tbaa !45
  %arrayidx136 = getelementptr inbounds double, double* %y, i64 1
  %118 = load double, double* %arrayidx136, align 8, !tbaa !45
  %arrayidx137 = getelementptr inbounds double, double* %y, i64 3
  %119 = load double, double* %arrayidx137, align 8, !tbaa !45
  %arrayidx138 = getelementptr inbounds double, double* %z, i64 5
  %120 = load double, double* %arrayidx138, align 8, !tbaa !45
  %arrayidx139 = getelementptr inbounds double, double* %z, i64 4
  %121 = load double, double* %arrayidx139, align 8, !tbaa !45
  %arrayidx140 = getelementptr inbounds double, double* %z, i64 7
  %122 = load double, double* %arrayidx140, align 8, !tbaa !45
  %arrayidx141 = getelementptr inbounds double, double* %z, i64 2
  %123 = load double, double* %arrayidx141, align 8, !tbaa !45
  %arrayidx142 = getelementptr inbounds double, double* %z, i64 1
  %124 = load double, double* %arrayidx142, align 8, !tbaa !45
  %arrayidx143 = getelementptr inbounds double, double* %z, i64 3
  %125 = load double, double* %arrayidx143, align 8, !tbaa !45
  %arrayidx144 = getelementptr inbounds double, double* %dvdx, i64 6
  %arrayidx145 = getelementptr inbounds double, double* %dvdy, i64 6
  %arrayidx146 = getelementptr inbounds double, double* %dvdz, i64 6
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %108, double %109, double %110, double %111, double %112, double %113, double %114, double %115, double %116, double %117, double %118, double %119, double %120, double %121, double %122, double %123, double %124, double %125, double* %arrayidx144, double* %arrayidx145, double* %arrayidx146)
  %arrayidx147 = getelementptr inbounds double, double* %x, i64 6
  %126 = load double, double* %arrayidx147, align 8, !tbaa !45
  %arrayidx148 = getelementptr inbounds double, double* %x, i64 5
  %127 = load double, double* %arrayidx148, align 8, !tbaa !45
  %arrayidx149 = getelementptr inbounds double, double* %x, i64 4
  %128 = load double, double* %arrayidx149, align 8, !tbaa !45
  %arrayidx150 = getelementptr inbounds double, double* %x, i64 3
  %129 = load double, double* %arrayidx150, align 8, !tbaa !45
  %arrayidx151 = getelementptr inbounds double, double* %x, i64 2
  %130 = load double, double* %arrayidx151, align 8, !tbaa !45
  %arrayidx152 = getelementptr inbounds double, double* %x, i64 0
  %131 = load double, double* %arrayidx152, align 8, !tbaa !45
  %arrayidx153 = getelementptr inbounds double, double* %y, i64 6
  %132 = load double, double* %arrayidx153, align 8, !tbaa !45
  %arrayidx154 = getelementptr inbounds double, double* %y, i64 5
  %133 = load double, double* %arrayidx154, align 8, !tbaa !45
  %arrayidx155 = getelementptr inbounds double, double* %y, i64 4
  %134 = load double, double* %arrayidx155, align 8, !tbaa !45
  %arrayidx156 = getelementptr inbounds double, double* %y, i64 3
  %135 = load double, double* %arrayidx156, align 8, !tbaa !45
  %arrayidx157 = getelementptr inbounds double, double* %y, i64 2
  %136 = load double, double* %arrayidx157, align 8, !tbaa !45
  %arrayidx158 = getelementptr inbounds double, double* %y, i64 0
  %137 = load double, double* %arrayidx158, align 8, !tbaa !45
  %arrayidx159 = getelementptr inbounds double, double* %z, i64 6
  %138 = load double, double* %arrayidx159, align 8, !tbaa !45
  %arrayidx160 = getelementptr inbounds double, double* %z, i64 5
  %139 = load double, double* %arrayidx160, align 8, !tbaa !45
  %arrayidx161 = getelementptr inbounds double, double* %z, i64 4
  %140 = load double, double* %arrayidx161, align 8, !tbaa !45
  %arrayidx162 = getelementptr inbounds double, double* %z, i64 3
  %141 = load double, double* %arrayidx162, align 8, !tbaa !45
  %arrayidx163 = getelementptr inbounds double, double* %z, i64 2
  %142 = load double, double* %arrayidx163, align 8, !tbaa !45
  %arrayidx164 = getelementptr inbounds double, double* %z, i64 0
  %143 = load double, double* %arrayidx164, align 8, !tbaa !45
  %arrayidx165 = getelementptr inbounds double, double* %dvdx, i64 7
  %arrayidx166 = getelementptr inbounds double, double* %dvdy, i64 7
  %arrayidx167 = getelementptr inbounds double, double* %dvdz, i64 7
  call void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %126, double %127, double %128, double %129, double %130, double %131, double %132, double %133, double %134, double %135, double %136, double %137, double %138, double %139, double %140, double %141, double %142, double %143, double* %arrayidx165, double* %arrayidx166, double* %arrayidx167)
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL28CalcFBHourglassForceForElemsR6DomainPdS1_S1_S1_S1_S1_S1_dii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, double* %determ, double* %x8n, double* %y8n, double* %z8n, double* %dvdx, double* %dvdy, double* %dvdz, double %hourg, i32 %numElem, i32 %numNode) #7 {
entry:
  %fx_elem = alloca double*, align 8
  %fy_elem = alloca double*, align 8
  %fz_elem = alloca double*, align 8
  %gamma = alloca [4 x [8 x double]], align 16
  %hgfx = alloca [8 x double], align 16
  %hgfy = alloca [8 x double], align 16
  %hgfz = alloca [8 x double], align 16
  %hourgam = alloca [8 x [4 x double]], align 16
  %xd1 = alloca [8 x double], align 16
  %yd1 = alloca [8 x double], align 16
  %zd1 = alloca [8 x double], align 16
  %mul = mul nsw i32 %numElem, 8
  %0 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %1 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #14
  %2 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #14
  br i1 false, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = bitcast [4 x [8 x double]]* %gamma to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %3) #14
  %arrayidx = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx5 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i64 0, i64 0
  store double 1.000000e+00, double* %arrayidx5, align 16, !tbaa !45
  %arrayidx6 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx7 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx6, i64 0, i64 1
  store double 1.000000e+00, double* %arrayidx7, align 8, !tbaa !45
  %arrayidx8 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx8, i64 0, i64 2
  store double -1.000000e+00, double* %arrayidx9, align 16, !tbaa !45
  %arrayidx10 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx10, i64 0, i64 3
  store double -1.000000e+00, double* %arrayidx11, align 8, !tbaa !45
  %arrayidx12 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx12, i64 0, i64 4
  store double -1.000000e+00, double* %arrayidx13, align 16, !tbaa !45
  %arrayidx14 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx15 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx14, i64 0, i64 5
  store double -1.000000e+00, double* %arrayidx15, align 8, !tbaa !45
  %arrayidx16 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx17 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx16, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx17, align 16, !tbaa !45
  %arrayidx18 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 0
  %arrayidx19 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx18, i64 0, i64 7
  store double 1.000000e+00, double* %arrayidx19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx21 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx20, i64 0, i64 0
  store double 1.000000e+00, double* %arrayidx21, align 16, !tbaa !45
  %arrayidx22 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx23 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx22, i64 0, i64 1
  store double -1.000000e+00, double* %arrayidx23, align 8, !tbaa !45
  %arrayidx24 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx25 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx24, i64 0, i64 2
  store double -1.000000e+00, double* %arrayidx25, align 16, !tbaa !45
  %arrayidx26 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx27 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx26, i64 0, i64 3
  store double 1.000000e+00, double* %arrayidx27, align 8, !tbaa !45
  %arrayidx28 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx29 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx28, i64 0, i64 4
  store double -1.000000e+00, double* %arrayidx29, align 16, !tbaa !45
  %arrayidx30 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx31 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx30, i64 0, i64 5
  store double 1.000000e+00, double* %arrayidx31, align 8, !tbaa !45
  %arrayidx32 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx33 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx32, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx33, align 16, !tbaa !45
  %arrayidx34 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 1
  %arrayidx35 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx34, i64 0, i64 7
  store double -1.000000e+00, double* %arrayidx35, align 8, !tbaa !45
  %arrayidx36 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx37 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx36, i64 0, i64 0
  store double 1.000000e+00, double* %arrayidx37, align 16, !tbaa !45
  %arrayidx38 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx39 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx38, i64 0, i64 1
  store double -1.000000e+00, double* %arrayidx39, align 8, !tbaa !45
  %arrayidx40 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx41 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx40, i64 0, i64 2
  store double 1.000000e+00, double* %arrayidx41, align 16, !tbaa !45
  %arrayidx42 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx43 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx42, i64 0, i64 3
  store double -1.000000e+00, double* %arrayidx43, align 8, !tbaa !45
  %arrayidx44 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx45 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx44, i64 0, i64 4
  store double 1.000000e+00, double* %arrayidx45, align 16, !tbaa !45
  %arrayidx46 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx47 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx46, i64 0, i64 5
  store double -1.000000e+00, double* %arrayidx47, align 8, !tbaa !45
  %arrayidx48 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx49 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx48, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx49, align 16, !tbaa !45
  %arrayidx50 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 2
  %arrayidx51 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx50, i64 0, i64 7
  store double -1.000000e+00, double* %arrayidx51, align 8, !tbaa !45
  %arrayidx52 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx53 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx52, i64 0, i64 0
  store double -1.000000e+00, double* %arrayidx53, align 16, !tbaa !45
  %arrayidx54 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx55 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx54, i64 0, i64 1
  store double 1.000000e+00, double* %arrayidx55, align 8, !tbaa !45
  %arrayidx56 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx57 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx56, i64 0, i64 2
  store double -1.000000e+00, double* %arrayidx57, align 16, !tbaa !45
  %arrayidx58 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx59 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx58, i64 0, i64 3
  store double 1.000000e+00, double* %arrayidx59, align 8, !tbaa !45
  %arrayidx60 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx61 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx60, i64 0, i64 4
  store double 1.000000e+00, double* %arrayidx61, align 16, !tbaa !45
  %arrayidx62 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx63 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx62, i64 0, i64 5
  store double -1.000000e+00, double* %arrayidx63, align 8, !tbaa !45
  %arrayidx64 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx65 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx64, i64 0, i64 6
  store double 1.000000e+00, double* %arrayidx65, align 16, !tbaa !45
  %arrayidx66 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 3
  %arrayidx67 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx66, i64 0, i64 7
  store double -1.000000e+00, double* %arrayidx67, align 8, !tbaa !45
  br label %for.cond

for.cond:                                         ; preds = %for.inc633, %if.end
  %i2.0 = phi i32 [ 0, %if.end ], [ %inc634, %for.inc633 ]
  %cmp68 = icmp slt i32 %i2.0, %numElem
  br i1 %cmp68, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end635

for.body:                                         ; preds = %for.cond
  %4 = bitcast [8 x double]* %hgfx to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %4) #14
  %5 = bitcast [8 x double]* %hgfy to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %5) #14
  %6 = bitcast [8 x double]* %hgfz to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %6) #14
  %7 = bitcast [8 x [4 x double]]* %hourgam to i8*
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %7) #14
  %8 = bitcast [8 x double]* %xd1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %8) #14
  %9 = bitcast [8 x double]* %yd1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %9) #14
  %10 = bitcast [8 x double]* %zd1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %10) #14
  %call69 = call i32* @_ZN6Domain8nodelistEi(%class.Domain* %domain, i32 %i2.0)
  %mul70 = mul nsw i32 8, %i2.0
  %idxprom = sext i32 %i2.0 to i64
  %arrayidx71 = getelementptr inbounds double, double* %determ, i64 %idxprom
  %11 = load double, double* %arrayidx71, align 8, !tbaa !45
  %div = fdiv double 1.000000e+00, %11
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc, %for.body
  %i1.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %cmp73 = icmp slt i32 %i1.0, 4
  br i1 %cmp73, label %for.body75, label %for.cond.cleanup74

for.cond.cleanup74:                               ; preds = %for.cond72
  br label %for.end

for.body75:                                       ; preds = %for.cond72
  %idxprom76 = sext i32 %mul70 to i64
  %arrayidx77 = getelementptr inbounds double, double* %x8n, i64 %idxprom76
  %12 = load double, double* %arrayidx77, align 8, !tbaa !45
  %idxprom78 = sext i32 %i1.0 to i64
  %arrayidx79 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom78
  %arrayidx80 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx79, i64 0, i64 0
  %13 = load double, double* %arrayidx80, align 16, !tbaa !45
  %mul81 = fmul double %12, %13
  %add = add nsw i32 %mul70, 1
  %idxprom82 = sext i32 %add to i64
  %arrayidx83 = getelementptr inbounds double, double* %x8n, i64 %idxprom82
  %14 = load double, double* %arrayidx83, align 8, !tbaa !45
  %idxprom84 = sext i32 %i1.0 to i64
  %arrayidx85 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom84
  %arrayidx86 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx85, i64 0, i64 1
  %15 = load double, double* %arrayidx86, align 8, !tbaa !45
  %mul87 = fmul double %14, %15
  %add88 = fadd double %mul81, %mul87
  %add89 = add nsw i32 %mul70, 2
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds double, double* %x8n, i64 %idxprom90
  %16 = load double, double* %arrayidx91, align 8, !tbaa !45
  %idxprom92 = sext i32 %i1.0 to i64
  %arrayidx93 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom92
  %arrayidx94 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx93, i64 0, i64 2
  %17 = load double, double* %arrayidx94, align 16, !tbaa !45
  %mul95 = fmul double %16, %17
  %add96 = fadd double %add88, %mul95
  %add97 = add nsw i32 %mul70, 3
  %idxprom98 = sext i32 %add97 to i64
  %arrayidx99 = getelementptr inbounds double, double* %x8n, i64 %idxprom98
  %18 = load double, double* %arrayidx99, align 8, !tbaa !45
  %idxprom100 = sext i32 %i1.0 to i64
  %arrayidx101 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom100
  %arrayidx102 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx101, i64 0, i64 3
  %19 = load double, double* %arrayidx102, align 8, !tbaa !45
  %mul103 = fmul double %18, %19
  %add104 = fadd double %add96, %mul103
  %add105 = add nsw i32 %mul70, 4
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds double, double* %x8n, i64 %idxprom106
  %20 = load double, double* %arrayidx107, align 8, !tbaa !45
  %idxprom108 = sext i32 %i1.0 to i64
  %arrayidx109 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom108
  %arrayidx110 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx109, i64 0, i64 4
  %21 = load double, double* %arrayidx110, align 16, !tbaa !45
  %mul111 = fmul double %20, %21
  %add112 = fadd double %add104, %mul111
  %add113 = add nsw i32 %mul70, 5
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds double, double* %x8n, i64 %idxprom114
  %22 = load double, double* %arrayidx115, align 8, !tbaa !45
  %idxprom116 = sext i32 %i1.0 to i64
  %arrayidx117 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom116
  %arrayidx118 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx117, i64 0, i64 5
  %23 = load double, double* %arrayidx118, align 8, !tbaa !45
  %mul119 = fmul double %22, %23
  %add120 = fadd double %add112, %mul119
  %add121 = add nsw i32 %mul70, 6
  %idxprom122 = sext i32 %add121 to i64
  %arrayidx123 = getelementptr inbounds double, double* %x8n, i64 %idxprom122
  %24 = load double, double* %arrayidx123, align 8, !tbaa !45
  %idxprom124 = sext i32 %i1.0 to i64
  %arrayidx125 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx125, i64 0, i64 6
  %25 = load double, double* %arrayidx126, align 16, !tbaa !45
  %mul127 = fmul double %24, %25
  %add128 = fadd double %add120, %mul127
  %add129 = add nsw i32 %mul70, 7
  %idxprom130 = sext i32 %add129 to i64
  %arrayidx131 = getelementptr inbounds double, double* %x8n, i64 %idxprom130
  %26 = load double, double* %arrayidx131, align 8, !tbaa !45
  %idxprom132 = sext i32 %i1.0 to i64
  %arrayidx133 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom132
  %arrayidx134 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx133, i64 0, i64 7
  %27 = load double, double* %arrayidx134, align 8, !tbaa !45
  %mul135 = fmul double %26, %27
  %add136 = fadd double %add128, %mul135
  %idxprom137 = sext i32 %mul70 to i64
  %arrayidx138 = getelementptr inbounds double, double* %y8n, i64 %idxprom137
  %28 = load double, double* %arrayidx138, align 8, !tbaa !45
  %idxprom139 = sext i32 %i1.0 to i64
  %arrayidx140 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx140, i64 0, i64 0
  %29 = load double, double* %arrayidx141, align 16, !tbaa !45
  %mul142 = fmul double %28, %29
  %add143 = add nsw i32 %mul70, 1
  %idxprom144 = sext i32 %add143 to i64
  %arrayidx145 = getelementptr inbounds double, double* %y8n, i64 %idxprom144
  %30 = load double, double* %arrayidx145, align 8, !tbaa !45
  %idxprom146 = sext i32 %i1.0 to i64
  %arrayidx147 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom146
  %arrayidx148 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx147, i64 0, i64 1
  %31 = load double, double* %arrayidx148, align 8, !tbaa !45
  %mul149 = fmul double %30, %31
  %add150 = fadd double %mul142, %mul149
  %add151 = add nsw i32 %mul70, 2
  %idxprom152 = sext i32 %add151 to i64
  %arrayidx153 = getelementptr inbounds double, double* %y8n, i64 %idxprom152
  %32 = load double, double* %arrayidx153, align 8, !tbaa !45
  %idxprom154 = sext i32 %i1.0 to i64
  %arrayidx155 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom154
  %arrayidx156 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx155, i64 0, i64 2
  %33 = load double, double* %arrayidx156, align 16, !tbaa !45
  %mul157 = fmul double %32, %33
  %add158 = fadd double %add150, %mul157
  %add159 = add nsw i32 %mul70, 3
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds double, double* %y8n, i64 %idxprom160
  %34 = load double, double* %arrayidx161, align 8, !tbaa !45
  %idxprom162 = sext i32 %i1.0 to i64
  %arrayidx163 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx163, i64 0, i64 3
  %35 = load double, double* %arrayidx164, align 8, !tbaa !45
  %mul165 = fmul double %34, %35
  %add166 = fadd double %add158, %mul165
  %add167 = add nsw i32 %mul70, 4
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds double, double* %y8n, i64 %idxprom168
  %36 = load double, double* %arrayidx169, align 8, !tbaa !45
  %idxprom170 = sext i32 %i1.0 to i64
  %arrayidx171 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom170
  %arrayidx172 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx171, i64 0, i64 4
  %37 = load double, double* %arrayidx172, align 16, !tbaa !45
  %mul173 = fmul double %36, %37
  %add174 = fadd double %add166, %mul173
  %add175 = add nsw i32 %mul70, 5
  %idxprom176 = sext i32 %add175 to i64
  %arrayidx177 = getelementptr inbounds double, double* %y8n, i64 %idxprom176
  %38 = load double, double* %arrayidx177, align 8, !tbaa !45
  %idxprom178 = sext i32 %i1.0 to i64
  %arrayidx179 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom178
  %arrayidx180 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx179, i64 0, i64 5
  %39 = load double, double* %arrayidx180, align 8, !tbaa !45
  %mul181 = fmul double %38, %39
  %add182 = fadd double %add174, %mul181
  %add183 = add nsw i32 %mul70, 6
  %idxprom184 = sext i32 %add183 to i64
  %arrayidx185 = getelementptr inbounds double, double* %y8n, i64 %idxprom184
  %40 = load double, double* %arrayidx185, align 8, !tbaa !45
  %idxprom186 = sext i32 %i1.0 to i64
  %arrayidx187 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom186
  %arrayidx188 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx187, i64 0, i64 6
  %41 = load double, double* %arrayidx188, align 16, !tbaa !45
  %mul189 = fmul double %40, %41
  %add190 = fadd double %add182, %mul189
  %add191 = add nsw i32 %mul70, 7
  %idxprom192 = sext i32 %add191 to i64
  %arrayidx193 = getelementptr inbounds double, double* %y8n, i64 %idxprom192
  %42 = load double, double* %arrayidx193, align 8, !tbaa !45
  %idxprom194 = sext i32 %i1.0 to i64
  %arrayidx195 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom194
  %arrayidx196 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx195, i64 0, i64 7
  %43 = load double, double* %arrayidx196, align 8, !tbaa !45
  %mul197 = fmul double %42, %43
  %add198 = fadd double %add190, %mul197
  %idxprom199 = sext i32 %mul70 to i64
  %arrayidx200 = getelementptr inbounds double, double* %z8n, i64 %idxprom199
  %44 = load double, double* %arrayidx200, align 8, !tbaa !45
  %idxprom201 = sext i32 %i1.0 to i64
  %arrayidx202 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom201
  %arrayidx203 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx202, i64 0, i64 0
  %45 = load double, double* %arrayidx203, align 16, !tbaa !45
  %mul204 = fmul double %44, %45
  %add205 = add nsw i32 %mul70, 1
  %idxprom206 = sext i32 %add205 to i64
  %arrayidx207 = getelementptr inbounds double, double* %z8n, i64 %idxprom206
  %46 = load double, double* %arrayidx207, align 8, !tbaa !45
  %idxprom208 = sext i32 %i1.0 to i64
  %arrayidx209 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom208
  %arrayidx210 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx209, i64 0, i64 1
  %47 = load double, double* %arrayidx210, align 8, !tbaa !45
  %mul211 = fmul double %46, %47
  %add212 = fadd double %mul204, %mul211
  %add213 = add nsw i32 %mul70, 2
  %idxprom214 = sext i32 %add213 to i64
  %arrayidx215 = getelementptr inbounds double, double* %z8n, i64 %idxprom214
  %48 = load double, double* %arrayidx215, align 8, !tbaa !45
  %idxprom216 = sext i32 %i1.0 to i64
  %arrayidx217 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom216
  %arrayidx218 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx217, i64 0, i64 2
  %49 = load double, double* %arrayidx218, align 16, !tbaa !45
  %mul219 = fmul double %48, %49
  %add220 = fadd double %add212, %mul219
  %add221 = add nsw i32 %mul70, 3
  %idxprom222 = sext i32 %add221 to i64
  %arrayidx223 = getelementptr inbounds double, double* %z8n, i64 %idxprom222
  %50 = load double, double* %arrayidx223, align 8, !tbaa !45
  %idxprom224 = sext i32 %i1.0 to i64
  %arrayidx225 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom224
  %arrayidx226 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx225, i64 0, i64 3
  %51 = load double, double* %arrayidx226, align 8, !tbaa !45
  %mul227 = fmul double %50, %51
  %add228 = fadd double %add220, %mul227
  %add229 = add nsw i32 %mul70, 4
  %idxprom230 = sext i32 %add229 to i64
  %arrayidx231 = getelementptr inbounds double, double* %z8n, i64 %idxprom230
  %52 = load double, double* %arrayidx231, align 8, !tbaa !45
  %idxprom232 = sext i32 %i1.0 to i64
  %arrayidx233 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom232
  %arrayidx234 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx233, i64 0, i64 4
  %53 = load double, double* %arrayidx234, align 16, !tbaa !45
  %mul235 = fmul double %52, %53
  %add236 = fadd double %add228, %mul235
  %add237 = add nsw i32 %mul70, 5
  %idxprom238 = sext i32 %add237 to i64
  %arrayidx239 = getelementptr inbounds double, double* %z8n, i64 %idxprom238
  %54 = load double, double* %arrayidx239, align 8, !tbaa !45
  %idxprom240 = sext i32 %i1.0 to i64
  %arrayidx241 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx241, i64 0, i64 5
  %55 = load double, double* %arrayidx242, align 8, !tbaa !45
  %mul243 = fmul double %54, %55
  %add244 = fadd double %add236, %mul243
  %add245 = add nsw i32 %mul70, 6
  %idxprom246 = sext i32 %add245 to i64
  %arrayidx247 = getelementptr inbounds double, double* %z8n, i64 %idxprom246
  %56 = load double, double* %arrayidx247, align 8, !tbaa !45
  %idxprom248 = sext i32 %i1.0 to i64
  %arrayidx249 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom248
  %arrayidx250 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx249, i64 0, i64 6
  %57 = load double, double* %arrayidx250, align 16, !tbaa !45
  %mul251 = fmul double %56, %57
  %add252 = fadd double %add244, %mul251
  %add253 = add nsw i32 %mul70, 7
  %idxprom254 = sext i32 %add253 to i64
  %arrayidx255 = getelementptr inbounds double, double* %z8n, i64 %idxprom254
  %58 = load double, double* %arrayidx255, align 8, !tbaa !45
  %idxprom256 = sext i32 %i1.0 to i64
  %arrayidx257 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom256
  %arrayidx258 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx257, i64 0, i64 7
  %59 = load double, double* %arrayidx258, align 8, !tbaa !45
  %mul259 = fmul double %58, %59
  %add260 = fadd double %add252, %mul259
  %idxprom261 = sext i32 %i1.0 to i64
  %arrayidx262 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom261
  %arrayidx263 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx262, i64 0, i64 0
  %60 = load double, double* %arrayidx263, align 16, !tbaa !45
  %idxprom264 = sext i32 %mul70 to i64
  %arrayidx265 = getelementptr inbounds double, double* %dvdx, i64 %idxprom264
  %61 = load double, double* %arrayidx265, align 8, !tbaa !45
  %mul266 = fmul double %61, %add136
  %idxprom267 = sext i32 %mul70 to i64
  %arrayidx268 = getelementptr inbounds double, double* %dvdy, i64 %idxprom267
  %62 = load double, double* %arrayidx268, align 8, !tbaa !45
  %mul269 = fmul double %62, %add198
  %add270 = fadd double %mul266, %mul269
  %idxprom271 = sext i32 %mul70 to i64
  %arrayidx272 = getelementptr inbounds double, double* %dvdz, i64 %idxprom271
  %63 = load double, double* %arrayidx272, align 8, !tbaa !45
  %mul273 = fmul double %63, %add260
  %add274 = fadd double %add270, %mul273
  %mul275 = fmul double %div, %add274
  %sub = fsub double %60, %mul275
  %arrayidx276 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 0
  %idxprom277 = sext i32 %i1.0 to i64
  %arrayidx278 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx276, i64 0, i64 %idxprom277
  store double %sub, double* %arrayidx278, align 8, !tbaa !45
  %idxprom279 = sext i32 %i1.0 to i64
  %arrayidx280 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom279
  %arrayidx281 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx280, i64 0, i64 1
  %64 = load double, double* %arrayidx281, align 8, !tbaa !45
  %add282 = add nsw i32 %mul70, 1
  %idxprom283 = sext i32 %add282 to i64
  %arrayidx284 = getelementptr inbounds double, double* %dvdx, i64 %idxprom283
  %65 = load double, double* %arrayidx284, align 8, !tbaa !45
  %mul285 = fmul double %65, %add136
  %add286 = add nsw i32 %mul70, 1
  %idxprom287 = sext i32 %add286 to i64
  %arrayidx288 = getelementptr inbounds double, double* %dvdy, i64 %idxprom287
  %66 = load double, double* %arrayidx288, align 8, !tbaa !45
  %mul289 = fmul double %66, %add198
  %add290 = fadd double %mul285, %mul289
  %add291 = add nsw i32 %mul70, 1
  %idxprom292 = sext i32 %add291 to i64
  %arrayidx293 = getelementptr inbounds double, double* %dvdz, i64 %idxprom292
  %67 = load double, double* %arrayidx293, align 8, !tbaa !45
  %mul294 = fmul double %67, %add260
  %add295 = fadd double %add290, %mul294
  %mul296 = fmul double %div, %add295
  %sub297 = fsub double %64, %mul296
  %arrayidx298 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 1
  %idxprom299 = sext i32 %i1.0 to i64
  %arrayidx300 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx298, i64 0, i64 %idxprom299
  store double %sub297, double* %arrayidx300, align 8, !tbaa !45
  %idxprom301 = sext i32 %i1.0 to i64
  %arrayidx302 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom301
  %arrayidx303 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx302, i64 0, i64 2
  %68 = load double, double* %arrayidx303, align 16, !tbaa !45
  %add304 = add nsw i32 %mul70, 2
  %idxprom305 = sext i32 %add304 to i64
  %arrayidx306 = getelementptr inbounds double, double* %dvdx, i64 %idxprom305
  %69 = load double, double* %arrayidx306, align 8, !tbaa !45
  %mul307 = fmul double %69, %add136
  %add308 = add nsw i32 %mul70, 2
  %idxprom309 = sext i32 %add308 to i64
  %arrayidx310 = getelementptr inbounds double, double* %dvdy, i64 %idxprom309
  %70 = load double, double* %arrayidx310, align 8, !tbaa !45
  %mul311 = fmul double %70, %add198
  %add312 = fadd double %mul307, %mul311
  %add313 = add nsw i32 %mul70, 2
  %idxprom314 = sext i32 %add313 to i64
  %arrayidx315 = getelementptr inbounds double, double* %dvdz, i64 %idxprom314
  %71 = load double, double* %arrayidx315, align 8, !tbaa !45
  %mul316 = fmul double %71, %add260
  %add317 = fadd double %add312, %mul316
  %mul318 = fmul double %div, %add317
  %sub319 = fsub double %68, %mul318
  %arrayidx320 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 2
  %idxprom321 = sext i32 %i1.0 to i64
  %arrayidx322 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx320, i64 0, i64 %idxprom321
  store double %sub319, double* %arrayidx322, align 8, !tbaa !45
  %idxprom323 = sext i32 %i1.0 to i64
  %arrayidx324 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom323
  %arrayidx325 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx324, i64 0, i64 3
  %72 = load double, double* %arrayidx325, align 8, !tbaa !45
  %add326 = add nsw i32 %mul70, 3
  %idxprom327 = sext i32 %add326 to i64
  %arrayidx328 = getelementptr inbounds double, double* %dvdx, i64 %idxprom327
  %73 = load double, double* %arrayidx328, align 8, !tbaa !45
  %mul329 = fmul double %73, %add136
  %add330 = add nsw i32 %mul70, 3
  %idxprom331 = sext i32 %add330 to i64
  %arrayidx332 = getelementptr inbounds double, double* %dvdy, i64 %idxprom331
  %74 = load double, double* %arrayidx332, align 8, !tbaa !45
  %mul333 = fmul double %74, %add198
  %add334 = fadd double %mul329, %mul333
  %add335 = add nsw i32 %mul70, 3
  %idxprom336 = sext i32 %add335 to i64
  %arrayidx337 = getelementptr inbounds double, double* %dvdz, i64 %idxprom336
  %75 = load double, double* %arrayidx337, align 8, !tbaa !45
  %mul338 = fmul double %75, %add260
  %add339 = fadd double %add334, %mul338
  %mul340 = fmul double %div, %add339
  %sub341 = fsub double %72, %mul340
  %arrayidx342 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 3
  %idxprom343 = sext i32 %i1.0 to i64
  %arrayidx344 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx342, i64 0, i64 %idxprom343
  store double %sub341, double* %arrayidx344, align 8, !tbaa !45
  %idxprom345 = sext i32 %i1.0 to i64
  %arrayidx346 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom345
  %arrayidx347 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx346, i64 0, i64 4
  %76 = load double, double* %arrayidx347, align 16, !tbaa !45
  %add348 = add nsw i32 %mul70, 4
  %idxprom349 = sext i32 %add348 to i64
  %arrayidx350 = getelementptr inbounds double, double* %dvdx, i64 %idxprom349
  %77 = load double, double* %arrayidx350, align 8, !tbaa !45
  %mul351 = fmul double %77, %add136
  %add352 = add nsw i32 %mul70, 4
  %idxprom353 = sext i32 %add352 to i64
  %arrayidx354 = getelementptr inbounds double, double* %dvdy, i64 %idxprom353
  %78 = load double, double* %arrayidx354, align 8, !tbaa !45
  %mul355 = fmul double %78, %add198
  %add356 = fadd double %mul351, %mul355
  %add357 = add nsw i32 %mul70, 4
  %idxprom358 = sext i32 %add357 to i64
  %arrayidx359 = getelementptr inbounds double, double* %dvdz, i64 %idxprom358
  %79 = load double, double* %arrayidx359, align 8, !tbaa !45
  %mul360 = fmul double %79, %add260
  %add361 = fadd double %add356, %mul360
  %mul362 = fmul double %div, %add361
  %sub363 = fsub double %76, %mul362
  %arrayidx364 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 4
  %idxprom365 = sext i32 %i1.0 to i64
  %arrayidx366 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx364, i64 0, i64 %idxprom365
  store double %sub363, double* %arrayidx366, align 8, !tbaa !45
  %idxprom367 = sext i32 %i1.0 to i64
  %arrayidx368 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom367
  %arrayidx369 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx368, i64 0, i64 5
  %80 = load double, double* %arrayidx369, align 8, !tbaa !45
  %add370 = add nsw i32 %mul70, 5
  %idxprom371 = sext i32 %add370 to i64
  %arrayidx372 = getelementptr inbounds double, double* %dvdx, i64 %idxprom371
  %81 = load double, double* %arrayidx372, align 8, !tbaa !45
  %mul373 = fmul double %81, %add136
  %add374 = add nsw i32 %mul70, 5
  %idxprom375 = sext i32 %add374 to i64
  %arrayidx376 = getelementptr inbounds double, double* %dvdy, i64 %idxprom375
  %82 = load double, double* %arrayidx376, align 8, !tbaa !45
  %mul377 = fmul double %82, %add198
  %add378 = fadd double %mul373, %mul377
  %add379 = add nsw i32 %mul70, 5
  %idxprom380 = sext i32 %add379 to i64
  %arrayidx381 = getelementptr inbounds double, double* %dvdz, i64 %idxprom380
  %83 = load double, double* %arrayidx381, align 8, !tbaa !45
  %mul382 = fmul double %83, %add260
  %add383 = fadd double %add378, %mul382
  %mul384 = fmul double %div, %add383
  %sub385 = fsub double %80, %mul384
  %arrayidx386 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 5
  %idxprom387 = sext i32 %i1.0 to i64
  %arrayidx388 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx386, i64 0, i64 %idxprom387
  store double %sub385, double* %arrayidx388, align 8, !tbaa !45
  %idxprom389 = sext i32 %i1.0 to i64
  %arrayidx390 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom389
  %arrayidx391 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx390, i64 0, i64 6
  %84 = load double, double* %arrayidx391, align 16, !tbaa !45
  %add392 = add nsw i32 %mul70, 6
  %idxprom393 = sext i32 %add392 to i64
  %arrayidx394 = getelementptr inbounds double, double* %dvdx, i64 %idxprom393
  %85 = load double, double* %arrayidx394, align 8, !tbaa !45
  %mul395 = fmul double %85, %add136
  %add396 = add nsw i32 %mul70, 6
  %idxprom397 = sext i32 %add396 to i64
  %arrayidx398 = getelementptr inbounds double, double* %dvdy, i64 %idxprom397
  %86 = load double, double* %arrayidx398, align 8, !tbaa !45
  %mul399 = fmul double %86, %add198
  %add400 = fadd double %mul395, %mul399
  %add401 = add nsw i32 %mul70, 6
  %idxprom402 = sext i32 %add401 to i64
  %arrayidx403 = getelementptr inbounds double, double* %dvdz, i64 %idxprom402
  %87 = load double, double* %arrayidx403, align 8, !tbaa !45
  %mul404 = fmul double %87, %add260
  %add405 = fadd double %add400, %mul404
  %mul406 = fmul double %div, %add405
  %sub407 = fsub double %84, %mul406
  %arrayidx408 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 6
  %idxprom409 = sext i32 %i1.0 to i64
  %arrayidx410 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx408, i64 0, i64 %idxprom409
  store double %sub407, double* %arrayidx410, align 8, !tbaa !45
  %idxprom411 = sext i32 %i1.0 to i64
  %arrayidx412 = getelementptr inbounds [4 x [8 x double]], [4 x [8 x double]]* %gamma, i64 0, i64 %idxprom411
  %arrayidx413 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx412, i64 0, i64 7
  %88 = load double, double* %arrayidx413, align 8, !tbaa !45
  %add414 = add nsw i32 %mul70, 7
  %idxprom415 = sext i32 %add414 to i64
  %arrayidx416 = getelementptr inbounds double, double* %dvdx, i64 %idxprom415
  %89 = load double, double* %arrayidx416, align 8, !tbaa !45
  %mul417 = fmul double %89, %add136
  %add418 = add nsw i32 %mul70, 7
  %idxprom419 = sext i32 %add418 to i64
  %arrayidx420 = getelementptr inbounds double, double* %dvdy, i64 %idxprom419
  %90 = load double, double* %arrayidx420, align 8, !tbaa !45
  %mul421 = fmul double %90, %add198
  %add422 = fadd double %mul417, %mul421
  %add423 = add nsw i32 %mul70, 7
  %idxprom424 = sext i32 %add423 to i64
  %arrayidx425 = getelementptr inbounds double, double* %dvdz, i64 %idxprom424
  %91 = load double, double* %arrayidx425, align 8, !tbaa !45
  %mul426 = fmul double %91, %add260
  %add427 = fadd double %add422, %mul426
  %mul428 = fmul double %div, %add427
  %sub429 = fsub double %88, %mul428
  %arrayidx430 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 7
  %idxprom431 = sext i32 %i1.0 to i64
  %arrayidx432 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx430, i64 0, i64 %idxprom431
  store double %sub429, double* %arrayidx432, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body75
  %inc = add nsw i32 %i1.0, 1
  br label %for.cond72, !llvm.loop !208

for.end:                                          ; preds = %for.cond.cleanup74
  %call433 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ssEi(%class.Domain* %domain, i32 %i2.0)
  %92 = load double, double* %call433, align 8, !tbaa !45
  %call434 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain8elemMassEi(%class.Domain* %domain, i32 %i2.0)
  %93 = load double, double* %call434, align 8, !tbaa !45
  %idxprom435 = sext i32 %i2.0 to i64
  %arrayidx436 = getelementptr inbounds double, double* %determ, i64 %idxprom435
  %94 = load double, double* %arrayidx436, align 8, !tbaa !45
  %call437 = call double @_Z4CBRTd(double %94)
  %arrayidx438 = getelementptr inbounds i32, i32* %call69, i64 0
  %95 = load i32, i32* %arrayidx438, align 4, !tbaa !34
  %arrayidx439 = getelementptr inbounds i32, i32* %call69, i64 1
  %96 = load i32, i32* %arrayidx439, align 4, !tbaa !34
  %arrayidx440 = getelementptr inbounds i32, i32* %call69, i64 2
  %97 = load i32, i32* %arrayidx440, align 4, !tbaa !34
  %arrayidx441 = getelementptr inbounds i32, i32* %call69, i64 3
  %98 = load i32, i32* %arrayidx441, align 4, !tbaa !34
  %arrayidx442 = getelementptr inbounds i32, i32* %call69, i64 4
  %99 = load i32, i32* %arrayidx442, align 4, !tbaa !34
  %arrayidx443 = getelementptr inbounds i32, i32* %call69, i64 5
  %100 = load i32, i32* %arrayidx443, align 4, !tbaa !34
  %arrayidx444 = getelementptr inbounds i32, i32* %call69, i64 6
  %101 = load i32, i32* %arrayidx444, align 4, !tbaa !34
  %arrayidx445 = getelementptr inbounds i32, i32* %call69, i64 7
  %102 = load i32, i32* %arrayidx445, align 4, !tbaa !34
  %call446 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %95)
  %103 = load double, double* %call446, align 8, !tbaa !45
  %arrayidx447 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 0
  store double %103, double* %arrayidx447, align 16, !tbaa !45
  %call448 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %96)
  %104 = load double, double* %call448, align 8, !tbaa !45
  %arrayidx449 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 1
  store double %104, double* %arrayidx449, align 8, !tbaa !45
  %call450 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %97)
  %105 = load double, double* %call450, align 8, !tbaa !45
  %arrayidx451 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 2
  store double %105, double* %arrayidx451, align 16, !tbaa !45
  %call452 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %98)
  %106 = load double, double* %call452, align 8, !tbaa !45
  %arrayidx453 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 3
  store double %106, double* %arrayidx453, align 8, !tbaa !45
  %call454 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %99)
  %107 = load double, double* %call454, align 8, !tbaa !45
  %arrayidx455 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 4
  store double %107, double* %arrayidx455, align 16, !tbaa !45
  %call456 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %100)
  %108 = load double, double* %call456, align 8, !tbaa !45
  %arrayidx457 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 5
  store double %108, double* %arrayidx457, align 8, !tbaa !45
  %call458 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %101)
  %109 = load double, double* %call458, align 8, !tbaa !45
  %arrayidx459 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 6
  store double %109, double* %arrayidx459, align 16, !tbaa !45
  %call460 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2xdEi(%class.Domain* %domain, i32 %102)
  %110 = load double, double* %call460, align 8, !tbaa !45
  %arrayidx461 = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 7
  store double %110, double* %arrayidx461, align 8, !tbaa !45
  %call462 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %95)
  %111 = load double, double* %call462, align 8, !tbaa !45
  %arrayidx463 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 0
  store double %111, double* %arrayidx463, align 16, !tbaa !45
  %call464 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %96)
  %112 = load double, double* %call464, align 8, !tbaa !45
  %arrayidx465 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 1
  store double %112, double* %arrayidx465, align 8, !tbaa !45
  %call466 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %97)
  %113 = load double, double* %call466, align 8, !tbaa !45
  %arrayidx467 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 2
  store double %113, double* %arrayidx467, align 16, !tbaa !45
  %call468 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %98)
  %114 = load double, double* %call468, align 8, !tbaa !45
  %arrayidx469 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 3
  store double %114, double* %arrayidx469, align 8, !tbaa !45
  %call470 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %99)
  %115 = load double, double* %call470, align 8, !tbaa !45
  %arrayidx471 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 4
  store double %115, double* %arrayidx471, align 16, !tbaa !45
  %call472 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %100)
  %116 = load double, double* %call472, align 8, !tbaa !45
  %arrayidx473 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 5
  store double %116, double* %arrayidx473, align 8, !tbaa !45
  %call474 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %101)
  %117 = load double, double* %call474, align 8, !tbaa !45
  %arrayidx475 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 6
  store double %117, double* %arrayidx475, align 16, !tbaa !45
  %call476 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2ydEi(%class.Domain* %domain, i32 %102)
  %118 = load double, double* %call476, align 8, !tbaa !45
  %arrayidx477 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 7
  store double %118, double* %arrayidx477, align 8, !tbaa !45
  %call478 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %95)
  %119 = load double, double* %call478, align 8, !tbaa !45
  %arrayidx479 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 0
  store double %119, double* %arrayidx479, align 16, !tbaa !45
  %call480 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %96)
  %120 = load double, double* %call480, align 8, !tbaa !45
  %arrayidx481 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 1
  store double %120, double* %arrayidx481, align 8, !tbaa !45
  %call482 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %97)
  %121 = load double, double* %call482, align 8, !tbaa !45
  %arrayidx483 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 2
  store double %121, double* %arrayidx483, align 16, !tbaa !45
  %call484 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %98)
  %122 = load double, double* %call484, align 8, !tbaa !45
  %arrayidx485 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 3
  store double %122, double* %arrayidx485, align 8, !tbaa !45
  %call486 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %99)
  %123 = load double, double* %call486, align 8, !tbaa !45
  %arrayidx487 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 4
  store double %123, double* %arrayidx487, align 16, !tbaa !45
  %call488 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %100)
  %124 = load double, double* %call488, align 8, !tbaa !45
  %arrayidx489 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 5
  store double %124, double* %arrayidx489, align 8, !tbaa !45
  %call490 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %101)
  %125 = load double, double* %call490, align 8, !tbaa !45
  %arrayidx491 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 6
  store double %125, double* %arrayidx491, align 16, !tbaa !45
  %call492 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2zdEi(%class.Domain* %domain, i32 %102)
  %126 = load double, double* %call492, align 8, !tbaa !45
  %arrayidx493 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 7
  store double %126, double* %arrayidx493, align 8, !tbaa !45
  %fneg = fneg double %hourg
  %mul494 = fmul double %fneg, 1.000000e-02
  %mul495 = fmul double %mul494, %92
  %mul496 = fmul double %mul495, %93
  %div497 = fdiv double %mul496, %call437
  %arraydecay = getelementptr inbounds [8 x double], [8 x double]* %xd1, i64 0, i64 0
  %arraydecay498 = getelementptr inbounds [8 x double], [8 x double]* %yd1, i64 0, i64 0
  %arraydecay499 = getelementptr inbounds [8 x double], [8 x double]* %zd1, i64 0, i64 0
  %arraydecay500 = getelementptr inbounds [8 x [4 x double]], [8 x [4 x double]]* %hourgam, i64 0, i64 0
  %arraydecay501 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 0
  %arraydecay502 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 0
  %arraydecay503 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 0
  call void @_ZL24CalcElemFBHourglassForcePdS_S_PA4_ddS_S_S_(double* %arraydecay, double* %arraydecay498, double* %arraydecay499, [4 x double]* %arraydecay500, double %div497, double* %arraydecay501, double* %arraydecay502, double* %arraydecay503)
  br i1 false, label %if.then505, label %if.else

if.then505:                                       ; preds = %for.end
  br label %if.end632

if.else:                                          ; preds = %for.end
  %arrayidx560 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 0
  %127 = load double, double* %arrayidx560, align 16, !tbaa !45
  %call561 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %95)
  %128 = load double, double* %call561, align 8, !tbaa !45
  %add562 = fadd double %128, %127
  store double %add562, double* %call561, align 8, !tbaa !45
  %arrayidx563 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 0
  %129 = load double, double* %arrayidx563, align 16, !tbaa !45
  %call564 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %95)
  %130 = load double, double* %call564, align 8, !tbaa !45
  %add565 = fadd double %130, %129
  store double %add565, double* %call564, align 8, !tbaa !45
  %arrayidx566 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 0
  %131 = load double, double* %arrayidx566, align 16, !tbaa !45
  %call567 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %95)
  %132 = load double, double* %call567, align 8, !tbaa !45
  %add568 = fadd double %132, %131
  store double %add568, double* %call567, align 8, !tbaa !45
  %arrayidx569 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 1
  %133 = load double, double* %arrayidx569, align 8, !tbaa !45
  %call570 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %96)
  %134 = load double, double* %call570, align 8, !tbaa !45
  %add571 = fadd double %134, %133
  store double %add571, double* %call570, align 8, !tbaa !45
  %arrayidx572 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 1
  %135 = load double, double* %arrayidx572, align 8, !tbaa !45
  %call573 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %96)
  %136 = load double, double* %call573, align 8, !tbaa !45
  %add574 = fadd double %136, %135
  store double %add574, double* %call573, align 8, !tbaa !45
  %arrayidx575 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 1
  %137 = load double, double* %arrayidx575, align 8, !tbaa !45
  %call576 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %96)
  %138 = load double, double* %call576, align 8, !tbaa !45
  %add577 = fadd double %138, %137
  store double %add577, double* %call576, align 8, !tbaa !45
  %arrayidx578 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 2
  %139 = load double, double* %arrayidx578, align 16, !tbaa !45
  %call579 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %97)
  %140 = load double, double* %call579, align 8, !tbaa !45
  %add580 = fadd double %140, %139
  store double %add580, double* %call579, align 8, !tbaa !45
  %arrayidx581 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 2
  %141 = load double, double* %arrayidx581, align 16, !tbaa !45
  %call582 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %97)
  %142 = load double, double* %call582, align 8, !tbaa !45
  %add583 = fadd double %142, %141
  store double %add583, double* %call582, align 8, !tbaa !45
  %arrayidx584 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 2
  %143 = load double, double* %arrayidx584, align 16, !tbaa !45
  %call585 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %97)
  %144 = load double, double* %call585, align 8, !tbaa !45
  %add586 = fadd double %144, %143
  store double %add586, double* %call585, align 8, !tbaa !45
  %arrayidx587 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 3
  %145 = load double, double* %arrayidx587, align 8, !tbaa !45
  %call588 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %98)
  %146 = load double, double* %call588, align 8, !tbaa !45
  %add589 = fadd double %146, %145
  store double %add589, double* %call588, align 8, !tbaa !45
  %arrayidx590 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 3
  %147 = load double, double* %arrayidx590, align 8, !tbaa !45
  %call591 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %98)
  %148 = load double, double* %call591, align 8, !tbaa !45
  %add592 = fadd double %148, %147
  store double %add592, double* %call591, align 8, !tbaa !45
  %arrayidx593 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 3
  %149 = load double, double* %arrayidx593, align 8, !tbaa !45
  %call594 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %98)
  %150 = load double, double* %call594, align 8, !tbaa !45
  %add595 = fadd double %150, %149
  store double %add595, double* %call594, align 8, !tbaa !45
  %arrayidx596 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 4
  %151 = load double, double* %arrayidx596, align 16, !tbaa !45
  %call597 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %99)
  %152 = load double, double* %call597, align 8, !tbaa !45
  %add598 = fadd double %152, %151
  store double %add598, double* %call597, align 8, !tbaa !45
  %arrayidx599 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 4
  %153 = load double, double* %arrayidx599, align 16, !tbaa !45
  %call600 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %99)
  %154 = load double, double* %call600, align 8, !tbaa !45
  %add601 = fadd double %154, %153
  store double %add601, double* %call600, align 8, !tbaa !45
  %arrayidx602 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 4
  %155 = load double, double* %arrayidx602, align 16, !tbaa !45
  %call603 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %99)
  %156 = load double, double* %call603, align 8, !tbaa !45
  %add604 = fadd double %156, %155
  store double %add604, double* %call603, align 8, !tbaa !45
  %arrayidx605 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 5
  %157 = load double, double* %arrayidx605, align 8, !tbaa !45
  %call606 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %100)
  %158 = load double, double* %call606, align 8, !tbaa !45
  %add607 = fadd double %158, %157
  store double %add607, double* %call606, align 8, !tbaa !45
  %arrayidx608 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 5
  %159 = load double, double* %arrayidx608, align 8, !tbaa !45
  %call609 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %100)
  %160 = load double, double* %call609, align 8, !tbaa !45
  %add610 = fadd double %160, %159
  store double %add610, double* %call609, align 8, !tbaa !45
  %arrayidx611 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 5
  %161 = load double, double* %arrayidx611, align 8, !tbaa !45
  %call612 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %100)
  %162 = load double, double* %call612, align 8, !tbaa !45
  %add613 = fadd double %162, %161
  store double %add613, double* %call612, align 8, !tbaa !45
  %arrayidx614 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 6
  %163 = load double, double* %arrayidx614, align 16, !tbaa !45
  %call615 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %101)
  %164 = load double, double* %call615, align 8, !tbaa !45
  %add616 = fadd double %164, %163
  store double %add616, double* %call615, align 8, !tbaa !45
  %arrayidx617 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 6
  %165 = load double, double* %arrayidx617, align 16, !tbaa !45
  %call618 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %101)
  %166 = load double, double* %call618, align 8, !tbaa !45
  %add619 = fadd double %166, %165
  store double %add619, double* %call618, align 8, !tbaa !45
  %arrayidx620 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 6
  %167 = load double, double* %arrayidx620, align 16, !tbaa !45
  %call621 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %101)
  %168 = load double, double* %call621, align 8, !tbaa !45
  %add622 = fadd double %168, %167
  store double %add622, double* %call621, align 8, !tbaa !45
  %arrayidx623 = getelementptr inbounds [8 x double], [8 x double]* %hgfx, i64 0, i64 7
  %169 = load double, double* %arrayidx623, align 8, !tbaa !45
  %call624 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fxEi(%class.Domain* %domain, i32 %102)
  %170 = load double, double* %call624, align 8, !tbaa !45
  %add625 = fadd double %170, %169
  store double %add625, double* %call624, align 8, !tbaa !45
  %arrayidx626 = getelementptr inbounds [8 x double], [8 x double]* %hgfy, i64 0, i64 7
  %171 = load double, double* %arrayidx626, align 8, !tbaa !45
  %call627 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fyEi(%class.Domain* %domain, i32 %102)
  %172 = load double, double* %call627, align 8, !tbaa !45
  %add628 = fadd double %172, %171
  store double %add628, double* %call627, align 8, !tbaa !45
  %arrayidx629 = getelementptr inbounds [8 x double], [8 x double]* %hgfz, i64 0, i64 7
  %173 = load double, double* %arrayidx629, align 8, !tbaa !45
  %call630 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain2fzEi(%class.Domain* %domain, i32 %102)
  %174 = load double, double* %call630, align 8, !tbaa !45
  %add631 = fadd double %174, %173
  store double %add631, double* %call630, align 8, !tbaa !45
  br label %if.end632

if.end632:                                        ; preds = %if.else, %if.then505
  %175 = bitcast [8 x double]* %zd1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %175) #14
  %176 = bitcast [8 x double]* %yd1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %176) #14
  %177 = bitcast [8 x double]* %xd1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %177) #14
  %178 = bitcast [8 x [4 x double]]* %hourgam to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %178) #14
  %179 = bitcast [8 x double]* %hgfz to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %179) #14
  %180 = bitcast [8 x double]* %hgfy to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %180) #14
  %181 = bitcast [8 x double]* %hgfx to i8*
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %181) #14
  br label %for.inc633

for.inc633:                                       ; preds = %if.end632
  %inc634 = add nsw i32 %i2.0, 1
  br label %for.cond, !llvm.loop !209

for.end635:                                       ; preds = %for.cond.cleanup
  br i1 false, label %if.then637, label %if.end671

if.then637:                                       ; preds = %for.end635
  br label %for.cond638

for.cond638:                                      ; preds = %for.inc668, %if.then637
  br i1 undef, label %for.body641, label %for.cond.cleanup640

for.cond.cleanup640:                              ; preds = %for.cond638
  br label %for.end670

for.body641:                                      ; preds = %for.cond638
  br label %for.cond644

for.cond644:                                      ; preds = %for.inc659, %for.body641
  br i1 undef, label %for.body647, label %for.cond.cleanup646

for.cond.cleanup646:                              ; preds = %for.cond644
  br label %for.end661

for.body647:                                      ; preds = %for.cond644
  br label %for.inc659

for.inc659:                                       ; preds = %for.body647
  br label %for.cond644, !llvm.loop !210

for.end661:                                       ; preds = %for.cond.cleanup646
  br label %for.inc668

for.inc668:                                       ; preds = %for.end661
  br label %for.cond638, !llvm.loop !211

for.end670:                                       ; preds = %for.cond.cleanup640
  br label %if.end671

if.end671:                                        ; preds = %for.end670, %for.end635
  %182 = bitcast [4 x [8 x double]]* %gamma to i8*
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %182) #14
  %183 = bitcast double** %fz_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %183) #14
  %184 = bitcast double** %fy_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %184) #14
  %185 = bitcast double** %fx_elem to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %185) #14
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local double @_Z4CBRTd(double %arg) #10 comdat {
entry:
  %call = call double @cbrt(double %arg) #18
  ret double %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL24CalcElemFBHourglassForcePdS_S_PA4_ddS_S_S_(double* %xd, double* %yd, double* %zd, [4 x double]* %hourgam, double %coefficient, double* %hgfx, double* %hgfy, double* %hgfz) #10 {
entry:
  %hxx = alloca [4 x double], align 16
  %0 = bitcast [4 x double]* %hxx to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 0
  %idxprom = sext i32 %i.0 to i64
  %arrayidx1 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx, i64 0, i64 %idxprom
  %1 = load double, double* %arrayidx1, align 8, !tbaa !45
  %arrayidx2 = getelementptr inbounds double, double* %xd, i64 0
  %2 = load double, double* %arrayidx2, align 8, !tbaa !45
  %mul = fmul double %1, %2
  %arrayidx3 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 1
  %idxprom4 = sext i32 %i.0 to i64
  %arrayidx5 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx3, i64 0, i64 %idxprom4
  %3 = load double, double* %arrayidx5, align 8, !tbaa !45
  %arrayidx6 = getelementptr inbounds double, double* %xd, i64 1
  %4 = load double, double* %arrayidx6, align 8, !tbaa !45
  %mul7 = fmul double %3, %4
  %add = fadd double %mul, %mul7
  %arrayidx8 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 2
  %idxprom9 = sext i32 %i.0 to i64
  %arrayidx10 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx8, i64 0, i64 %idxprom9
  %5 = load double, double* %arrayidx10, align 8, !tbaa !45
  %arrayidx11 = getelementptr inbounds double, double* %xd, i64 2
  %6 = load double, double* %arrayidx11, align 8, !tbaa !45
  %mul12 = fmul double %5, %6
  %add13 = fadd double %add, %mul12
  %arrayidx14 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 3
  %idxprom15 = sext i32 %i.0 to i64
  %arrayidx16 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %7 = load double, double* %arrayidx16, align 8, !tbaa !45
  %arrayidx17 = getelementptr inbounds double, double* %xd, i64 3
  %8 = load double, double* %arrayidx17, align 8, !tbaa !45
  %mul18 = fmul double %7, %8
  %add19 = fadd double %add13, %mul18
  %arrayidx20 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 4
  %idxprom21 = sext i32 %i.0 to i64
  %arrayidx22 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx20, i64 0, i64 %idxprom21
  %9 = load double, double* %arrayidx22, align 8, !tbaa !45
  %arrayidx23 = getelementptr inbounds double, double* %xd, i64 4
  %10 = load double, double* %arrayidx23, align 8, !tbaa !45
  %mul24 = fmul double %9, %10
  %add25 = fadd double %add19, %mul24
  %arrayidx26 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 5
  %idxprom27 = sext i32 %i.0 to i64
  %arrayidx28 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx26, i64 0, i64 %idxprom27
  %11 = load double, double* %arrayidx28, align 8, !tbaa !45
  %arrayidx29 = getelementptr inbounds double, double* %xd, i64 5
  %12 = load double, double* %arrayidx29, align 8, !tbaa !45
  %mul30 = fmul double %11, %12
  %add31 = fadd double %add25, %mul30
  %arrayidx32 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 6
  %idxprom33 = sext i32 %i.0 to i64
  %arrayidx34 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx32, i64 0, i64 %idxprom33
  %13 = load double, double* %arrayidx34, align 8, !tbaa !45
  %arrayidx35 = getelementptr inbounds double, double* %xd, i64 6
  %14 = load double, double* %arrayidx35, align 8, !tbaa !45
  %mul36 = fmul double %13, %14
  %add37 = fadd double %add31, %mul36
  %arrayidx38 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 7
  %idxprom39 = sext i32 %i.0 to i64
  %arrayidx40 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx38, i64 0, i64 %idxprom39
  %15 = load double, double* %arrayidx40, align 8, !tbaa !45
  %arrayidx41 = getelementptr inbounds double, double* %xd, i64 7
  %16 = load double, double* %arrayidx41, align 8, !tbaa !45
  %mul42 = fmul double %15, %16
  %add43 = fadd double %add37, %mul42
  %idxprom44 = sext i32 %i.0 to i64
  %arrayidx45 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %idxprom44
  store double %add43, double* %arrayidx45, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !212

for.end:                                          ; preds = %for.cond.cleanup
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc77, %for.end
  %i46.0 = phi i32 [ 0, %for.end ], [ %inc78, %for.inc77 ]
  %cmp48 = icmp slt i32 %i46.0, 8
  br i1 %cmp48, label %for.body50, label %for.cond.cleanup49

for.cond.cleanup49:                               ; preds = %for.cond47
  br label %for.end79

for.body50:                                       ; preds = %for.cond47
  %idxprom51 = sext i32 %i46.0 to i64
  %arrayidx52 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom51
  %arrayidx53 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx52, i64 0, i64 0
  %17 = load double, double* %arrayidx53, align 8, !tbaa !45
  %arrayidx54 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 0
  %18 = load double, double* %arrayidx54, align 16, !tbaa !45
  %mul55 = fmul double %17, %18
  %idxprom56 = sext i32 %i46.0 to i64
  %arrayidx57 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom56
  %arrayidx58 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx57, i64 0, i64 1
  %19 = load double, double* %arrayidx58, align 8, !tbaa !45
  %arrayidx59 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 1
  %20 = load double, double* %arrayidx59, align 8, !tbaa !45
  %mul60 = fmul double %19, %20
  %add61 = fadd double %mul55, %mul60
  %idxprom62 = sext i32 %i46.0 to i64
  %arrayidx63 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom62
  %arrayidx64 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx63, i64 0, i64 2
  %21 = load double, double* %arrayidx64, align 8, !tbaa !45
  %arrayidx65 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 2
  %22 = load double, double* %arrayidx65, align 16, !tbaa !45
  %mul66 = fmul double %21, %22
  %add67 = fadd double %add61, %mul66
  %idxprom68 = sext i32 %i46.0 to i64
  %arrayidx69 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom68
  %arrayidx70 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx69, i64 0, i64 3
  %23 = load double, double* %arrayidx70, align 8, !tbaa !45
  %arrayidx71 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 3
  %24 = load double, double* %arrayidx71, align 8, !tbaa !45
  %mul72 = fmul double %23, %24
  %add73 = fadd double %add67, %mul72
  %mul74 = fmul double %coefficient, %add73
  %idxprom75 = sext i32 %i46.0 to i64
  %arrayidx76 = getelementptr inbounds double, double* %hgfx, i64 %idxprom75
  store double %mul74, double* %arrayidx76, align 8, !tbaa !45
  br label %for.inc77

for.inc77:                                        ; preds = %for.body50
  %inc78 = add nsw i32 %i46.0, 1
  br label %for.cond47, !llvm.loop !213

for.end79:                                        ; preds = %for.cond.cleanup49
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc134, %for.end79
  %i80.0 = phi i32 [ 0, %for.end79 ], [ %inc135, %for.inc134 ]
  %cmp82 = icmp slt i32 %i80.0, 4
  br i1 %cmp82, label %for.body84, label %for.cond.cleanup83

for.cond.cleanup83:                               ; preds = %for.cond81
  br label %for.end136

for.body84:                                       ; preds = %for.cond81
  %arrayidx85 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 0
  %idxprom86 = sext i32 %i80.0 to i64
  %arrayidx87 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx85, i64 0, i64 %idxprom86
  %25 = load double, double* %arrayidx87, align 8, !tbaa !45
  %arrayidx88 = getelementptr inbounds double, double* %yd, i64 0
  %26 = load double, double* %arrayidx88, align 8, !tbaa !45
  %mul89 = fmul double %25, %26
  %arrayidx90 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 1
  %idxprom91 = sext i32 %i80.0 to i64
  %arrayidx92 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx90, i64 0, i64 %idxprom91
  %27 = load double, double* %arrayidx92, align 8, !tbaa !45
  %arrayidx93 = getelementptr inbounds double, double* %yd, i64 1
  %28 = load double, double* %arrayidx93, align 8, !tbaa !45
  %mul94 = fmul double %27, %28
  %add95 = fadd double %mul89, %mul94
  %arrayidx96 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 2
  %idxprom97 = sext i32 %i80.0 to i64
  %arrayidx98 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx96, i64 0, i64 %idxprom97
  %29 = load double, double* %arrayidx98, align 8, !tbaa !45
  %arrayidx99 = getelementptr inbounds double, double* %yd, i64 2
  %30 = load double, double* %arrayidx99, align 8, !tbaa !45
  %mul100 = fmul double %29, %30
  %add101 = fadd double %add95, %mul100
  %arrayidx102 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 3
  %idxprom103 = sext i32 %i80.0 to i64
  %arrayidx104 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx102, i64 0, i64 %idxprom103
  %31 = load double, double* %arrayidx104, align 8, !tbaa !45
  %arrayidx105 = getelementptr inbounds double, double* %yd, i64 3
  %32 = load double, double* %arrayidx105, align 8, !tbaa !45
  %mul106 = fmul double %31, %32
  %add107 = fadd double %add101, %mul106
  %arrayidx108 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 4
  %idxprom109 = sext i32 %i80.0 to i64
  %arrayidx110 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx108, i64 0, i64 %idxprom109
  %33 = load double, double* %arrayidx110, align 8, !tbaa !45
  %arrayidx111 = getelementptr inbounds double, double* %yd, i64 4
  %34 = load double, double* %arrayidx111, align 8, !tbaa !45
  %mul112 = fmul double %33, %34
  %add113 = fadd double %add107, %mul112
  %arrayidx114 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 5
  %idxprom115 = sext i32 %i80.0 to i64
  %arrayidx116 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx114, i64 0, i64 %idxprom115
  %35 = load double, double* %arrayidx116, align 8, !tbaa !45
  %arrayidx117 = getelementptr inbounds double, double* %yd, i64 5
  %36 = load double, double* %arrayidx117, align 8, !tbaa !45
  %mul118 = fmul double %35, %36
  %add119 = fadd double %add113, %mul118
  %arrayidx120 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 6
  %idxprom121 = sext i32 %i80.0 to i64
  %arrayidx122 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx120, i64 0, i64 %idxprom121
  %37 = load double, double* %arrayidx122, align 8, !tbaa !45
  %arrayidx123 = getelementptr inbounds double, double* %yd, i64 6
  %38 = load double, double* %arrayidx123, align 8, !tbaa !45
  %mul124 = fmul double %37, %38
  %add125 = fadd double %add119, %mul124
  %arrayidx126 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 7
  %idxprom127 = sext i32 %i80.0 to i64
  %arrayidx128 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx126, i64 0, i64 %idxprom127
  %39 = load double, double* %arrayidx128, align 8, !tbaa !45
  %arrayidx129 = getelementptr inbounds double, double* %yd, i64 7
  %40 = load double, double* %arrayidx129, align 8, !tbaa !45
  %mul130 = fmul double %39, %40
  %add131 = fadd double %add125, %mul130
  %idxprom132 = sext i32 %i80.0 to i64
  %arrayidx133 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %idxprom132
  store double %add131, double* %arrayidx133, align 8, !tbaa !45
  br label %for.inc134

for.inc134:                                       ; preds = %for.body84
  %inc135 = add nsw i32 %i80.0, 1
  br label %for.cond81, !llvm.loop !214

for.end136:                                       ; preds = %for.cond.cleanup83
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc168, %for.end136
  %i137.0 = phi i32 [ 0, %for.end136 ], [ %inc169, %for.inc168 ]
  %cmp139 = icmp slt i32 %i137.0, 8
  br i1 %cmp139, label %for.body141, label %for.cond.cleanup140

for.cond.cleanup140:                              ; preds = %for.cond138
  br label %for.end170

for.body141:                                      ; preds = %for.cond138
  %idxprom142 = sext i32 %i137.0 to i64
  %arrayidx143 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx143, i64 0, i64 0
  %41 = load double, double* %arrayidx144, align 8, !tbaa !45
  %arrayidx145 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 0
  %42 = load double, double* %arrayidx145, align 16, !tbaa !45
  %mul146 = fmul double %41, %42
  %idxprom147 = sext i32 %i137.0 to i64
  %arrayidx148 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom147
  %arrayidx149 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx148, i64 0, i64 1
  %43 = load double, double* %arrayidx149, align 8, !tbaa !45
  %arrayidx150 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 1
  %44 = load double, double* %arrayidx150, align 8, !tbaa !45
  %mul151 = fmul double %43, %44
  %add152 = fadd double %mul146, %mul151
  %idxprom153 = sext i32 %i137.0 to i64
  %arrayidx154 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom153
  %arrayidx155 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx154, i64 0, i64 2
  %45 = load double, double* %arrayidx155, align 8, !tbaa !45
  %arrayidx156 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 2
  %46 = load double, double* %arrayidx156, align 16, !tbaa !45
  %mul157 = fmul double %45, %46
  %add158 = fadd double %add152, %mul157
  %idxprom159 = sext i32 %i137.0 to i64
  %arrayidx160 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom159
  %arrayidx161 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx160, i64 0, i64 3
  %47 = load double, double* %arrayidx161, align 8, !tbaa !45
  %arrayidx162 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 3
  %48 = load double, double* %arrayidx162, align 8, !tbaa !45
  %mul163 = fmul double %47, %48
  %add164 = fadd double %add158, %mul163
  %mul165 = fmul double %coefficient, %add164
  %idxprom166 = sext i32 %i137.0 to i64
  %arrayidx167 = getelementptr inbounds double, double* %hgfy, i64 %idxprom166
  store double %mul165, double* %arrayidx167, align 8, !tbaa !45
  br label %for.inc168

for.inc168:                                       ; preds = %for.body141
  %inc169 = add nsw i32 %i137.0, 1
  br label %for.cond138, !llvm.loop !215

for.end170:                                       ; preds = %for.cond.cleanup140
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc225, %for.end170
  %i171.0 = phi i32 [ 0, %for.end170 ], [ %inc226, %for.inc225 ]
  %cmp173 = icmp slt i32 %i171.0, 4
  br i1 %cmp173, label %for.body175, label %for.cond.cleanup174

for.cond.cleanup174:                              ; preds = %for.cond172
  br label %for.end227

for.body175:                                      ; preds = %for.cond172
  %arrayidx176 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 0
  %idxprom177 = sext i32 %i171.0 to i64
  %arrayidx178 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx176, i64 0, i64 %idxprom177
  %49 = load double, double* %arrayidx178, align 8, !tbaa !45
  %arrayidx179 = getelementptr inbounds double, double* %zd, i64 0
  %50 = load double, double* %arrayidx179, align 8, !tbaa !45
  %mul180 = fmul double %49, %50
  %arrayidx181 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 1
  %idxprom182 = sext i32 %i171.0 to i64
  %arrayidx183 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx181, i64 0, i64 %idxprom182
  %51 = load double, double* %arrayidx183, align 8, !tbaa !45
  %arrayidx184 = getelementptr inbounds double, double* %zd, i64 1
  %52 = load double, double* %arrayidx184, align 8, !tbaa !45
  %mul185 = fmul double %51, %52
  %add186 = fadd double %mul180, %mul185
  %arrayidx187 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 2
  %idxprom188 = sext i32 %i171.0 to i64
  %arrayidx189 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx187, i64 0, i64 %idxprom188
  %53 = load double, double* %arrayidx189, align 8, !tbaa !45
  %arrayidx190 = getelementptr inbounds double, double* %zd, i64 2
  %54 = load double, double* %arrayidx190, align 8, !tbaa !45
  %mul191 = fmul double %53, %54
  %add192 = fadd double %add186, %mul191
  %arrayidx193 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 3
  %idxprom194 = sext i32 %i171.0 to i64
  %arrayidx195 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx193, i64 0, i64 %idxprom194
  %55 = load double, double* %arrayidx195, align 8, !tbaa !45
  %arrayidx196 = getelementptr inbounds double, double* %zd, i64 3
  %56 = load double, double* %arrayidx196, align 8, !tbaa !45
  %mul197 = fmul double %55, %56
  %add198 = fadd double %add192, %mul197
  %arrayidx199 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 4
  %idxprom200 = sext i32 %i171.0 to i64
  %arrayidx201 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx199, i64 0, i64 %idxprom200
  %57 = load double, double* %arrayidx201, align 8, !tbaa !45
  %arrayidx202 = getelementptr inbounds double, double* %zd, i64 4
  %58 = load double, double* %arrayidx202, align 8, !tbaa !45
  %mul203 = fmul double %57, %58
  %add204 = fadd double %add198, %mul203
  %arrayidx205 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 5
  %idxprom206 = sext i32 %i171.0 to i64
  %arrayidx207 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx205, i64 0, i64 %idxprom206
  %59 = load double, double* %arrayidx207, align 8, !tbaa !45
  %arrayidx208 = getelementptr inbounds double, double* %zd, i64 5
  %60 = load double, double* %arrayidx208, align 8, !tbaa !45
  %mul209 = fmul double %59, %60
  %add210 = fadd double %add204, %mul209
  %arrayidx211 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 6
  %idxprom212 = sext i32 %i171.0 to i64
  %arrayidx213 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx211, i64 0, i64 %idxprom212
  %61 = load double, double* %arrayidx213, align 8, !tbaa !45
  %arrayidx214 = getelementptr inbounds double, double* %zd, i64 6
  %62 = load double, double* %arrayidx214, align 8, !tbaa !45
  %mul215 = fmul double %61, %62
  %add216 = fadd double %add210, %mul215
  %arrayidx217 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 7
  %idxprom218 = sext i32 %i171.0 to i64
  %arrayidx219 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx217, i64 0, i64 %idxprom218
  %63 = load double, double* %arrayidx219, align 8, !tbaa !45
  %arrayidx220 = getelementptr inbounds double, double* %zd, i64 7
  %64 = load double, double* %arrayidx220, align 8, !tbaa !45
  %mul221 = fmul double %63, %64
  %add222 = fadd double %add216, %mul221
  %idxprom223 = sext i32 %i171.0 to i64
  %arrayidx224 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 %idxprom223
  store double %add222, double* %arrayidx224, align 8, !tbaa !45
  br label %for.inc225

for.inc225:                                       ; preds = %for.body175
  %inc226 = add nsw i32 %i171.0, 1
  br label %for.cond172, !llvm.loop !216

for.end227:                                       ; preds = %for.cond.cleanup174
  br label %for.cond229

for.cond229:                                      ; preds = %for.inc259, %for.end227
  %i228.0 = phi i32 [ 0, %for.end227 ], [ %inc260, %for.inc259 ]
  %cmp230 = icmp slt i32 %i228.0, 8
  br i1 %cmp230, label %for.body232, label %for.cond.cleanup231

for.cond.cleanup231:                              ; preds = %for.cond229
  br label %for.end261

for.body232:                                      ; preds = %for.cond229
  %idxprom233 = sext i32 %i228.0 to i64
  %arrayidx234 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom233
  %arrayidx235 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx234, i64 0, i64 0
  %65 = load double, double* %arrayidx235, align 8, !tbaa !45
  %arrayidx236 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 0
  %66 = load double, double* %arrayidx236, align 16, !tbaa !45
  %mul237 = fmul double %65, %66
  %idxprom238 = sext i32 %i228.0 to i64
  %arrayidx239 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom238
  %arrayidx240 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx239, i64 0, i64 1
  %67 = load double, double* %arrayidx240, align 8, !tbaa !45
  %arrayidx241 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 1
  %68 = load double, double* %arrayidx241, align 8, !tbaa !45
  %mul242 = fmul double %67, %68
  %add243 = fadd double %mul237, %mul242
  %idxprom244 = sext i32 %i228.0 to i64
  %arrayidx245 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom244
  %arrayidx246 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx245, i64 0, i64 2
  %69 = load double, double* %arrayidx246, align 8, !tbaa !45
  %arrayidx247 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 2
  %70 = load double, double* %arrayidx247, align 16, !tbaa !45
  %mul248 = fmul double %69, %70
  %add249 = fadd double %add243, %mul248
  %idxprom250 = sext i32 %i228.0 to i64
  %arrayidx251 = getelementptr inbounds [4 x double], [4 x double]* %hourgam, i64 %idxprom250
  %arrayidx252 = getelementptr inbounds [4 x double], [4 x double]* %arrayidx251, i64 0, i64 3
  %71 = load double, double* %arrayidx252, align 8, !tbaa !45
  %arrayidx253 = getelementptr inbounds [4 x double], [4 x double]* %hxx, i64 0, i64 3
  %72 = load double, double* %arrayidx253, align 8, !tbaa !45
  %mul254 = fmul double %71, %72
  %add255 = fadd double %add249, %mul254
  %mul256 = fmul double %coefficient, %add255
  %idxprom257 = sext i32 %i228.0 to i64
  %arrayidx258 = getelementptr inbounds double, double* %hgfz, i64 %idxprom257
  store double %mul256, double* %arrayidx258, align 8, !tbaa !45
  br label %for.inc259

for.inc259:                                       ; preds = %for.body232
  %inc260 = add nsw i32 %i228.0, 1
  br label %for.cond229, !llvm.loop !217

for.end261:                                       ; preds = %for.cond.cleanup231
  %73 = bitcast [4 x double]* %hxx to i8*
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %73) #14
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_ZN6Domain13nodeElemCountEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 92
  %0 = load i32*, i32** %m_nodeElemStart, align 8, !tbaa !32
  %add = add nsw i32 %idx, 1
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %m_nodeElemStart2 = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 92
  %2 = load i32*, i32** %m_nodeElemStart2, align 8, !tbaa !32
  %idxprom3 = sext i32 %idx to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %2, i64 %idxprom3
  %3 = load i32, i32* %arrayidx4, align 4, !tbaa !34
  %sub = sub nsw i32 %1, %3
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32* @_ZN6Domain18nodeElemCornerListEi(%class.Domain* %this, i32 %idx) #1 comdat align 2 {
entry:
  %m_nodeElemCornerList = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 93
  %0 = load i32*, i32** %m_nodeElemCornerList, align 8, !tbaa !33
  %m_nodeElemStart = getelementptr inbounds %class.Domain, %class.Domain* %this, i32 0, i32 92
  %1 = load i32*, i32** %m_nodeElemStart, align 8, !tbaa !32
  %idxprom = sext i32 %idx to i64
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !34
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %0, i64 %idxprom2
  ret i32* %arrayidx3
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL7VoluDerddddddddddddddddddPdS_S_(double %x0, double %x1, double %x2, double %x3, double %x4, double %x5, double %y0, double %y1, double %y2, double %y3, double %y4, double %y5, double %z0, double %z1, double %z2, double %z3, double %z4, double %z5, double* %dvdx, double* %dvdy, double* %dvdz) #10 {
entry:
  %add = fadd double %y1, %y2
  %add1 = fadd double %z0, %z1
  %mul = fmul double %add, %add1
  %add2 = fadd double %y0, %y1
  %add3 = fadd double %z1, %z2
  %mul4 = fmul double %add2, %add3
  %sub = fsub double %mul, %mul4
  %add5 = fadd double %y0, %y4
  %add6 = fadd double %z3, %z4
  %mul7 = fmul double %add5, %add6
  %add8 = fadd double %sub, %mul7
  %add9 = fadd double %y3, %y4
  %add10 = fadd double %z0, %z4
  %mul11 = fmul double %add9, %add10
  %sub12 = fsub double %add8, %mul11
  %add13 = fadd double %y2, %y5
  %add14 = fadd double %z3, %z5
  %mul15 = fmul double %add13, %add14
  %sub16 = fsub double %sub12, %mul15
  %add17 = fadd double %y3, %y5
  %add18 = fadd double %z2, %z5
  %mul19 = fmul double %add17, %add18
  %add20 = fadd double %sub16, %mul19
  store double %add20, double* %dvdx, align 8, !tbaa !45
  %add21 = fadd double %x1, %x2
  %fneg = fneg double %add21
  %add22 = fadd double %z0, %z1
  %mul23 = fmul double %fneg, %add22
  %add24 = fadd double %x0, %x1
  %add25 = fadd double %z1, %z2
  %mul26 = fmul double %add24, %add25
  %add27 = fadd double %mul23, %mul26
  %add28 = fadd double %x0, %x4
  %add29 = fadd double %z3, %z4
  %mul30 = fmul double %add28, %add29
  %sub31 = fsub double %add27, %mul30
  %add32 = fadd double %x3, %x4
  %add33 = fadd double %z0, %z4
  %mul34 = fmul double %add32, %add33
  %add35 = fadd double %sub31, %mul34
  %add36 = fadd double %x2, %x5
  %add37 = fadd double %z3, %z5
  %mul38 = fmul double %add36, %add37
  %add39 = fadd double %add35, %mul38
  %add40 = fadd double %x3, %x5
  %add41 = fadd double %z2, %z5
  %mul42 = fmul double %add40, %add41
  %sub43 = fsub double %add39, %mul42
  store double %sub43, double* %dvdy, align 8, !tbaa !45
  %add44 = fadd double %y1, %y2
  %fneg45 = fneg double %add44
  %add46 = fadd double %x0, %x1
  %mul47 = fmul double %fneg45, %add46
  %add48 = fadd double %y0, %y1
  %add49 = fadd double %x1, %x2
  %mul50 = fmul double %add48, %add49
  %add51 = fadd double %mul47, %mul50
  %add52 = fadd double %y0, %y4
  %add53 = fadd double %x3, %x4
  %mul54 = fmul double %add52, %add53
  %sub55 = fsub double %add51, %mul54
  %add56 = fadd double %y3, %y4
  %add57 = fadd double %x0, %x4
  %mul58 = fmul double %add56, %add57
  %add59 = fadd double %sub55, %mul58
  %add60 = fadd double %y2, %y5
  %add61 = fadd double %x3, %x5
  %mul62 = fmul double %add60, %add61
  %add63 = fadd double %add59, %mul62
  %add64 = fadd double %y3, %y5
  %add65 = fadd double %x2, %x5
  %mul66 = fmul double %add64, %add65
  %sub67 = fsub double %add63, %mul66
  store double %sub67, double* %dvdz, align 8, !tbaa !45
  %0 = load double, double* %dvdx, align 8, !tbaa !45
  %mul68 = fmul double %0, 0x3FB5555555555555
  store double %mul68, double* %dvdx, align 8, !tbaa !45
  %1 = load double, double* %dvdy, align 8, !tbaa !45
  %mul69 = fmul double %1, 0x3FB5555555555555
  store double %mul69, double* %dvdy, align 8, !tbaa !45
  %2 = load double, double* %dvdz, align 8, !tbaa !45
  %mul70 = fmul double %2, 0x3FB5555555555555
  store double %mul70, double* %dvdz, align 8, !tbaa !45
  ret void
}

; Function Attrs: inlinehint uwtable
define internal void @_ZL19CalcElemNodeNormalsPdS_S_PKdS1_S1_(double* %pfx, double* %pfy, double* %pfz, double* %x, double* %y, double* %z) #7 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds double, double* %pfx, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !45
  %idxprom1 = sext i32 %i.0 to i64
  %arrayidx2 = getelementptr inbounds double, double* %pfy, i64 %idxprom1
  store double 0.000000e+00, double* %arrayidx2, align 8, !tbaa !45
  %idxprom3 = sext i32 %i.0 to i64
  %arrayidx4 = getelementptr inbounds double, double* %pfz, i64 %idxprom3
  store double 0.000000e+00, double* %arrayidx4, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !218

for.end:                                          ; preds = %for.cond.cleanup
  %arrayidx5 = getelementptr inbounds double, double* %pfx, i64 0
  %arrayidx6 = getelementptr inbounds double, double* %pfy, i64 0
  %arrayidx7 = getelementptr inbounds double, double* %pfz, i64 0
  %arrayidx8 = getelementptr inbounds double, double* %pfx, i64 1
  %arrayidx9 = getelementptr inbounds double, double* %pfy, i64 1
  %arrayidx10 = getelementptr inbounds double, double* %pfz, i64 1
  %arrayidx11 = getelementptr inbounds double, double* %pfx, i64 2
  %arrayidx12 = getelementptr inbounds double, double* %pfy, i64 2
  %arrayidx13 = getelementptr inbounds double, double* %pfz, i64 2
  %arrayidx14 = getelementptr inbounds double, double* %pfx, i64 3
  %arrayidx15 = getelementptr inbounds double, double* %pfy, i64 3
  %arrayidx16 = getelementptr inbounds double, double* %pfz, i64 3
  %arrayidx17 = getelementptr inbounds double, double* %x, i64 0
  %0 = load double, double* %arrayidx17, align 8, !tbaa !45
  %arrayidx18 = getelementptr inbounds double, double* %y, i64 0
  %1 = load double, double* %arrayidx18, align 8, !tbaa !45
  %arrayidx19 = getelementptr inbounds double, double* %z, i64 0
  %2 = load double, double* %arrayidx19, align 8, !tbaa !45
  %arrayidx20 = getelementptr inbounds double, double* %x, i64 1
  %3 = load double, double* %arrayidx20, align 8, !tbaa !45
  %arrayidx21 = getelementptr inbounds double, double* %y, i64 1
  %4 = load double, double* %arrayidx21, align 8, !tbaa !45
  %arrayidx22 = getelementptr inbounds double, double* %z, i64 1
  %5 = load double, double* %arrayidx22, align 8, !tbaa !45
  %arrayidx23 = getelementptr inbounds double, double* %x, i64 2
  %6 = load double, double* %arrayidx23, align 8, !tbaa !45
  %arrayidx24 = getelementptr inbounds double, double* %y, i64 2
  %7 = load double, double* %arrayidx24, align 8, !tbaa !45
  %arrayidx25 = getelementptr inbounds double, double* %z, i64 2
  %8 = load double, double* %arrayidx25, align 8, !tbaa !45
  %arrayidx26 = getelementptr inbounds double, double* %x, i64 3
  %9 = load double, double* %arrayidx26, align 8, !tbaa !45
  %arrayidx27 = getelementptr inbounds double, double* %y, i64 3
  %10 = load double, double* %arrayidx27, align 8, !tbaa !45
  %arrayidx28 = getelementptr inbounds double, double* %z, i64 3
  %11 = load double, double* %arrayidx28, align 8, !tbaa !45
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx5, double* %arrayidx6, double* %arrayidx7, double* %arrayidx8, double* %arrayidx9, double* %arrayidx10, double* %arrayidx11, double* %arrayidx12, double* %arrayidx13, double* %arrayidx14, double* %arrayidx15, double* %arrayidx16, double %0, double %1, double %2, double %3, double %4, double %5, double %6, double %7, double %8, double %9, double %10, double %11)
  %arrayidx29 = getelementptr inbounds double, double* %pfx, i64 0
  %arrayidx30 = getelementptr inbounds double, double* %pfy, i64 0
  %arrayidx31 = getelementptr inbounds double, double* %pfz, i64 0
  %arrayidx32 = getelementptr inbounds double, double* %pfx, i64 4
  %arrayidx33 = getelementptr inbounds double, double* %pfy, i64 4
  %arrayidx34 = getelementptr inbounds double, double* %pfz, i64 4
  %arrayidx35 = getelementptr inbounds double, double* %pfx, i64 5
  %arrayidx36 = getelementptr inbounds double, double* %pfy, i64 5
  %arrayidx37 = getelementptr inbounds double, double* %pfz, i64 5
  %arrayidx38 = getelementptr inbounds double, double* %pfx, i64 1
  %arrayidx39 = getelementptr inbounds double, double* %pfy, i64 1
  %arrayidx40 = getelementptr inbounds double, double* %pfz, i64 1
  %arrayidx41 = getelementptr inbounds double, double* %x, i64 0
  %12 = load double, double* %arrayidx41, align 8, !tbaa !45
  %arrayidx42 = getelementptr inbounds double, double* %y, i64 0
  %13 = load double, double* %arrayidx42, align 8, !tbaa !45
  %arrayidx43 = getelementptr inbounds double, double* %z, i64 0
  %14 = load double, double* %arrayidx43, align 8, !tbaa !45
  %arrayidx44 = getelementptr inbounds double, double* %x, i64 4
  %15 = load double, double* %arrayidx44, align 8, !tbaa !45
  %arrayidx45 = getelementptr inbounds double, double* %y, i64 4
  %16 = load double, double* %arrayidx45, align 8, !tbaa !45
  %arrayidx46 = getelementptr inbounds double, double* %z, i64 4
  %17 = load double, double* %arrayidx46, align 8, !tbaa !45
  %arrayidx47 = getelementptr inbounds double, double* %x, i64 5
  %18 = load double, double* %arrayidx47, align 8, !tbaa !45
  %arrayidx48 = getelementptr inbounds double, double* %y, i64 5
  %19 = load double, double* %arrayidx48, align 8, !tbaa !45
  %arrayidx49 = getelementptr inbounds double, double* %z, i64 5
  %20 = load double, double* %arrayidx49, align 8, !tbaa !45
  %arrayidx50 = getelementptr inbounds double, double* %x, i64 1
  %21 = load double, double* %arrayidx50, align 8, !tbaa !45
  %arrayidx51 = getelementptr inbounds double, double* %y, i64 1
  %22 = load double, double* %arrayidx51, align 8, !tbaa !45
  %arrayidx52 = getelementptr inbounds double, double* %z, i64 1
  %23 = load double, double* %arrayidx52, align 8, !tbaa !45
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx29, double* %arrayidx30, double* %arrayidx31, double* %arrayidx32, double* %arrayidx33, double* %arrayidx34, double* %arrayidx35, double* %arrayidx36, double* %arrayidx37, double* %arrayidx38, double* %arrayidx39, double* %arrayidx40, double %12, double %13, double %14, double %15, double %16, double %17, double %18, double %19, double %20, double %21, double %22, double %23)
  %arrayidx53 = getelementptr inbounds double, double* %pfx, i64 1
  %arrayidx54 = getelementptr inbounds double, double* %pfy, i64 1
  %arrayidx55 = getelementptr inbounds double, double* %pfz, i64 1
  %arrayidx56 = getelementptr inbounds double, double* %pfx, i64 5
  %arrayidx57 = getelementptr inbounds double, double* %pfy, i64 5
  %arrayidx58 = getelementptr inbounds double, double* %pfz, i64 5
  %arrayidx59 = getelementptr inbounds double, double* %pfx, i64 6
  %arrayidx60 = getelementptr inbounds double, double* %pfy, i64 6
  %arrayidx61 = getelementptr inbounds double, double* %pfz, i64 6
  %arrayidx62 = getelementptr inbounds double, double* %pfx, i64 2
  %arrayidx63 = getelementptr inbounds double, double* %pfy, i64 2
  %arrayidx64 = getelementptr inbounds double, double* %pfz, i64 2
  %arrayidx65 = getelementptr inbounds double, double* %x, i64 1
  %24 = load double, double* %arrayidx65, align 8, !tbaa !45
  %arrayidx66 = getelementptr inbounds double, double* %y, i64 1
  %25 = load double, double* %arrayidx66, align 8, !tbaa !45
  %arrayidx67 = getelementptr inbounds double, double* %z, i64 1
  %26 = load double, double* %arrayidx67, align 8, !tbaa !45
  %arrayidx68 = getelementptr inbounds double, double* %x, i64 5
  %27 = load double, double* %arrayidx68, align 8, !tbaa !45
  %arrayidx69 = getelementptr inbounds double, double* %y, i64 5
  %28 = load double, double* %arrayidx69, align 8, !tbaa !45
  %arrayidx70 = getelementptr inbounds double, double* %z, i64 5
  %29 = load double, double* %arrayidx70, align 8, !tbaa !45
  %arrayidx71 = getelementptr inbounds double, double* %x, i64 6
  %30 = load double, double* %arrayidx71, align 8, !tbaa !45
  %arrayidx72 = getelementptr inbounds double, double* %y, i64 6
  %31 = load double, double* %arrayidx72, align 8, !tbaa !45
  %arrayidx73 = getelementptr inbounds double, double* %z, i64 6
  %32 = load double, double* %arrayidx73, align 8, !tbaa !45
  %arrayidx74 = getelementptr inbounds double, double* %x, i64 2
  %33 = load double, double* %arrayidx74, align 8, !tbaa !45
  %arrayidx75 = getelementptr inbounds double, double* %y, i64 2
  %34 = load double, double* %arrayidx75, align 8, !tbaa !45
  %arrayidx76 = getelementptr inbounds double, double* %z, i64 2
  %35 = load double, double* %arrayidx76, align 8, !tbaa !45
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx53, double* %arrayidx54, double* %arrayidx55, double* %arrayidx56, double* %arrayidx57, double* %arrayidx58, double* %arrayidx59, double* %arrayidx60, double* %arrayidx61, double* %arrayidx62, double* %arrayidx63, double* %arrayidx64, double %24, double %25, double %26, double %27, double %28, double %29, double %30, double %31, double %32, double %33, double %34, double %35)
  %arrayidx77 = getelementptr inbounds double, double* %pfx, i64 2
  %arrayidx78 = getelementptr inbounds double, double* %pfy, i64 2
  %arrayidx79 = getelementptr inbounds double, double* %pfz, i64 2
  %arrayidx80 = getelementptr inbounds double, double* %pfx, i64 6
  %arrayidx81 = getelementptr inbounds double, double* %pfy, i64 6
  %arrayidx82 = getelementptr inbounds double, double* %pfz, i64 6
  %arrayidx83 = getelementptr inbounds double, double* %pfx, i64 7
  %arrayidx84 = getelementptr inbounds double, double* %pfy, i64 7
  %arrayidx85 = getelementptr inbounds double, double* %pfz, i64 7
  %arrayidx86 = getelementptr inbounds double, double* %pfx, i64 3
  %arrayidx87 = getelementptr inbounds double, double* %pfy, i64 3
  %arrayidx88 = getelementptr inbounds double, double* %pfz, i64 3
  %arrayidx89 = getelementptr inbounds double, double* %x, i64 2
  %36 = load double, double* %arrayidx89, align 8, !tbaa !45
  %arrayidx90 = getelementptr inbounds double, double* %y, i64 2
  %37 = load double, double* %arrayidx90, align 8, !tbaa !45
  %arrayidx91 = getelementptr inbounds double, double* %z, i64 2
  %38 = load double, double* %arrayidx91, align 8, !tbaa !45
  %arrayidx92 = getelementptr inbounds double, double* %x, i64 6
  %39 = load double, double* %arrayidx92, align 8, !tbaa !45
  %arrayidx93 = getelementptr inbounds double, double* %y, i64 6
  %40 = load double, double* %arrayidx93, align 8, !tbaa !45
  %arrayidx94 = getelementptr inbounds double, double* %z, i64 6
  %41 = load double, double* %arrayidx94, align 8, !tbaa !45
  %arrayidx95 = getelementptr inbounds double, double* %x, i64 7
  %42 = load double, double* %arrayidx95, align 8, !tbaa !45
  %arrayidx96 = getelementptr inbounds double, double* %y, i64 7
  %43 = load double, double* %arrayidx96, align 8, !tbaa !45
  %arrayidx97 = getelementptr inbounds double, double* %z, i64 7
  %44 = load double, double* %arrayidx97, align 8, !tbaa !45
  %arrayidx98 = getelementptr inbounds double, double* %x, i64 3
  %45 = load double, double* %arrayidx98, align 8, !tbaa !45
  %arrayidx99 = getelementptr inbounds double, double* %y, i64 3
  %46 = load double, double* %arrayidx99, align 8, !tbaa !45
  %arrayidx100 = getelementptr inbounds double, double* %z, i64 3
  %47 = load double, double* %arrayidx100, align 8, !tbaa !45
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx77, double* %arrayidx78, double* %arrayidx79, double* %arrayidx80, double* %arrayidx81, double* %arrayidx82, double* %arrayidx83, double* %arrayidx84, double* %arrayidx85, double* %arrayidx86, double* %arrayidx87, double* %arrayidx88, double %36, double %37, double %38, double %39, double %40, double %41, double %42, double %43, double %44, double %45, double %46, double %47)
  %arrayidx101 = getelementptr inbounds double, double* %pfx, i64 3
  %arrayidx102 = getelementptr inbounds double, double* %pfy, i64 3
  %arrayidx103 = getelementptr inbounds double, double* %pfz, i64 3
  %arrayidx104 = getelementptr inbounds double, double* %pfx, i64 7
  %arrayidx105 = getelementptr inbounds double, double* %pfy, i64 7
  %arrayidx106 = getelementptr inbounds double, double* %pfz, i64 7
  %arrayidx107 = getelementptr inbounds double, double* %pfx, i64 4
  %arrayidx108 = getelementptr inbounds double, double* %pfy, i64 4
  %arrayidx109 = getelementptr inbounds double, double* %pfz, i64 4
  %arrayidx110 = getelementptr inbounds double, double* %pfx, i64 0
  %arrayidx111 = getelementptr inbounds double, double* %pfy, i64 0
  %arrayidx112 = getelementptr inbounds double, double* %pfz, i64 0
  %arrayidx113 = getelementptr inbounds double, double* %x, i64 3
  %48 = load double, double* %arrayidx113, align 8, !tbaa !45
  %arrayidx114 = getelementptr inbounds double, double* %y, i64 3
  %49 = load double, double* %arrayidx114, align 8, !tbaa !45
  %arrayidx115 = getelementptr inbounds double, double* %z, i64 3
  %50 = load double, double* %arrayidx115, align 8, !tbaa !45
  %arrayidx116 = getelementptr inbounds double, double* %x, i64 7
  %51 = load double, double* %arrayidx116, align 8, !tbaa !45
  %arrayidx117 = getelementptr inbounds double, double* %y, i64 7
  %52 = load double, double* %arrayidx117, align 8, !tbaa !45
  %arrayidx118 = getelementptr inbounds double, double* %z, i64 7
  %53 = load double, double* %arrayidx118, align 8, !tbaa !45
  %arrayidx119 = getelementptr inbounds double, double* %x, i64 4
  %54 = load double, double* %arrayidx119, align 8, !tbaa !45
  %arrayidx120 = getelementptr inbounds double, double* %y, i64 4
  %55 = load double, double* %arrayidx120, align 8, !tbaa !45
  %arrayidx121 = getelementptr inbounds double, double* %z, i64 4
  %56 = load double, double* %arrayidx121, align 8, !tbaa !45
  %arrayidx122 = getelementptr inbounds double, double* %x, i64 0
  %57 = load double, double* %arrayidx122, align 8, !tbaa !45
  %arrayidx123 = getelementptr inbounds double, double* %y, i64 0
  %58 = load double, double* %arrayidx123, align 8, !tbaa !45
  %arrayidx124 = getelementptr inbounds double, double* %z, i64 0
  %59 = load double, double* %arrayidx124, align 8, !tbaa !45
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx101, double* %arrayidx102, double* %arrayidx103, double* %arrayidx104, double* %arrayidx105, double* %arrayidx106, double* %arrayidx107, double* %arrayidx108, double* %arrayidx109, double* %arrayidx110, double* %arrayidx111, double* %arrayidx112, double %48, double %49, double %50, double %51, double %52, double %53, double %54, double %55, double %56, double %57, double %58, double %59)
  %arrayidx125 = getelementptr inbounds double, double* %pfx, i64 4
  %arrayidx126 = getelementptr inbounds double, double* %pfy, i64 4
  %arrayidx127 = getelementptr inbounds double, double* %pfz, i64 4
  %arrayidx128 = getelementptr inbounds double, double* %pfx, i64 7
  %arrayidx129 = getelementptr inbounds double, double* %pfy, i64 7
  %arrayidx130 = getelementptr inbounds double, double* %pfz, i64 7
  %arrayidx131 = getelementptr inbounds double, double* %pfx, i64 6
  %arrayidx132 = getelementptr inbounds double, double* %pfy, i64 6
  %arrayidx133 = getelementptr inbounds double, double* %pfz, i64 6
  %arrayidx134 = getelementptr inbounds double, double* %pfx, i64 5
  %arrayidx135 = getelementptr inbounds double, double* %pfy, i64 5
  %arrayidx136 = getelementptr inbounds double, double* %pfz, i64 5
  %arrayidx137 = getelementptr inbounds double, double* %x, i64 4
  %60 = load double, double* %arrayidx137, align 8, !tbaa !45
  %arrayidx138 = getelementptr inbounds double, double* %y, i64 4
  %61 = load double, double* %arrayidx138, align 8, !tbaa !45
  %arrayidx139 = getelementptr inbounds double, double* %z, i64 4
  %62 = load double, double* %arrayidx139, align 8, !tbaa !45
  %arrayidx140 = getelementptr inbounds double, double* %x, i64 7
  %63 = load double, double* %arrayidx140, align 8, !tbaa !45
  %arrayidx141 = getelementptr inbounds double, double* %y, i64 7
  %64 = load double, double* %arrayidx141, align 8, !tbaa !45
  %arrayidx142 = getelementptr inbounds double, double* %z, i64 7
  %65 = load double, double* %arrayidx142, align 8, !tbaa !45
  %arrayidx143 = getelementptr inbounds double, double* %x, i64 6
  %66 = load double, double* %arrayidx143, align 8, !tbaa !45
  %arrayidx144 = getelementptr inbounds double, double* %y, i64 6
  %67 = load double, double* %arrayidx144, align 8, !tbaa !45
  %arrayidx145 = getelementptr inbounds double, double* %z, i64 6
  %68 = load double, double* %arrayidx145, align 8, !tbaa !45
  %arrayidx146 = getelementptr inbounds double, double* %x, i64 5
  %69 = load double, double* %arrayidx146, align 8, !tbaa !45
  %arrayidx147 = getelementptr inbounds double, double* %y, i64 5
  %70 = load double, double* %arrayidx147, align 8, !tbaa !45
  %arrayidx148 = getelementptr inbounds double, double* %z, i64 5
  %71 = load double, double* %arrayidx148, align 8, !tbaa !45
  call void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %arrayidx125, double* %arrayidx126, double* %arrayidx127, double* %arrayidx128, double* %arrayidx129, double* %arrayidx130, double* %arrayidx131, double* %arrayidx132, double* %arrayidx133, double* %arrayidx134, double* %arrayidx135, double* %arrayidx136, double %60, double %61, double %62, double %63, double %64, double %65, double %66, double %67, double %68, double %69, double %70, double %71)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL27SumElemStressesToNodeForcesPA8_KddddPdS2_S2_([8 x double]* %B, double %stress_xx, double %stress_yy, double %stress_zz, double* %fx, double* %fy, double* %fz) #10 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, 8
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [8 x double], [8 x double]* %B, i64 0
  %idxprom = sext i32 %i.0 to i64
  %arrayidx1 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx, i64 0, i64 %idxprom
  %0 = load double, double* %arrayidx1, align 8, !tbaa !45
  %mul = fmul double %stress_xx, %0
  %fneg = fneg double %mul
  %idxprom2 = sext i32 %i.0 to i64
  %arrayidx3 = getelementptr inbounds double, double* %fx, i64 %idxprom2
  store double %fneg, double* %arrayidx3, align 8, !tbaa !45
  %arrayidx4 = getelementptr inbounds [8 x double], [8 x double]* %B, i64 1
  %idxprom5 = sext i32 %i.0 to i64
  %arrayidx6 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx4, i64 0, i64 %idxprom5
  %1 = load double, double* %arrayidx6, align 8, !tbaa !45
  %mul7 = fmul double %stress_yy, %1
  %fneg8 = fneg double %mul7
  %idxprom9 = sext i32 %i.0 to i64
  %arrayidx10 = getelementptr inbounds double, double* %fy, i64 %idxprom9
  store double %fneg8, double* %arrayidx10, align 8, !tbaa !45
  %arrayidx11 = getelementptr inbounds [8 x double], [8 x double]* %B, i64 2
  %idxprom12 = sext i32 %i.0 to i64
  %arrayidx13 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx11, i64 0, i64 %idxprom12
  %2 = load double, double* %arrayidx13, align 8, !tbaa !45
  %mul14 = fmul double %stress_zz, %2
  %fneg15 = fneg double %mul14
  %idxprom16 = sext i32 %i.0 to i64
  %arrayidx17 = getelementptr inbounds double, double* %fz, i64 %idxprom16
  store double %fneg15, double* %arrayidx17, align 8, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !219

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZL17SumElemFaceNormalPdS_S_S_S_S_S_S_S_S_S_S_dddddddddddd(double* %normalX0, double* %normalY0, double* %normalZ0, double* %normalX1, double* %normalY1, double* %normalZ1, double* %normalX2, double* %normalY2, double* %normalZ2, double* %normalX3, double* %normalY3, double* %normalZ3, double %x0, double %y0, double %z0, double %x1, double %y1, double %z1, double %x2, double %y2, double %z2, double %x3, double %y3, double %z3) #10 {
entry:
  %add = fadd double %x3, %x2
  %sub = fsub double %add, %x1
  %sub1 = fsub double %sub, %x0
  %mul = fmul double 5.000000e-01, %sub1
  %add2 = fadd double %y3, %y2
  %sub3 = fsub double %add2, %y1
  %sub4 = fsub double %sub3, %y0
  %mul5 = fmul double 5.000000e-01, %sub4
  %add6 = fadd double %z3, %z2
  %sub7 = fsub double %add6, %z1
  %sub8 = fsub double %sub7, %z0
  %mul9 = fmul double 5.000000e-01, %sub8
  %add10 = fadd double %x2, %x1
  %sub11 = fsub double %add10, %x3
  %sub12 = fsub double %sub11, %x0
  %mul13 = fmul double 5.000000e-01, %sub12
  %add14 = fadd double %y2, %y1
  %sub15 = fsub double %add14, %y3
  %sub16 = fsub double %sub15, %y0
  %mul17 = fmul double 5.000000e-01, %sub16
  %add18 = fadd double %z2, %z1
  %sub19 = fsub double %add18, %z3
  %sub20 = fsub double %sub19, %z0
  %mul21 = fmul double 5.000000e-01, %sub20
  %mul22 = fmul double %mul5, %mul21
  %mul23 = fmul double %mul9, %mul17
  %sub24 = fsub double %mul22, %mul23
  %mul25 = fmul double 2.500000e-01, %sub24
  %mul26 = fmul double %mul9, %mul13
  %mul27 = fmul double %mul, %mul21
  %sub28 = fsub double %mul26, %mul27
  %mul29 = fmul double 2.500000e-01, %sub28
  %mul30 = fmul double %mul, %mul17
  %mul31 = fmul double %mul5, %mul13
  %sub32 = fsub double %mul30, %mul31
  %mul33 = fmul double 2.500000e-01, %sub32
  %0 = load double, double* %normalX0, align 8, !tbaa !45
  %add34 = fadd double %0, %mul25
  store double %add34, double* %normalX0, align 8, !tbaa !45
  %1 = load double, double* %normalX1, align 8, !tbaa !45
  %add35 = fadd double %1, %mul25
  store double %add35, double* %normalX1, align 8, !tbaa !45
  %2 = load double, double* %normalX2, align 8, !tbaa !45
  %add36 = fadd double %2, %mul25
  store double %add36, double* %normalX2, align 8, !tbaa !45
  %3 = load double, double* %normalX3, align 8, !tbaa !45
  %add37 = fadd double %3, %mul25
  store double %add37, double* %normalX3, align 8, !tbaa !45
  %4 = load double, double* %normalY0, align 8, !tbaa !45
  %add38 = fadd double %4, %mul29
  store double %add38, double* %normalY0, align 8, !tbaa !45
  %5 = load double, double* %normalY1, align 8, !tbaa !45
  %add39 = fadd double %5, %mul29
  store double %add39, double* %normalY1, align 8, !tbaa !45
  %6 = load double, double* %normalY2, align 8, !tbaa !45
  %add40 = fadd double %6, %mul29
  store double %add40, double* %normalY2, align 8, !tbaa !45
  %7 = load double, double* %normalY3, align 8, !tbaa !45
  %add41 = fadd double %7, %mul29
  store double %add41, double* %normalY3, align 8, !tbaa !45
  %8 = load double, double* %normalZ0, align 8, !tbaa !45
  %add42 = fadd double %8, %mul33
  store double %add42, double* %normalZ0, align 8, !tbaa !45
  %9 = load double, double* %normalZ1, align 8, !tbaa !45
  %add43 = fadd double %9, %mul33
  store double %add43, double* %normalZ1, align 8, !tbaa !45
  %10 = load double, double* %normalZ2, align 8, !tbaa !45
  %add44 = fadd double %10, %mul33
  store double %add44, double* %normalZ2, align 8, !tbaa !45
  %11 = load double, double* %normalZ3, align 8, !tbaa !45
  %add45 = fadd double %11, %mul33
  store double %add45, double* %normalZ3, align 8, !tbaa !45
  ret void
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIlEERSoT_(%"class.std::basic_ostream"*, i64) #12

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s) #1 comdat align 2 {
entry:
  %call = call i64 @strlen(i8* %__s) #14
  ret i64 %call
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) #12

; Function Attrs: nounwind
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZStorSt12_Ios_IostateS_(i32 %__a, i32 %__b) #10 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"*, i32) #12

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_lulesh_util.cc() #0 section ".text.startup" {
entry:
  call void @__cxx_global_var_init.10()
  ret void
}

; Function Attrs: uwtable
define internal void @__cxx_global_var_init.10() #0 section ".text.startup" {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::allocator.2"* @_ZStL8__ioinit.11)
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::allocator.2"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::allocator.2", %"class.std::allocator.2"* @_ZStL8__ioinit.11, i32 0, i32 0), i8* @__dso_handle) #14
  ret void
}

; Function Attrs: uwtable
define dso_local void @_Z23ParseCommandLineOptionsiPPciP11cmdLineOpts(i32 %argc, i8** %argv, i32 %myRank, %struct.cmdLineOpts* %opts) #0 {
entry:
  %msg = alloca [80 x i8], align 16
  %cmp = icmp sgt i32 %argc, 1
  br i1 %cmp, label %if.then, label %if.end145

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end144, %if.then
  %i.0 = phi i32 [ 1, %if.then ], [ %i.9, %if.end144 ]
  %cmp1 = icmp slt i32 %i.0, %argc
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 %idxprom
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !77
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #23
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  %add = add nsw i32 %i.0, 1
  %cmp4 = icmp sge i32 %add, %argc
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1.20, i64 0, i64 0), i32 %myRank)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %add6 = add nsw i32 %i.0, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom7
  %1 = load i8*, i8** %arrayidx8, align 8, !tbaa !77
  %its = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 0
  %call9 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %1, i32* %its)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end11, label %if.then10

if.then10:                                        ; preds = %if.end
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2.21, i64 0, i64 0), i32 %myRank)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %add12 = add nsw i32 %i.0, 2
  br label %if.end144

if.else:                                          ; preds = %while.body
  %idxprom13 = sext i32 %i.0 to i64
  %arrayidx14 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom13
  %2 = load i8*, i8** %arrayidx14, align 8, !tbaa !77
  %call15 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.22, i64 0, i64 0)) #23
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.else30

if.then17:                                        ; preds = %if.else
  %add18 = add nsw i32 %i.0, 1
  %cmp19 = icmp sge i32 %add18, %argc
  br i1 %cmp19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4.23, i64 0, i64 0), i32 %myRank)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  %add22 = add nsw i32 %i.0, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom23
  %3 = load i8*, i8** %arrayidx24, align 8, !tbaa !77
  %nx = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 1
  %call25 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %3, i32* %nx)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end28, label %if.then27

if.then27:                                        ; preds = %if.end21
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5.24, i64 0, i64 0), i32 %myRank)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end21
  %add29 = add nsw i32 %i.0, 2
  br label %if.end143

if.else30:                                        ; preds = %if.else
  %idxprom31 = sext i32 %i.0 to i64
  %arrayidx32 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom31
  %4 = load i8*, i8** %arrayidx32, align 8, !tbaa !77
  %call33 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.25, i64 0, i64 0)) #23
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.else48

if.then35:                                        ; preds = %if.else30
  %add36 = add nsw i32 %i.0, 1
  %cmp37 = icmp sge i32 %add36, %argc
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.then35
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.26, i64 0, i64 0), i32 %myRank)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.then35
  %add40 = add nsw i32 %i.0, 1
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom41
  %5 = load i8*, i8** %arrayidx42, align 8, !tbaa !77
  %numReg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 2
  %call43 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %5, i32* %numReg)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %if.end39
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8.27, i64 0, i64 0), i32 %myRank)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %if.end39
  %add47 = add nsw i32 %i.0, 2
  br label %if.end142

if.else48:                                        ; preds = %if.else30
  %idxprom49 = sext i32 %i.0 to i64
  %arrayidx50 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom49
  %6 = load i8*, i8** %arrayidx50, align 8, !tbaa !77
  %call51 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9.28, i64 0, i64 0)) #23
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.else66

if.then53:                                        ; preds = %if.else48
  %add54 = add nsw i32 %i.0, 1
  %cmp55 = icmp sge i32 %add54, %argc
  br i1 %cmp55, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.then53
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10.29, i64 0, i64 0), i32 %myRank)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.then53
  %add58 = add nsw i32 %i.0, 1
  %idxprom59 = sext i32 %add58 to i64
  %arrayidx60 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom59
  %7 = load i8*, i8** %arrayidx60, align 8, !tbaa !77
  %numFiles = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 3
  %call61 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %7, i32* %numFiles)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end64, label %if.then63

if.then63:                                        ; preds = %if.end57
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.11.30, i64 0, i64 0), i32 %myRank)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end57
  %add65 = add nsw i32 %i.0, 2
  br label %if.end141

if.else66:                                        ; preds = %if.else48
  %idxprom67 = sext i32 %i.0 to i64
  %arrayidx68 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom67
  %8 = load i8*, i8** %arrayidx68, align 8, !tbaa !77
  %call69 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12.31, i64 0, i64 0)) #23
  %cmp70 = icmp eq i32 %call69, 0
  br i1 %cmp70, label %if.then71, label %if.else72

if.then71:                                        ; preds = %if.else66
  %showProg = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 4
  store i32 1, i32* %showProg, align 4, !tbaa !136
  %inc = add nsw i32 %i.0, 1
  br label %if.end140

if.else72:                                        ; preds = %if.else66
  %idxprom73 = sext i32 %i.0 to i64
  %arrayidx74 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom73
  %9 = load i8*, i8** %arrayidx74, align 8, !tbaa !77
  %call75 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13.32, i64 0, i64 0)) #23
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then77, label %if.else79

if.then77:                                        ; preds = %if.else72
  %quiet = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 5
  store i32 1, i32* %quiet, align 4, !tbaa !137
  %inc78 = add nsw i32 %i.0, 1
  br label %if.end139

if.else79:                                        ; preds = %if.else72
  %idxprom80 = sext i32 %i.0 to i64
  %arrayidx81 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom80
  %10 = load i8*, i8** %arrayidx81, align 8, !tbaa !77
  %call82 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14.33, i64 0, i64 0)) #23
  %cmp83 = icmp eq i32 %call82, 0
  br i1 %cmp83, label %if.then84, label %if.else97

if.then84:                                        ; preds = %if.else79
  %add85 = add nsw i32 %i.0, 1
  %cmp86 = icmp sge i32 %add85, %argc
  br i1 %cmp86, label %if.then87, label %if.end88

if.then87:                                        ; preds = %if.then84
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15.34, i64 0, i64 0), i32 %myRank)
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then84
  %add89 = add nsw i32 %i.0, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom90
  %11 = load i8*, i8** %arrayidx91, align 8, !tbaa !77
  %balance = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 8
  %call92 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %11, i32* %balance)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end95, label %if.then94

if.then94:                                        ; preds = %if.end88
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.16.35, i64 0, i64 0), i32 %myRank)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end88
  %add96 = add nsw i32 %i.0, 2
  br label %if.end138

if.else97:                                        ; preds = %if.else79
  %idxprom98 = sext i32 %i.0 to i64
  %arrayidx99 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom98
  %12 = load i8*, i8** %arrayidx99, align 8, !tbaa !77
  %call100 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17.36, i64 0, i64 0)) #23
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then102, label %if.else115

if.then102:                                       ; preds = %if.else97
  %add103 = add nsw i32 %i.0, 1
  %cmp104 = icmp sge i32 %add103, %argc
  br i1 %cmp104, label %if.then105, label %if.end106

if.then105:                                       ; preds = %if.then102
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18.37, i64 0, i64 0), i32 %myRank)
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %if.then102
  %add107 = add nsw i32 %i.0, 1
  %idxprom108 = sext i32 %add107 to i64
  %arrayidx109 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom108
  %13 = load i8*, i8** %arrayidx109, align 8, !tbaa !77
  %cost = getelementptr inbounds %struct.cmdLineOpts, %struct.cmdLineOpts* %opts, i32 0, i32 7
  %call110 = call i32 @_Z8StrToIntIiEiPKcPT_(i8* %13, i32* %cost)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end106
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.19.38, i64 0, i64 0), i32 %myRank)
  br label %if.end113

if.end113:                                        ; preds = %if.then112, %if.end106
  %add114 = add nsw i32 %i.0, 2
  br label %if.end137

if.else115:                                       ; preds = %if.else97
  %idxprom116 = sext i32 %i.0 to i64
  %arrayidx117 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom116
  %14 = load i8*, i8** %arrayidx117, align 8, !tbaa !77
  %call118 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0)) #23
  %cmp119 = icmp eq i32 %call118, 0
  br i1 %cmp119, label %if.then120, label %if.else122

if.then120:                                       ; preds = %if.else115
  call void @_ZL10ParseErrorPKci(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0), i32 %myRank)
  %inc121 = add nsw i32 %i.0, 1
  br label %if.end136

if.else122:                                       ; preds = %if.else115
  %idxprom123 = sext i32 %i.0 to i64
  %arrayidx124 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom123
  %15 = load i8*, i8** %arrayidx124, align 8, !tbaa !77
  %call125 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0)) #23
  %cmp126 = icmp eq i32 %call125, 0
  br i1 %cmp126, label %if.then127, label %if.else129

if.then127:                                       ; preds = %if.else122
  %arrayidx128 = getelementptr inbounds i8*, i8** %argv, i64 0
  %16 = load i8*, i8** %arrayidx128, align 8, !tbaa !77
  call void @_ZL23PrintCommandLineOptionsPci(i8* %16, i32 %myRank)
  call void @exit(i32 0) #19
  unreachable

if.else129:                                       ; preds = %if.else122
  %17 = bitcast [80 x i8]* %msg to i8*
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %17) #14
  %arrayidx130 = getelementptr inbounds i8*, i8** %argv, i64 0
  %18 = load i8*, i8** %arrayidx130, align 8, !tbaa !77
  call void @_ZL23PrintCommandLineOptionsPci(i8* %18, i32 %myRank)
  %arraydecay = getelementptr inbounds [80 x i8], [80 x i8]* %msg, i64 0, i64 0
  %idxprom131 = sext i32 %i.0 to i64
  %arrayidx132 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom131
  %19 = load i8*, i8** %arrayidx132, align 8, !tbaa !77
  %call133 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.23, i64 0, i64 0), i8* %19) #14
  %arraydecay134 = getelementptr inbounds [80 x i8], [80 x i8]* %msg, i64 0, i64 0
  call void @_ZL10ParseErrorPKci(i8* %arraydecay134, i32 %myRank)
  %20 = bitcast [80 x i8]* %msg to i8*
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %20) #14
  br label %if.end135

if.end135:                                        ; preds = %if.else129
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.then120
  %i.1 = phi i32 [ %inc121, %if.then120 ], [ %i.0, %if.end135 ]
  br label %if.end137

if.end137:                                        ; preds = %if.end136, %if.end113
  %i.2 = phi i32 [ %add114, %if.end113 ], [ %i.1, %if.end136 ]
  br label %if.end138

if.end138:                                        ; preds = %if.end137, %if.end95
  %i.3 = phi i32 [ %add96, %if.end95 ], [ %i.2, %if.end137 ]
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then77
  %i.4 = phi i32 [ %inc78, %if.then77 ], [ %i.3, %if.end138 ]
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.then71
  %i.5 = phi i32 [ %inc, %if.then71 ], [ %i.4, %if.end139 ]
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end64
  %i.6 = phi i32 [ %add65, %if.end64 ], [ %i.5, %if.end140 ]
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.end46
  %i.7 = phi i32 [ %add47, %if.end46 ], [ %i.6, %if.end141 ]
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end28
  %i.8 = phi i32 [ %add29, %if.end28 ], [ %i.7, %if.end142 ]
  br label %if.end144

if.end144:                                        ; preds = %if.end143, %if.end11
  %i.9 = phi i32 [ %add12, %if.end11 ], [ %i.8, %if.end143 ]
  br label %while.cond, !llvm.loop !220

while.end:                                        ; preds = %while.cond
  br label %if.end145

if.end145:                                        ; preds = %while.end, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare dso_local i32 @strcmp(i8*, i8*) #16

; Function Attrs: uwtable
define internal void @_ZL10ParseErrorPKci(i8* %message, i32 %myRank) #0 {
entry:
  %cmp = icmp eq i32 %myRank, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0), i8* %message)
  call void @exit(i32 -1) #19
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i32 @_Z8StrToIntIiEiPKcPT_(i8* %token, i32* %retVal) #1 comdat {
entry:
  %endptr = alloca i8*, align 8
  %0 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #14
  %cmp = icmp eq i8* %token, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i64 @strtol(i8* %token, i8** %endptr, i32 10) #14
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %retVal, align 4, !tbaa !34
  %1 = load i8*, i8** %endptr, align 8, !tbaa !77
  %cmp1 = icmp ne i8* %1, %token
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %2 = load i8*, i8** %endptr, align 8, !tbaa !77
  %3 = load i8, i8* %2, align 1, !tbaa !221
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv2, 32
  br i1 %cmp3, label %if.then6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load i8*, i8** %endptr, align 8, !tbaa !77
  %5 = load i8, i8* %4, align 1, !tbaa !221
  %conv4 = sext i8 %5 to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %lor.lhs.false, %land.lhs.true
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.then6 ], [ 0, %if.else ]
  %6 = bitcast i8** %endptr to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #14
  ret i32 %retval.0
}

; Function Attrs: uwtable
define internal void @_ZL23PrintCommandLineOptionsPci(i8* %execname, i32 %myRank) #0 {
entry:
  %cmp = icmp eq i32 %myRank, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i64 0, i64 0), i8* %execname)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.43, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.44, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.45, i64 0, i64 0))
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.46, i64 0, i64 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.47, i64 0, i64 0))
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.48, i64 0, i64 0))
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.49, i64 0, i64 0))
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.50, i64 0, i64 0))
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.51, i64 0, i64 0))
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.52, i64 0, i64 0))
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.53, i64 0, i64 0))
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #6

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #6

; Function Attrs: uwtable
define dso_local void @_Z25VerifyAndWriteFinalOutputdR6Domainii(double %elapsed_time, %class.Domain* nonnull align 8 dereferenceable(1312) %locDom, i32 %nx, i32 %numRanks) #0 {
entry:
  %agg.tmp = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp32 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp65 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp73 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp81 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp88 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp94 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp101 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp107 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp114 = alloca %"struct.std::_Setprecision", align 4
  %agg.tmp122 = alloca %"struct.std::_Setprecision", align 4
  %conv = sext i32 %nx to i64
  %mul = fmul double %elapsed_time, 1.000000e+06
  %call = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %locDom)
  %0 = load i32, i32* %call, align 4, !tbaa !34
  %conv1 = sitofp i32 %0 to double
  %div = fdiv double %mul, %conv1
  %mul2 = mul nsw i64 %conv, %conv
  %mul3 = mul nsw i64 %mul2, %conv
  %conv4 = sitofp i64 %mul3 to double
  %div5 = fdiv double %div, %conv4
  %mul6 = fmul double %elapsed_time, 1.000000e+06
  %call7 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %locDom)
  %1 = load i32, i32* %call7, align 4, !tbaa !34
  %conv8 = sitofp i32 %1 to double
  %div9 = fdiv double %mul6, %conv8
  %mul10 = mul nsw i64 %conv, %conv
  %mul11 = mul nsw i64 %mul10, %conv
  %conv12 = sext i32 %numRanks to i64
  %mul13 = mul nsw i64 %mul11, %conv12
  %conv14 = sitofp i64 %mul13 to double
  %div15 = fdiv double %div9, %conv14
  %call16 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0))
  %call17 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i64 0, i64 0))
  %call18 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call17, i32 %nx)
  %call19 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call20 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0))
  %call21 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call20, i32 %numRanks)
  %call22 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call23 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  %call24 = call nonnull align 4 dereferenceable(4) i32* @_ZN6Domain5cycleEv(%class.Domain* %locDom)
  %2 = load i32, i32* %call24, align 4, !tbaa !34
  %call25 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* %call23, i32 %2)
  %call26 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call27 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  %call28 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* @_ZSt4cout, %"class.std::ios_base"* (%"class.std::ios_base"*)* @_ZSt10scientificRSt8ios_base)
  %call29 = call i32 @_ZSt12setprecisioni(i32 6)
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp, i32 0, i32 0
  store i32 %call29, i32* %coerce.dive, align 4
  %coerce.dive30 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp, i32 0, i32 0
  %3 = load i32, i32* %coerce.dive30, align 4
  %call31 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call28, i32 %3)
  %call33 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive34 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp32, i32 0, i32 0
  store i32 %call33, i32* %coerce.dive34, align 4
  %coerce.dive35 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp32, i32 0, i32 0
  %4 = load i32, i32* %coerce.dive35, align 4
  %call36 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %4)
  %call37 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %locDom, i32 0)
  %5 = load double, double* %call37, align 8, !tbaa !45
  %call38 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call36, double %5)
  %call39 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc60, %entry
  %MaxAbsDiff.0 = phi double [ 0.000000e+00, %entry ], [ %MaxAbsDiff.1, %for.inc60 ]
  %TotalAbsDiff.0 = phi double [ 0.000000e+00, %entry ], [ %TotalAbsDiff.1, %for.inc60 ]
  %MaxRelDiff.0 = phi double [ 0.000000e+00, %entry ], [ %MaxRelDiff.1, %for.inc60 ]
  %j.0 = phi i32 [ 0, %entry ], [ %inc61, %for.inc60 ]
  %cmp = icmp slt i32 %j.0, %nx
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  br label %for.end62

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %j.0, 1
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc, %for.body
  %MaxAbsDiff.1 = phi double [ %MaxAbsDiff.0, %for.body ], [ %MaxAbsDiff.2, %for.inc ]
  %TotalAbsDiff.1 = phi double [ %TotalAbsDiff.0, %for.body ], [ %add51, %for.inc ]
  %MaxRelDiff.1 = phi double [ %MaxRelDiff.0, %for.body ], [ %MaxRelDiff.2, %for.inc ]
  %k.0 = phi i32 [ %add, %for.body ], [ %inc, %for.inc ]
  %cmp41 = icmp slt i32 %k.0, %nx
  br i1 %cmp41, label %for.body43, label %for.cond.cleanup42

for.cond.cleanup42:                               ; preds = %for.cond40
  br label %for.end

for.body43:                                       ; preds = %for.cond40
  %mul44 = mul nsw i32 %j.0, %nx
  %add45 = add nsw i32 %mul44, %k.0
  %call46 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %locDom, i32 %add45)
  %6 = load double, double* %call46, align 8, !tbaa !45
  %mul47 = mul nsw i32 %k.0, %nx
  %add48 = add nsw i32 %mul47, %j.0
  %call49 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %locDom, i32 %add48)
  %7 = load double, double* %call49, align 8, !tbaa !45
  %sub = fsub double %6, %7
  %call50 = call double @_Z4FABSd(double %sub)
  %add51 = fadd double %TotalAbsDiff.1, %call50
  %cmp52 = fcmp olt double %MaxAbsDiff.1, %call50
  br i1 %cmp52, label %if.then, label %if.end

if.then:                                          ; preds = %for.body43
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body43
  %MaxAbsDiff.2 = phi double [ %call50, %if.then ], [ %MaxAbsDiff.1, %for.body43 ]
  %mul53 = mul nsw i32 %k.0, %nx
  %add54 = add nsw i32 %mul53, %j.0
  %call55 = call nonnull align 8 dereferenceable(8) double* @_ZN6Domain1eEi(%class.Domain* %locDom, i32 %add54)
  %8 = load double, double* %call55, align 8, !tbaa !45
  %div56 = fdiv double %call50, %8
  %cmp57 = fcmp olt double %MaxRelDiff.1, %div56
  br i1 %cmp57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end
  %MaxRelDiff.2 = phi double [ %div56, %if.then58 ], [ %MaxRelDiff.1, %if.end ]
  br label %for.inc

for.inc:                                          ; preds = %if.end59
  %inc = add nsw i32 %k.0, 1
  br label %for.cond40, !llvm.loop !222

for.end:                                          ; preds = %for.cond.cleanup42
  br label %for.inc60

for.inc60:                                        ; preds = %for.end
  %inc61 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !223

for.end62:                                        ; preds = %for.cond.cleanup
  %call63 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.30, i64 0, i64 0))
  %call64 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0))
  %call66 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive67 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp65, i32 0, i32 0
  store i32 %call66, i32* %coerce.dive67, align 4
  %coerce.dive68 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp65, i32 0, i32 0
  %9 = load i32, i32* %coerce.dive68, align 4
  %call69 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call64, i32 %9)
  %call70 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call69, double %MaxAbsDiff.0)
  %call71 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call72 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0))
  %call74 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive75 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp73, i32 0, i32 0
  store i32 %call74, i32* %coerce.dive75, align 4
  %coerce.dive76 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp73, i32 0, i32 0
  %10 = load i32, i32* %coerce.dive76, align 4
  %call77 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call72, i32 %10)
  %call78 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call77, double %TotalAbsDiff.0)
  %call79 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %call80 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0))
  %call82 = call i32 @_ZSt4setwi(i32 12)
  %coerce.dive83 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp81, i32 0, i32 0
  store i32 %call82, i32* %coerce.dive83, align 4
  %coerce.dive84 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp81, i32 0, i32 0
  %11 = load i32, i32* %coerce.dive84, align 4
  %call85 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call80, i32 %11)
  %call86 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call85, double %MaxRelDiff.0)
  %call87 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call86, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0))
  %vtable = load i8*, i8** bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8**), align 8, !tbaa !141
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %12 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %12, align 8
  %add.ptr = getelementptr inbounds i8, i8* bitcast (%"class.std::basic_ostream"* @_ZSt4cout to i8*), i64 %vbase.offset
  %13 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  call void @_ZNSt8ios_base6unsetfESt13_Ios_Fmtflags(%"class.std::ios_base"* %13, i32 260)
  %call89 = call i32 @_ZSt12setprecisioni(i32 2)
  %coerce.dive90 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp88, i32 0, i32 0
  store i32 %call89, i32* %coerce.dive90, align 4
  %coerce.dive91 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp88, i32 0, i32 0
  %14 = load i32, i32* %coerce.dive91, align 4
  %call92 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %14)
  %call93 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i64 0, i64 0))
  %call95 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive96 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp94, i32 0, i32 0
  store i32 %call95, i32* %coerce.dive96, align 4
  %coerce.dive97 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp94, i32 0, i32 0
  %15 = load i32, i32* %coerce.dive97, align 4
  %call98 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call93, i32 %15)
  %call99 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call98, double %elapsed_time)
  %call100 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %call102 = call i32 @_ZSt12setprecisioni(i32 8)
  %coerce.dive103 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp101, i32 0, i32 0
  store i32 %call102, i32* %coerce.dive103, align 4
  %coerce.dive104 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp101, i32 0, i32 0
  %16 = load i32, i32* %coerce.dive104, align 4
  %call105 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 %16)
  %call106 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0))
  %call108 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive109 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp107, i32 0, i32 0
  store i32 %call108, i32* %coerce.dive109, align 4
  %coerce.dive110 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp107, i32 0, i32 0
  %17 = load i32, i32* %coerce.dive110, align 4
  %call111 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call106, i32 %17)
  %call112 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call111, double %div5)
  %call113 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  %call115 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive116 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp114, i32 0, i32 0
  store i32 %call115, i32* %coerce.dive116, align 4
  %coerce.dive117 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp114, i32 0, i32 0
  %18 = load i32, i32* %coerce.dive117, align 4
  %call118 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call113, i32 %18)
  %call119 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call118, double %elapsed_time)
  %call120 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i64 0, i64 0))
  %call121 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i64 0, i64 0))
  %call123 = call i32 @_ZSt4setwi(i32 10)
  %coerce.dive124 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp122, i32 0, i32 0
  store i32 %call123, i32* %coerce.dive124, align 4
  %coerce.dive125 = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %agg.tmp122, i32 0, i32 0
  %19 = load i32, i32* %coerce.dive125, align 4
  %call126 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call121, i32 %19)
  %div127 = fdiv double 1.000000e+03, %div15
  %call128 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %call126, double %div127)
  %call129 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i64 0, i64 0))
  ret void
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__out, i8* %__s) #7 {
entry:
  %tobool = icmp ne i8* %__s, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %0 = bitcast %"class.std::basic_ostream"* %__out to i8**
  %vtable = load i8*, i8** %0, align 8, !tbaa !141
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %1 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %1, align 8
  %2 = bitcast %"class.std::basic_ostream"* %__out to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %vbase.offset
  %3 = bitcast i8* %add.ptr to %"class.std::basic_ios"*
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %3, i32 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call i64 @_ZNSt11char_traitsIcE6lengthEPKc(i8* %__s)
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__out, i8* %__s, i64 %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret %"class.std::basic_ostream"* %__out
}

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSt8ios_baseS0_E(%"class.std::basic_ostream"* %this, %"class.std::ios_base"* (%"class.std::ios_base"*)* %__pf) #0 align 2 {
entry:
  %0 = bitcast %"class.std::basic_ostream"* %this to i8**
  %vtable = load i8*, i8** %0, align 8, !tbaa !141
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %1 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %1, align 8
  %2 = bitcast %"class.std::basic_ostream"* %this to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %vbase.offset
  %3 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %call = call nonnull align 8 dereferenceable(216) %"class.std::ios_base"* %__pf(%"class.std::ios_base"* nonnull align 8 dereferenceable(216) %3)
  ret %"class.std::basic_ostream"* %this
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZSt12setprecisioni(i32 %__n) #10 comdat {
entry:
  %retval = alloca %"struct.std::_Setprecision", align 4
  %_M_n = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %retval, i32 0, i32 0
  store i32 %__n, i32* %_M_n, align 4, !tbaa !224
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %retval, i32 0, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St13_Setprecision(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i32 %__f.coerce) #7 {
entry:
  %__f = alloca %"struct.std::_Setprecision", align 4
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %__f, i32 0, i32 0
  store i32 %__f.coerce, i32* %coerce.dive, align 4
  %0 = bitcast %"class.std::basic_ostream"* %__os to i8**
  %vtable = load i8*, i8** %0, align 8, !tbaa !141
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %1 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %1, align 8
  %2 = bitcast %"class.std::basic_ostream"* %__os to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %vbase.offset
  %3 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %_M_n = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %__f, i32 0, i32 0
  %4 = load i32, i32* %_M_n, align 4, !tbaa !224
  %conv = sext i32 %4 to i64
  %call = call i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* %3, i64 %conv)
  ret %"class.std::basic_ostream"* %__os
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local i32 @_ZSt4setwi(i32 %__n) #10 comdat {
entry:
  %retval = alloca %"struct.std::_Setprecision", align 4
  %_M_n = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %retval, i32 0, i32 0
  store i32 %__n, i32* %_M_n, align 4, !tbaa !226
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %retval, i32 0, i32 0
  %0 = load i32, i32* %coerce.dive, align 4
  ret i32 %0
}

; Function Attrs: inlinehint uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St5_Setw(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %__os, i32 %__f.coerce) #7 {
entry:
  %__f = alloca %"struct.std::_Setprecision", align 4
  %coerce.dive = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %__f, i32 0, i32 0
  store i32 %__f.coerce, i32* %coerce.dive, align 4
  %0 = bitcast %"class.std::basic_ostream"* %__os to i8**
  %vtable = load i8*, i8** %0, align 8, !tbaa !141
  %vbase.offset.ptr = getelementptr i8, i8* %vtable, i64 -24
  %1 = bitcast i8* %vbase.offset.ptr to i64*
  %vbase.offset = load i64, i64* %1, align 8
  %2 = bitcast %"class.std::basic_ostream"* %__os to i8*
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %vbase.offset
  %3 = bitcast i8* %add.ptr to %"class.std::ios_base"*
  %_M_n = getelementptr inbounds %"struct.std::_Setprecision", %"struct.std::_Setprecision"* %__f, i32 0, i32 0
  %4 = load i32, i32* %_M_n, align 4, !tbaa !226
  %conv = sext i32 %4 to i64
  %call = call i64 @_ZNSt8ios_base5widthEl(%"class.std::ios_base"* %3, i64 %conv)
  ret %"class.std::basic_ostream"* %__os
}

; Function Attrs: uwtable
define available_externally dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEd(%"class.std::basic_ostream"* %this, double %__f) #0 align 2 {
entry:
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* %this, double %__f)
  ret %"class.std::basic_ostream"* %call
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt8ios_base5widthEl(%"class.std::ios_base"* %this, i64 %__wide) #1 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 2
  %0 = load i64, i64* %_M_width, align 8, !tbaa !228
  %_M_width2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 2
  store i64 %__wide, i64* %_M_width2, align 8, !tbaa !228
  ret i64 %0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local i64 @_ZNSt8ios_base9precisionEl(%"class.std::ios_base"* %this, i64 %__prec) #1 comdat align 2 {
entry:
  %_M_precision = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 1
  %0 = load i64, i64* %_M_precision, align 8, !tbaa !229
  %_M_precision2 = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %this, i32 0, i32 1
  store i64 %__prec, i64* %_M_precision2, align 8, !tbaa !229
  ret i64 %0
}

; Function Attrs: uwtable
define available_externally dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %__state) #0 align 2 {
entry:
  %call = call i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this)
  %call2 = call i32 @_ZStorSt12_Ios_IostateS_(i32 %call, i32 %__state)
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* %this, i32 %call2)
  ret void
}

; Function Attrs: nounwind uwtable
define available_externally dso_local i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(%"class.std::basic_ios"* %this) #1 align 2 {
entry:
  %0 = bitcast %"class.std::basic_ios"* %this to %"class.std::ios_base"*
  %_M_streambuf_state = getelementptr inbounds %"class.std::ios_base", %"class.std::ios_base"* %0, i32 0, i32 5
  %1 = load i32, i32* %_M_streambuf_state, align 8, !tbaa !230
  ret i32 %1
}

; Function Attrs: uwtable
define dso_local void @_Z11DumpToVisitR6Domainiii(%class.Domain* nonnull align 8 dereferenceable(1312) %domain, i32 %numFiles, i32 %myRank, i32 %numRanks) #0 {
entry:
  %cmp = icmp eq i32 %myRank, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.55, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

attributes #0 = { uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nobuiltin allocsize(0) "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { inlinehint uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noinline noreturn nounwind }
attributes #9 = { nobuiltin nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind }
attributes #15 = { norecurse uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #16 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { nounwind readnone }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }
attributes #22 = { allocsize(0) }
attributes #23 = { nounwind readonly }

!llvm.ident = !{!0, !0, !0, !0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 11.0.0"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !9, i64 392}
!3 = !{!"_ZTS6Domain", !4, i64 0, !4, i64 24, !4, i64 48, !4, i64 72, !4, i64 96, !4, i64 120, !4, i64 144, !4, i64 168, !4, i64 192, !4, i64 216, !4, i64 240, !4, i64 264, !4, i64 288, !5, i64 312, !5, i64 336, !5, i64 360, !6, i64 384, !6, i64 388, !9, i64 392, !9, i64 400, !9, i64 408, !5, i64 416, !5, i64 440, !5, i64 464, !5, i64 488, !5, i64 512, !5, i64 536, !5, i64 560, !5, i64 584, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640, !9, i64 648, !9, i64 656, !9, i64 664, !9, i64 672, !4, i64 680, !4, i64 704, !4, i64 728, !4, i64 752, !4, i64 776, !4, i64 800, !4, i64 824, !4, i64 848, !4, i64 872, !4, i64 896, !4, i64 920, !4, i64 944, !4, i64 968, !10, i64 992, !10, i64 1000, !10, i64 1008, !10, i64 1016, !10, i64 1024, !10, i64 1032, !10, i64 1040, !10, i64 1048, !10, i64 1056, !10, i64 1064, !10, i64 1072, !10, i64 1080, !10, i64 1088, !10, i64 1096, !10, i64 1104, !10, i64 1112, !10, i64 1120, !10, i64 1128, !10, i64 1136, !10, i64 1144, !10, i64 1152, !6, i64 1160, !10, i64 1168, !10, i64 1176, !10, i64 1184, !10, i64 1192, !10, i64 1200, !10, i64 1208, !10, i64 1216, !6, i64 1224, !6, i64 1228, !6, i64 1232, !6, i64 1236, !6, i64 1240, !6, i64 1244, !6, i64 1248, !6, i64 1252, !6, i64 1256, !6, i64 1260, !6, i64 1264, !6, i64 1268, !9, i64 1272, !9, i64 1280, !6, i64 1288, !6, i64 1292, !6, i64 1296, !6, i64 1300, !6, i64 1304, !6, i64 1308}
!4 = !{!"_ZTSSt6vectorIdSaIdEE"}
!5 = !{!"_ZTSSt6vectorIiSaIiEE"}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"any pointer", !7, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!3, !9, i64 400}
!12 = !{!3, !9, i64 408}
!13 = !{!3, !10, i64 992}
!14 = !{!3, !10, i64 1000}
!15 = !{!3, !10, i64 1008}
!16 = !{!3, !10, i64 1016}
!17 = !{!3, !10, i64 1024}
!18 = !{!3, !10, i64 1032}
!19 = !{!3, !10, i64 1040}
!20 = !{!3, !10, i64 1048}
!21 = !{!3, !10, i64 1056}
!22 = !{!3, !10, i64 1064}
!23 = !{!3, !10, i64 1072}
!24 = !{!3, !10, i64 1080}
!25 = !{!3, !10, i64 1088}
!26 = !{!3, !10, i64 1096}
!27 = !{!3, !10, i64 1104}
!28 = !{!3, !10, i64 1112}
!29 = !{!3, !10, i64 1120}
!30 = !{!3, !10, i64 1128}
!31 = !{!3, !10, i64 1136}
!32 = !{!3, !9, i64 1272}
!33 = !{!3, !9, i64 1280}
!34 = !{!6, !6, i64 0}
!35 = !{!3, !6, i64 1240}
!36 = !{!3, !6, i64 1224}
!37 = !{!3, !6, i64 1228}
!38 = !{!3, !6, i64 1232}
!39 = !{!3, !6, i64 1236}
!40 = !{!3, !6, i64 1244}
!41 = !{!3, !6, i64 1248}
!42 = !{!3, !6, i64 1252}
!43 = !{!3, !6, i64 1256}
!44 = !{!3, !6, i64 1260}
!45 = !{!10, !10, i64 0}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !47}
!49 = distinct !{!49, !47}
!50 = distinct !{!50, !47}
!51 = distinct !{!51, !47}
!52 = distinct !{!52, !47}
!53 = distinct !{!53, !47}
!54 = distinct !{!54, !47}
!55 = !{!3, !6, i64 1264}
!56 = !{!3, !6, i64 1268}
!57 = !{!3, !6, i64 1288}
!58 = !{!3, !6, i64 1292}
!59 = !{!3, !6, i64 1296}
!60 = !{!3, !6, i64 1300}
!61 = !{!3, !6, i64 1304}
!62 = !{!3, !6, i64 1308}
!63 = distinct !{!63, !47}
!64 = distinct !{!64, !47}
!65 = distinct !{!65, !47}
!66 = distinct !{!66, !47}
!67 = distinct !{!67, !47}
!68 = distinct !{!68, !47}
!69 = distinct !{!69, !47}
!70 = distinct !{!70, !47}
!71 = distinct !{!71, !47}
!72 = distinct !{!72, !47}
!73 = distinct !{!73, !47}
!74 = distinct !{!74, !47}
!75 = distinct !{!75, !47}
!76 = distinct !{!76, !47}
!77 = !{!9, !9, i64 0}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = distinct !{!81, !47}
!82 = distinct !{!82, !47}
!83 = distinct !{!83, !47}
!84 = distinct !{!84, !47}
!85 = distinct !{!85, !47}
!86 = distinct !{!86, !47}
!87 = distinct !{!87, !47}
!88 = distinct !{!88, !47}
!89 = distinct !{!89, !47}
!90 = distinct !{!90, !47}
!91 = !{!92, !9, i64 0}
!92 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !93, i64 0}
!93 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !9, i64 0, !9, i64 8, !9, i64 16}
!94 = !{!92, !9, i64 8}
!95 = !{!96, !9, i64 0}
!96 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !97, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !9, i64 0, !9, i64 8, !9, i64 16}
!98 = !{!96, !9, i64 8}
!99 = !{!96, !9, i64 16}
!100 = !{!92, !9, i64 16}
!101 = !{!102, !102, i64 0}
!102 = !{!"long", !7, i64 0}
!103 = !{i64 0, i64 8, !77}
!104 = !{!105, !9, i64 0}
!105 = !{!"_ZTSSt13move_iteratorIPiE", !9, i64 0}
!106 = distinct !{!106, !47}
!107 = !{!108, !9, i64 0}
!108 = !{!"_ZTSSt13move_iteratorIPdE", !9, i64 0}
!109 = distinct !{!109, !47}
!110 = !{!97, !9, i64 0}
!111 = !{!97, !9, i64 8}
!112 = !{!97, !9, i64 16}
!113 = !{!93, !9, i64 0}
!114 = !{!93, !9, i64 8}
!115 = !{!93, !9, i64 16}
!116 = distinct !{!116, !47}
!117 = distinct !{!117, !47}
!118 = distinct !{!118, !47}
!119 = distinct !{!119, !47}
!120 = distinct !{!120, !47}
!121 = distinct !{!121, !47}
!122 = distinct !{!122, !47}
!123 = distinct !{!123, !47}
!124 = distinct !{!124, !47}
!125 = distinct !{!125, !47}
!126 = distinct !{!126, !47}
!127 = distinct !{!127, !47}
!128 = !{!3, !9, i64 608}
!129 = !{!3, !9, i64 616}
!130 = !{!3, !9, i64 624}
!131 = !{!132, !6, i64 0}
!132 = !{!"_ZTS11cmdLineOpts", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32}
!133 = !{!132, !6, i64 4}
!134 = !{!132, !6, i64 8}
!135 = !{!132, !6, i64 12}
!136 = !{!132, !6, i64 16}
!137 = !{!132, !6, i64 20}
!138 = !{!132, !6, i64 24}
!139 = !{!132, !6, i64 32}
!140 = !{!132, !6, i64 28}
!141 = !{!142, !142, i64 0}
!142 = !{!"vtable pointer", !8, i64 0}
!143 = distinct !{!143, !47}
!144 = !{!145, !102, i64 0}
!145 = !{!"_ZTS7timeval", !102, i64 0, !102, i64 8}
!146 = !{!145, !102, i64 8}
!147 = !{!148, !148, i64 0}
!148 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!149 = !{!150, !148, i64 24}
!150 = !{!"_ZTSSt8ios_base", !102, i64 8, !102, i64 16, !148, i64 24, !151, i64 28, !151, i64 32, !9, i64 40, !152, i64 48, !7, i64 64, !6, i64 192, !9, i64 200, !153, i64 208}
!151 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!152 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !102, i64 8}
!153 = !{!"_ZTSSt6locale", !9, i64 0}
!154 = distinct !{!154, !47}
!155 = distinct !{!155, !47}
!156 = distinct !{!156, !47}
!157 = distinct !{!157, !47}
!158 = distinct !{!158, !47}
!159 = distinct !{!159, !47}
!160 = distinct !{!160, !47}
!161 = distinct !{!161, !47}
!162 = distinct !{!162, !47}
!163 = distinct !{!163, !47}
!164 = distinct !{!164, !47}
!165 = distinct !{!165, !47}
!166 = distinct !{!166, !47}
!167 = distinct !{!167, !47}
!168 = distinct !{!168, !47}
!169 = distinct !{!169, !47}
!170 = distinct !{!170, !47}
!171 = distinct !{!171, !47}
!172 = distinct !{!172, !47}
!173 = distinct !{!173, !47}
!174 = distinct !{!174, !47}
!175 = distinct !{!175, !47}
!176 = distinct !{!176, !47}
!177 = distinct !{!177, !47}
!178 = distinct !{!178, !47}
!179 = distinct !{!179, !47}
!180 = distinct !{!180, !47}
!181 = distinct !{!181, !47}
!182 = !{!3, !9, i64 656}
!183 = !{!3, !9, i64 664}
!184 = !{!3, !9, i64 672}
!185 = !{!3, !9, i64 632}
!186 = !{!3, !9, i64 640}
!187 = !{!3, !9, i64 648}
!188 = distinct !{!188, !47}
!189 = distinct !{!189, !47}
!190 = distinct !{!190, !47}
!191 = distinct !{!191, !47}
!192 = distinct !{!192, !47}
!193 = distinct !{!193, !47}
!194 = distinct !{!194, !47}
!195 = distinct !{!195, !47}
!196 = distinct !{!196, !47}
!197 = distinct !{!197, !47}
!198 = !{!199, !9, i64 0}
!199 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !9, i64 0}
!200 = distinct !{!200, !47}
!201 = distinct !{!201, !47}
!202 = distinct !{!202, !47}
!203 = distinct !{!203, !47}
!204 = distinct !{!204, !47}
!205 = distinct !{!205, !47}
!206 = distinct !{!206, !47}
!207 = distinct !{!207, !47}
!208 = distinct !{!208, !47}
!209 = distinct !{!209, !47}
!210 = distinct !{!210, !47}
!211 = distinct !{!211, !47}
!212 = distinct !{!212, !47}
!213 = distinct !{!213, !47}
!214 = distinct !{!214, !47}
!215 = distinct !{!215, !47}
!216 = distinct !{!216, !47}
!217 = distinct !{!217, !47}
!218 = distinct !{!218, !47}
!219 = distinct !{!219, !47}
!220 = distinct !{!220, !47}
!221 = !{!7, !7, i64 0}
!222 = distinct !{!222, !47}
!223 = distinct !{!223, !47}
!224 = !{!225, !6, i64 0}
!225 = !{!"_ZTSSt13_Setprecision", !6, i64 0}
!226 = !{!227, !6, i64 0}
!227 = !{!"_ZTSSt5_Setw", !6, i64 0}
!228 = !{!150, !102, i64 16}
!229 = !{!150, !102, i64 8}
!230 = !{!150, !151, i64 32}
