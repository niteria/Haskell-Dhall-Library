{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}

module Examples where

import qualified NeatInterpolation
import qualified Test.Tasty
import qualified Test.Tasty.HUnit
import qualified Util

import Test.Tasty (TestTree)

exampleTests :: TestTree
exampleTests =
    Test.Tasty.testGroup "examples"
        [ Test.Tasty.testGroup "Bool"
            [ Test.Tasty.testGroup "and"
                [ _Bool_and_0
                , _Bool_and_1
                ]
            , Test.Tasty.testGroup "build"
                [ _Bool_build_0
                , _Bool_build_1
                ]
            , Test.Tasty.testGroup "even"
                [ _Bool_even_0
                , _Bool_even_1
                , _Bool_even_2
                , _Bool_even_3
                ]
            , Test.Tasty.testGroup "fold"
                [ _Bool_fold_0
                , _Bool_fold_1
                ]
            , Test.Tasty.testGroup "not"
                [ _Bool_not_0
                , _Bool_not_1
                ]
            , Test.Tasty.testGroup "odd"
                [ _Bool_odd_0
                , _Bool_odd_1
                , _Bool_odd_2
                , _Bool_odd_3
                ]
            , Test.Tasty.testGroup "or"
                [ _Bool_or_0
                , _Bool_or_1
                ]
            , Test.Tasty.testGroup "show"
                [ _Bool_show_0
                , _Bool_show_1
                ]
            ]
        , Test.Tasty.testGroup "Double"
            [ Test.Tasty.testGroup "show"
                [ _Double_show_0
                , _Double_show_1
                ]
            ]
        , Test.Tasty.testGroup "Integer"
            [ Test.Tasty.testGroup "show"
                [ _Integer_show_0
                , _Integer_show_1
                ]
            ]
        , Test.Tasty.testGroup "List"
            [ Test.Tasty.testGroup "all"
                [ _List_all_0
                , _List_all_1
                ]
            , Test.Tasty.testGroup "any"
                [ _List_any_0
                , _List_any_1
                ]
            , Test.Tasty.testGroup "build"
                [ _List_build_0
                , _List_build_1
                ]
            , Test.Tasty.testGroup "concat"
                [ _List_concat_0
                , _List_concat_1
                ]
            , Test.Tasty.testGroup "filter"
                [ _List_filter_0
                , _List_filter_1
                ]
            , Test.Tasty.testGroup "fold"
                [ _List_fold_0
                , _List_fold_1
                , _List_fold_2
                ]
            , Test.Tasty.testGroup "generate"
                [ _List_generate_0
                , _List_generate_1
                ]
            , Test.Tasty.testGroup "head"
                [ _List_head_0
                , _List_head_1
                ]
            , Test.Tasty.testGroup "indexed"
                [ _List_indexed_0
                , _List_indexed_1
                ]
            , Test.Tasty.testGroup "iterate"
                [ _List_iterate_0
                , _List_iterate_1
                ]
            , Test.Tasty.testGroup "last"
                [ _List_last_0
                , _List_last_1
                ]
            , Test.Tasty.testGroup "length"
                [ _List_length_0
                , _List_length_1
                ]
            , Test.Tasty.testGroup "map"
                [ _List_map_0
                , _List_map_1
                ]
            , Test.Tasty.testGroup "null"
                [ _List_null_0
                , _List_null_1
                ]
            , Test.Tasty.testGroup "replicate"
                [ _List_replicate_0
                , _List_replicate_1
                ]
            , Test.Tasty.testGroup "reverse"
                [ _List_reverse_0
                , _List_reverse_1
                ]
            , Test.Tasty.testGroup "shifted"
                [ _List_shifted_0
                , _List_shifted_1
                ]
            , Test.Tasty.testGroup "unzip"
                [ _List_unzip_0
                , _List_unzip_1
                ]
            ]
        , Test.Tasty.testGroup "Monoid"
            [ _Monoid_00
            , _Monoid_01
            , _Monoid_02
            , _Monoid_03
            , _Monoid_04
            , _Monoid_05
            , _Monoid_06
            , _Monoid_07
            , _Monoid_08
            , _Monoid_09
            , _Monoid_10
            ]
        , Test.Tasty.testGroup "Natural"
            [ Test.Tasty.testGroup "build"
                [ _Natural_build_0
                , _Natural_build_1
                ]
            , Test.Tasty.testGroup "enumerate"
                [ _Natural_enumerate_0
                , _Natural_enumerate_1
                ]
            , Test.Tasty.testGroup "even"
                [ _Natural_even_0
                , _Natural_even_1
                ]
            , Test.Tasty.testGroup "fold"
                [ _Natural_fold_0
                , _Natural_fold_1
                , _Natural_fold_2
                ]
            , Test.Tasty.testGroup "isZero"
                [ _Natural_isZero_0
                , _Natural_isZero_1
                ]
            , Test.Tasty.testGroup "odd"
                [ _Natural_odd_0
                , _Natural_odd_1
                ]
            , Test.Tasty.testGroup "product"
                [ _Natural_product_0
                , _Natural_product_1
                ]
            , Test.Tasty.testGroup "show"
                [ _Natural_show_0
                , _Natural_show_1
                ]
            , Test.Tasty.testGroup "sum"
                [ _Natural_sum_0
                , _Natural_sum_1
                ]
            , Test.Tasty.testGroup "toInteger"
                [ _Natural_toInteger_0
                , _Natural_toInteger_1
                ]
            ]
        , Test.Tasty.testGroup "Optional"
            [ Test.Tasty.testGroup "build"
                [ _Optional_build_0
                , _Optional_build_1
                ]
            , Test.Tasty.testGroup "concat"
                [ _Optional_concat_0
                , _Optional_concat_1
                , _Optional_concat_2
                ]
            , Test.Tasty.testGroup "fold"
                [ _Optional_fold_0
                , _Optional_fold_1
                ]
            , Test.Tasty.testGroup "head"
                [ _Optional_head_0
                , _Optional_head_1
                , _Optional_head_2
                ]
            , Test.Tasty.testGroup "last"
                [ _Optional_last_0
                , _Optional_last_1
                , _Optional_last_2
                ]
            , Test.Tasty.testGroup "map"
                [ _Optional_map_0
                , _Optional_map_1
                ]
            , Test.Tasty.testGroup "toList"
                [ _Optional_toList_0
                , _Optional_toList_1
                ]
            , Test.Tasty.testGroup "unzip"
                [ _Optional_unzip_0
                , _Optional_unzip_1
                ]
            ]
        , Test.Tasty.testGroup "Text"
            [ Test.Tasty.testGroup "concat"
                [ _Text_concat_0
                , _Text_concat_1
                ]
            ]
        ]

_Bool_and_0 :: TestTree
_Bool_and_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/and ([True, False, True] : List Bool)
|]
    Util.assertNormalizesTo e "False" )

_Bool_and_1 :: TestTree
_Bool_and_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/and ([] : List Bool)
|]
    Util.assertNormalizesTo e "True" )

_Bool_build_0 :: TestTree
_Bool_build_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/build (λ(bool : Type) → λ(true : bool) → λ(false : bool) → true)
|]
    Util.assertNormalizesTo e "True" )

_Bool_build_1 :: TestTree
_Bool_build_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/build (λ(bool : Type) → λ(true : bool) → λ(false : bool) → false)
|]
    Util.assertNormalizesTo e "False" )

_Bool_even_0 :: TestTree
_Bool_even_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/even ([False, True, False] : List Bool)
|]
    Util.assertNormalizesTo e "True" )

_Bool_even_1 :: TestTree
_Bool_even_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/even ([False, True] : List Bool)
|]
    Util.assertNormalizesTo e "False" )

_Bool_even_2 :: TestTree
_Bool_even_2 = Test.Tasty.HUnit.testCase "Example #2" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/even ([False] : List Bool)
|]
    Util.assertNormalizesTo e "False" )

_Bool_even_3 :: TestTree
_Bool_even_3 = Test.Tasty.HUnit.testCase "Example #3" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/even ([] : List Bool)
|]
    Util.assertNormalizesTo e "True" )

_Bool_fold_0 :: TestTree
_Bool_fold_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/fold True Integer 0 1
|]
    Util.assertNormalizesTo e "0" )

_Bool_fold_1 :: TestTree
_Bool_fold_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/fold False Integer 0 1
|]
    Util.assertNormalizesTo e "1" )

_Bool_not_0 :: TestTree
_Bool_not_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/not True
|]
    Util.assertNormalizesTo e "False" )

_Bool_not_1 :: TestTree
_Bool_not_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/not False
|]
    Util.assertNormalizesTo e "True" )

_Bool_odd_0 :: TestTree
_Bool_odd_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/odd ([True, False, True] : List Bool)
|]
    Util.assertNormalizesTo e "False" )

_Bool_odd_1 :: TestTree
_Bool_odd_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/odd ([True, False] : List Bool)
|]
    Util.assertNormalizesTo e "True" )

_Bool_odd_2 :: TestTree
_Bool_odd_2 = Test.Tasty.HUnit.testCase "Example #2" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/odd ([True] : List Bool)
|]
    Util.assertNormalizesTo e "True" )

_Bool_odd_3 :: TestTree
_Bool_odd_3 = Test.Tasty.HUnit.testCase "Example #3" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/odd ([] : List Bool)
|]
    Util.assertNormalizesTo e "False" )

_Bool_or_0 :: TestTree
_Bool_or_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/or ([True, False, True] : List Bool)
|]
    Util.assertNormalizesTo e "True" )

_Bool_or_1 :: TestTree
_Bool_or_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/or ([] : List Bool)
|]
    Util.assertNormalizesTo e "False" )

_Bool_show_0 :: TestTree
_Bool_show_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/show True
|]
    Util.assertNormalizesTo e "\"True\"" )

_Bool_show_1 :: TestTree
_Bool_show_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Bool/show False
|]
    Util.assertNormalizesTo e "\"False\"" )

_Double_show_0 :: TestTree
_Double_show_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Double/show -3.1
|]
    Util.assertNormalizesTo e "\"-3.1\"" )

_Double_show_1 :: TestTree
_Double_show_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Double/show 0.4
|]
    Util.assertNormalizesTo e "\"0.4\"" )

_Integer_show_0 :: TestTree
_Integer_show_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Integer/show -3
|]
    Util.assertNormalizesTo e "\"-3\"" )

_Integer_show_1 :: TestTree
_Integer_show_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Integer/show 0
|]
    Util.assertNormalizesTo e "\"0\"" )

_List_all_0 :: TestTree
_List_all_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/all Natural Natural/even ([+2, +3, +5] : List Natural)
|]
    Util.assertNormalizesTo e "False" )

_List_all_1 :: TestTree
_List_all_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/all Natural Natural/even ([] : List Natural)
|]
    Util.assertNormalizesTo e "True" )

_List_any_0 :: TestTree
_List_any_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/any Natural Natural/even ([+2, +3, +5] : List Natural)
|]
    Util.assertNormalizesTo e "True" )

_List_any_1 :: TestTree
_List_any_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/any Natural Natural/even ([] : List Natural)
|]
    Util.assertNormalizesTo e "False" )

_List_build_0 :: TestTree
_List_build_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/build
Text
(   λ(list : Type)
→   λ(cons : Text → list → list)
→   λ(nil : list)
→   cons "ABC" (cons "DEF" nil)
)
|]
    Util.assertNormalizesTo e "[\"ABC\", \"DEF\"] : List Text" )

_List_build_1 :: TestTree
_List_build_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/build
Text
(   λ(list : Type)
→   λ(cons : Text → list → list)
→   λ(nil : list)
→   nil
)
|]
    Util.assertNormalizesTo e "[] : List Text" )

_List_concat_0 :: TestTree
_List_concat_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/concat Integer
(   [   [0, 1, 2]    : List Integer
    ,   [3, 4]       : List Integer
    ,   [5, 6, 7, 8] : List Integer
    ]   : List (List Integer)
)
|]
    Util.assertNormalizesTo e "[0, 1, 2, 3, 4, 5, 6, 7, 8] : List Integer" )

_List_concat_1 :: TestTree
_List_concat_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/concat Integer
(   [   [] : List Integer
    ,   [] : List Integer
    ,   [] : List Integer
    ]   : List (List Integer)
)
|]
    Util.assertNormalizesTo e "[] : List Integer" )

_List_filter_0 :: TestTree
_List_filter_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/filter Natural Natural/even ([+2, +3, +5] : List Natural)
|]
    Util.assertNormalizesTo e "[+2] : List Natural" )

_List_filter_1 :: TestTree
_List_filter_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/filter Natural Natural/odd ([+2, +3, +5] : List Natural)
|]
    Util.assertNormalizesTo e "[+3, +5] : List Natural" )

_List_fold_0 :: TestTree
_List_fold_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
    ./Prelude/List/fold
    Natural
    ([+2, +3, +5] : List Natural)
    Natural
    (λ(x : Natural) → λ(y : Natural) → x + y)
    +0
|]
    Util.assertNormalizesTo e "+10" )

_List_fold_1 :: TestTree
_List_fold_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
    λ(nil : Natural)
→   ./Prelude/List/fold
    Natural
    ([+2, +3, +5] : List Natural)
    Natural
    (λ(x : Natural) → λ(y : Natural) → x + y)
    nil
|]
    Util.assertNormalizesTo e "λ(nil : Natural) → +2 + +3 + +5 + nil" )

_List_fold_2 :: TestTree
_List_fold_2 = Test.Tasty.HUnit.testCase "Example #2" (do
    e <- Util.code [NeatInterpolation.text|
    λ(list : Type)
→   λ(cons : Natural → list → list)
→   λ(nil : list)
→   ./Prelude/List/fold Natural ([+2, +3, +5] : List Natural) list cons nil
|]
    Util.assertNormalizesTo e "λ(list : Type) → λ(cons : Natural → list → list) → λ(nil : list) → cons +2 (cons +3 (cons +5 nil))" )

_List_generate_0 :: TestTree
_List_generate_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/generate +5 Bool Natural/even
|]
    Util.assertNormalizesTo e "[True, False, True, False, True] : List Bool" )

_List_generate_1 :: TestTree
_List_generate_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/generate +0 Bool Natural/even
|]
    Util.assertNormalizesTo e "[] : List Bool" )

_List_head_0 :: TestTree
_List_head_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/head Integer ([0, 1, 2] : List Integer)
|]
    Util.assertNormalizesTo e "[0] : Optional Integer" )

_List_head_1 :: TestTree
_List_head_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/head Integer ([] : List Integer)
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_List_indexed_0 :: TestTree
_List_indexed_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/indexed Bool ([True, False, True] : List Bool)
|]
    Util.assertNormalizesTo e "[{ index = +0, value = True }, { index = +1, value = False }, { index = +2, value = True }] : List { index : Natural, value : Bool }" )

_List_indexed_1 :: TestTree
_List_indexed_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/indexed Bool ([] : List Bool)
|]
    Util.assertNormalizesTo e "[] : List { index : Natural, value : Bool }" )

_List_iterate_0 :: TestTree
_List_iterate_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/iterate +10 Natural (λ(x : Natural) → x * +2) +1
|]
    Util.assertNormalizesTo e "[+1, +2, +4, +8, +16, +32, +64, +128, +256, +512] : List Natural" )

_List_iterate_1 :: TestTree
_List_iterate_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/iterate +0 Natural (λ(x : Natural) → x * +2) +1
|]
    Util.assertNormalizesTo e "[] : List Natural" )

_List_last_0 :: TestTree
_List_last_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/last Integer ([0, 1, 2] : List Integer)
|]
    Util.assertNormalizesTo e "[2] : Optional Integer" )

_List_last_1 :: TestTree
_List_last_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/last Integer ([] : List Integer)
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_List_length_0 :: TestTree
_List_length_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/length Integer ([0, 1, 2] : List Integer)
|]
    Util.assertNormalizesTo e "+3" )

_List_length_1 :: TestTree
_List_length_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/length Integer ([] : List Integer)
|]
    Util.assertNormalizesTo e "+0" )

_List_map_0 :: TestTree
_List_map_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/map Natural Bool Natural/even ([+2, +3, +5] : List Natural)
|]
    Util.assertNormalizesTo e "[True, False, False] : List Bool" )

_List_map_1 :: TestTree
_List_map_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/map Natural Bool Natural/even ([] : List Natural)
|]
    Util.assertNormalizesTo e "[] : List Bool" )

_List_null_0 :: TestTree
_List_null_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/null Integer ([0, 1, 2] : List Integer)
|]
    Util.assertNormalizesTo e "False" )

_List_null_1 :: TestTree
_List_null_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/null Integer ([] : List Integer)
|]
    Util.assertNormalizesTo e "True" )

_List_replicate_0 :: TestTree
_List_replicate_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/replicate +9 Integer 1
|]
    Util.assertNormalizesTo e "[1, 1, 1, 1, 1, 1, 1, 1, 1] : List Integer" )

_List_replicate_1 :: TestTree
_List_replicate_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/replicate +0 Integer 1
|]
    Util.assertNormalizesTo e "[] : List Integer" )

_List_reverse_0 :: TestTree
_List_reverse_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/reverse Integer ([0, 1, 2] : List Integer)
|]
    Util.assertNormalizesTo e "[2, 1, 0] : List Integer" )

_List_reverse_1 :: TestTree
_List_reverse_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/reverse Integer ([] : List Integer)
|]
    Util.assertNormalizesTo e "[] : List Integer" )

_List_shifted_0 :: TestTree
_List_shifted_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/shifted
Bool
(   [   [   { index = +0, value = True  }
        ,   { index = +1, value = True  }
        ,   { index = +2, value = True  }
        ]   : List { index : Natural, value : Bool }
    ,   [   { index = +0, value = False }
        ,   { index = +1, value = False }
        ]   : List { index : Natural, value : Bool }
    ,   [   { index = +0, value = True  }
        ,   { index = +1, value = True  }
        ,   { index = +2, value = True  }
        ,   { index = +3, value = True  }
        ]   : List { index : Natural, value : Bool }
    ]   : List (List { index : Natural, value : Bool })
)
|]
    Util.assertNormalizesTo e "[{ index = +0, value = True }, { index = +1, value = True }, { index = +2, value = True }, { index = +3, value = False }, { index = +4, value = False }, { index = +5, value = True }, { index = +6, value = True }, { index = +7, value = True }, { index = +8, value = True }] : List { index : Natural, value : Bool }" )

_List_shifted_1 :: TestTree
_List_shifted_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/shifted Bool ([] : List (List { index : Natural, value : Bool }))
|]
    Util.assertNormalizesTo e "[] : List { index : Natural, value : Bool }" )

_List_unzip_0 :: TestTree
_List_unzip_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/unzip
Text
Bool
(   [   { _1 = "ABC", _2 = True  }
    ,   { _1 = "DEF", _2 = False }
    ,   { _1 = "GHI", _2 = True  }
    ]   : List { _1 : Text, _2 : Bool }
)
|]
    Util.assertNormalizesTo e "{ _1 = [\"ABC\", \"DEF\", \"GHI\"] : List Text, _2 = [True, False, True] : List Bool }" )

_List_unzip_1 :: TestTree
_List_unzip_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/List/unzip Text Bool ([] : List { _1 : Text, _2 : Bool })
|]
    Util.assertNormalizesTo e "{ _1 = [] : List Text, _2 = [] : List Bool }" )

_Monoid_00 :: TestTree
_Monoid_00 = Test.Tasty.HUnit.testCase "Example #0"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Bool/and
    : ./Prelude/Monoid Bool
|] )

_Monoid_01 :: TestTree
_Monoid_01 = Test.Tasty.HUnit.testCase "Example #1"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Bool/or
    : ./Prelude/Monoid Bool
|] )

_Monoid_02 :: TestTree
_Monoid_02 = Test.Tasty.HUnit.testCase "Example #2"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Bool/even
    : ./Prelude/Monoid Bool
|] )

_Monoid_03 :: TestTree
_Monoid_03 = Test.Tasty.HUnit.testCase "Example #3"
    (Util.assertTypeChecks[NeatInterpolation.text|
./Prelude/Bool/odd
    : ./Prelude/Monoid Bool
|] )

_Monoid_04 :: TestTree
_Monoid_04 = Test.Tasty.HUnit.testCase "Example #4"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/List/concat
    : ∀(a : Type) → ./Prelude/Monoid (List a)
|] )

_Monoid_05 :: TestTree
_Monoid_05 = Test.Tasty.HUnit.testCase "Example #5"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/List/shifted
    : ∀(a : Type) → ./Prelude/Monoid (List { index : Natural, value : a })
|] )

_Monoid_06 :: TestTree
_Monoid_06 = Test.Tasty.HUnit.testCase "Example #6"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Natural/sum
    : ./Prelude/Monoid Natural
|] )

_Monoid_07 :: TestTree
_Monoid_07 = Test.Tasty.HUnit.testCase "Example #7"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Natural/product
    : ./Prelude/Monoid Natural
|] )

_Monoid_08 :: TestTree
_Monoid_08 = Test.Tasty.HUnit.testCase "Example #8"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Optional/head
    : ∀(a : Type) → ./Prelude/Monoid (Optional a)
|] )

_Monoid_09 :: TestTree
_Monoid_09 = Test.Tasty.HUnit.testCase "Example #9"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Optional/last
    : ∀(a : Type) → ./Prelude/Monoid (Optional a)
|] )

_Monoid_10 :: TestTree
_Monoid_10 = Test.Tasty.HUnit.testCase "Example #10"
    (Util.assertTypeChecks [NeatInterpolation.text|
./Prelude/Text/concat
    : ./Prelude/Monoid Text
|] )

_Natural_build_0 :: TestTree
_Natural_build_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/build
(   λ(natural : Type)
→   λ(succ : natural → natural)
→   λ(zero : natural)
→   succ (succ (succ zero))
)
|]
    Util.assertNormalizesTo e "+3" )

_Natural_build_1 :: TestTree
_Natural_build_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/build
(   λ(natural : Type)
→   λ(succ : natural → natural)
→   λ(zero : natural)
→   zero
)
|]
    Util.assertNormalizesTo e "+0" )

_Natural_enumerate_0 :: TestTree
_Natural_enumerate_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/enumerate +10
|]
    Util.assertNormalizesTo e "[+0, +1, +2, +3, +4, +5, +6, +7, +8, +9] : List Natural" )

_Natural_enumerate_1 :: TestTree
_Natural_enumerate_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/enumerate +0
|]
    Util.assertNormalizesTo e "[] : List Natural" )

_Natural_even_0 :: TestTree
_Natural_even_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/even +3
|]
    Util.assertNormalizesTo e "False" )

_Natural_even_1 :: TestTree
_Natural_even_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/even +0
|]
    Util.assertNormalizesTo e "True" )

_Natural_fold_0 :: TestTree
_Natural_fold_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/fold +3 Natural (λ(x : Natural) → +5 * x) +1
|]
    Util.assertNormalizesTo e "+125" )

_Natural_fold_1 :: TestTree
_Natural_fold_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
λ(zero : Natural) → ./Prelude/Natural/fold +3 Natural (λ(x : Natural) → +5 * x) zero
|]
    Util.assertNormalizesTo e "λ(zero : Natural) → +5 * +5 * +5 * zero" )

_Natural_fold_2 :: TestTree
_Natural_fold_2 = Test.Tasty.HUnit.testCase "Example #2" (do
    e <- Util.code [NeatInterpolation.text|
    λ(natural : Type)
→   λ(succ : natural → natural)
→   λ(zero : natural)
→   ./Prelude/Natural/fold +3 natural succ zero
|]
    Util.assertNormalizesTo e "λ(natural : Type) → λ(succ : natural → natural) → λ(zero : natural) → succ (succ (succ zero))" )

_Natural_isZero_0 :: TestTree
_Natural_isZero_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/isZero +2
|]
    Util.assertNormalizesTo e "False" )

_Natural_isZero_1 :: TestTree
_Natural_isZero_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/isZero +0
|]
    Util.assertNormalizesTo e "True" )

_Natural_odd_0 :: TestTree
_Natural_odd_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/odd +3
|]
    Util.assertNormalizesTo e "True" )

_Natural_odd_1 :: TestTree
_Natural_odd_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/odd +0
|]
    Util.assertNormalizesTo e "False" )

_Natural_product_0 :: TestTree
_Natural_product_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/product ([+2, +3, +5] : List Natural)
|]
    Util.assertNormalizesTo e "+30" )

_Natural_product_1 :: TestTree
_Natural_product_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/product ([] : List Natural)
|]
    Util.assertNormalizesTo e "+1" )

_Natural_show_0 :: TestTree
_Natural_show_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/show +3
|]
    Util.assertNormalizesTo e "\"+3\"" )

_Natural_show_1 :: TestTree
_Natural_show_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/show +0
|]
    Util.assertNormalizesTo e "\"+0\"" )

_Natural_sum_0 :: TestTree
_Natural_sum_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/sum ([+2, +3, +5] : List Natural)
|]
    Util.assertNormalizesTo e "+10" )

_Natural_sum_1 :: TestTree
_Natural_sum_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/sum ([] : List Natural)
|]
    Util.assertNormalizesTo e "+0" )

_Natural_toInteger_0 :: TestTree
_Natural_toInteger_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/toInteger +3
|]
    Util.assertNormalizesTo e "3" )

_Natural_toInteger_1 :: TestTree
_Natural_toInteger_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Natural/toInteger +0
|]
    Util.assertNormalizesTo e "0" )

_Optional_build_0 :: TestTree
_Optional_build_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/build
Integer
(   λ(optional : Type)
→   λ(just : Integer → optional)
→   λ(nothing : optional)
→   just 1
)
|]
    Util.assertNormalizesTo e "[1] : Optional Integer" )

_Optional_build_1 :: TestTree
_Optional_build_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/build
Integer
(   λ(optional : Type)
→   λ(just : Integer → optional)
→   λ(nothing : optional)
→   nothing
)
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_Optional_concat_0 :: TestTree
_Optional_concat_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/concat Integer ([[1] : Optional Integer] : Optional (Optional Integer))
|]
    Util.assertNormalizesTo e "[1] : Optional Integer" )

_Optional_concat_1 :: TestTree
_Optional_concat_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/concat Integer ([[] : Optional Integer] : Optional (Optional Integer))
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_Optional_concat_2 :: TestTree
_Optional_concat_2 = Test.Tasty.HUnit.testCase "Example #2" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/concat Integer ([] : Optional (Optional Integer))
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_Optional_fold_0 :: TestTree
_Optional_fold_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/fold Integer ([2] : Optional Integer) Integer (λ(x : Integer) → x) 0
|]
    Util.assertNormalizesTo e "2" )

_Optional_fold_1 :: TestTree
_Optional_fold_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/fold Integer ([]  : Optional Integer) Integer (λ(x : Integer) → x) 0
|]
    Util.assertNormalizesTo e "0" )

_Optional_head_0 :: TestTree
_Optional_head_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/head
Integer
(   [[] : Optional Integer, [1] : Optional Integer, [2] : Optional Integer]
    : List (Optional Integer)
)
|]
    Util.assertNormalizesTo e "[1] : Optional Integer" )

_Optional_head_1 :: TestTree
_Optional_head_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/head
Integer
([[] : Optional Integer, [] : Optional Integer] : List (Optional Integer))
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_Optional_head_2 :: TestTree
_Optional_head_2 = Test.Tasty.HUnit.testCase "Example #2" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/head Integer ([] : List (Optional Integer))
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_Optional_last_0 :: TestTree
_Optional_last_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/last
Integer
(   [[] : Optional Integer, [1] : Optional Integer, [2] : Optional Integer]
    : List (Optional Integer)
)
|]
    Util.assertNormalizesTo e "[2] : Optional Integer" )

_Optional_last_1 :: TestTree
_Optional_last_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/last
Integer
([[] : Optional Integer, [] : Optional Integer] : List (Optional Integer))
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_Optional_last_2 :: TestTree
_Optional_last_2 = Test.Tasty.HUnit.testCase "Example #2" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/last Integer ([] : List (Optional Integer))
|]
    Util.assertNormalizesTo e "[] : Optional Integer" )

_Optional_map_0 :: TestTree
_Optional_map_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/map Natural Bool Natural/even ([+3] : Optional Natural)
|]
    Util.assertNormalizesTo e "[False] : Optional Bool" )

_Optional_map_1 :: TestTree
_Optional_map_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/map Natural Bool Natural/even ([] : Optional Natural)
|]
    Util.assertNormalizesTo e "[] : Optional Bool" )

_Optional_toList_0 :: TestTree
_Optional_toList_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/toList Integer ([1] : Optional Integer)
|]
    Util.assertNormalizesTo e "[1] : List Integer" )

_Optional_toList_1 :: TestTree
_Optional_toList_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/toList Integer ([] : Optional Integer)
|]
    Util.assertNormalizesTo e "[] : List Integer" )

_Optional_unzip_0 :: TestTree
_Optional_unzip_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/unzip
Text
Bool
([{ _1 = "ABC", _2 = True  }] : Optional { _1 : Text, _2 : Bool })
|]
    Util.assertNormalizesTo e "{ _1 = [\"ABC\"] : Optional Text, _2 = [True] : Optional Bool }" )

_Optional_unzip_1 :: TestTree
_Optional_unzip_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Optional/unzip Text Bool ([] : Optional { _1 : Text, _2 : Bool })
|]
    Util.assertNormalizesTo e "{ _1 = [] : Optional Text, _2 = [] : Optional Bool }" )

_Text_concat_0 :: TestTree
_Text_concat_0 = Test.Tasty.HUnit.testCase "Example #0" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Text/concat (["ABC", "DEF", "GHI"] : List Text)
|]
    Util.assertNormalizesTo e "\"ABCDEFGHI\"" )

_Text_concat_1 :: TestTree
_Text_concat_1 = Test.Tasty.HUnit.testCase "Example #1" (do
    e <- Util.code [NeatInterpolation.text|
./Prelude/Text/concat ([] : List Text)
|]
    Util.assertNormalizesTo e "\"\"" )
