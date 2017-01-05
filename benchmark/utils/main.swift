//===--- main.swift -------------------------------------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See https://swift.org/LICENSE.txt for license information
// See https://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

////////////////////////////////////////////////////////////////////////////////
// WARNING: This file is automatically generated from templates and should not
// be directly modified. Instead, make changes to
// scripts/generate_harness/main.swift_template and run
// scripts/generate_harness/generate_harness.py to regenerate this file.
////////////////////////////////////////////////////////////////////////////////

// This is just a driver for performance overview tests.
import TestsUtils
import DriverUtils
import Ackermann
import AngryPhonebook
import AnyHashableWithAClass
import Array2D
import ArrayAppend
import ArrayInClass
import ArrayLiteral
import ArrayOfGenericPOD
import ArrayOfGenericRef
import ArrayOfPOD
import ArrayOfRef
import ArraySubscript
import BitCount
import ByteSwap
import Calculator
import CaptureProp
import Chars
import ClassArrayGetter
import DeadArray
import DictTest
import DictTest2
import DictTest3
import DictionaryBridge
import DictionaryLiteral
import DictionaryRemove
import DictionarySwap
import ErrorHandling
import Fibonacci
import GlobalClass
import Hanoi
import Hash
import Histogram
import Integrate
import IterateData
import Join
import LinkedList
import MapReduce
import Memset
import MonteCarloE
import MonteCarloPi
import NSDictionaryCastToSwift
import NSError
import NSStringConversion
import NopDeinit
import ObjectAllocation
import ObjectiveCBridging
import ObjectiveCBridgingStubs
import ObjectiveCNoBridgingStubs
import ObserverClosure
import ObserverForwarderStruct
import ObserverPartiallyAppliedMethod
import ObserverUnappliedMethod
import OpenClose
import Phonebook
import PolymorphicCalls
import PopFront
import PopFrontGeneric
import Prims
import ProtocolDispatch
import ProtocolDispatch2
import RC4
import ReversedCollections
import RGBHistogram
import RangeAssignment
import RecursiveOwnedParameter
import SetTests
import SevenBoom
import Sim2DArray
import SortLettersInPlace
import SortStrings
import StackPromo
import StaticArray
import StrComplexWalk
import StrToInt
import StringBuilder
import StringInterpolation
import StringTests
import StringWalk
import SuperChars
import TwoSum
import TypeFlood
import UTF8Decode
import Walsh
import XorLoop

precommitTests = [
  "AngryPhonebook": run_AngryPhonebook,
  "AnyHashableWithAClass": run_AnyHashableWithAClass,
  "Array2D": run_Array2D,
  "ArrayAppend": run_ArrayAppend,
  "ArrayAppendReserved": run_ArrayAppendReserved,
  "ArrayAppendSequence": run_ArrayAppendSequence,
  "ArrayAppendArrayOfInt": run_ArrayAppendArrayOfInt,
  "ArrayPlusEqualArrayOfInt": run_ArrayPlusEqualArrayOfInt,
  "ArrayAppendStrings": run_ArrayAppendStrings,
  "ArrayAppendGenericStructs": run_ArrayAppendGenericStructs,
  "ArrayAppendOptionals": run_ArrayAppendOptionals,
  "ArrayAppendLazyMap": run_ArrayAppendLazyMap,
  "ArrayAppendRepeatCol": run_ArrayAppendRepeatCol,
  "ArrayAppendToGeneric": run_ArrayAppendToGeneric,
  "ArrayAppendFromGeneric": run_ArrayAppendFromGeneric,
  "ArrayAppendToFromGeneric": run_ArrayAppendToFromGeneric,
  "ArrayInClass": run_ArrayInClass,
  "ArrayLiteral": run_ArrayLiteral,
  "ArrayOfGenericPOD": run_ArrayOfGenericPOD,
  "ArrayOfGenericRef": run_ArrayOfGenericRef,
  "ArrayOfPOD": run_ArrayOfPOD,
  "ArrayOfRef": run_ArrayOfRef,
  "ArraySubscript": run_ArraySubscript,
  "ArrayValueProp": run_ArrayValueProp,
  "ArrayValueProp2": run_ArrayValueProp2,
  "ArrayValueProp3": run_ArrayValueProp3,
  "ArrayValueProp4": run_ArrayValueProp4,
  "BitCount": run_BitCount,
  "ByteSwap": run_ByteSwap,
  "Calculator": run_Calculator,
  "CaptureProp": run_CaptureProp,
  "Chars": run_Chars,
  "ClassArrayGetter": run_ClassArrayGetter,
  "DeadArray": run_DeadArray,
  "Dictionary": run_Dictionary,
  "Dictionary2": run_Dictionary2,
  "Dictionary2OfObjects": run_Dictionary2OfObjects,
  "Dictionary3": run_Dictionary3,
  "Dictionary3OfObjects": run_Dictionary3OfObjects,
  "DictionaryBridge": run_DictionaryBridge,
  "DictionaryLiteral": run_DictionaryLiteral,
  "DictionaryOfObjects": run_DictionaryOfObjects,
  "DictionaryRemove": run_DictionaryRemove,
  "DictionaryRemoveOfObjects": run_DictionaryRemoveOfObjects,
  "DictionarySwap": run_DictionarySwap,
  "DictionarySwapOfObjects": run_DictionarySwapOfObjects,
  "ErrorHandling": run_ErrorHandling,
  "GlobalClass": run_GlobalClass,
  "Hanoi": run_Hanoi,
  "HashTest": run_HashTest,
  "Histogram": run_Histogram,
  "Integrate": run_Integrate,
  "IterateData": run_IterateData,
  "Join": run_Join,
  "LinkedList": run_LinkedList,
  "MapReduce": run_MapReduce,
  "Memset": run_Memset,
  "MonteCarloE": run_MonteCarloE,
  "MonteCarloPi": run_MonteCarloPi,
  "NSDictionaryCastToSwift": run_NSDictionaryCastToSwift,
  "NSError": run_NSError,
  "NSStringConversion": run_NSStringConversion,
  "NopDeinit": run_NopDeinit,
  "ObjectAllocation": run_ObjectAllocation,
  "ObjectiveCBridgeFromNSArrayAnyObject": run_ObjectiveCBridgeFromNSArrayAnyObject,
  "ObjectiveCBridgeFromNSArrayAnyObjectForced": run_ObjectiveCBridgeFromNSArrayAnyObjectForced,
  "ObjectiveCBridgeFromNSArrayAnyObjectToString": run_ObjectiveCBridgeFromNSArrayAnyObjectToString,
  "ObjectiveCBridgeFromNSArrayAnyObjectToStringForced": run_ObjectiveCBridgeFromNSArrayAnyObjectToStringForced,
  "ObjectiveCBridgeFromNSDictionaryAnyObject": run_ObjectiveCBridgeFromNSDictionaryAnyObject,
  "ObjectiveCBridgeFromNSDictionaryAnyObjectForced": run_ObjectiveCBridgeFromNSDictionaryAnyObjectForced,
  "ObjectiveCBridgeFromNSDictionaryAnyObjectToString": run_ObjectiveCBridgeFromNSDictionaryAnyObjectToString,
  "ObjectiveCBridgeFromNSDictionaryAnyObjectToStringForced": run_ObjectiveCBridgeFromNSDictionaryAnyObjectToStringForced,
  "ObjectiveCBridgeFromNSSetAnyObject": run_ObjectiveCBridgeFromNSSetAnyObject,
  "ObjectiveCBridgeFromNSSetAnyObjectForced": run_ObjectiveCBridgeFromNSSetAnyObjectForced,
  "ObjectiveCBridgeFromNSSetAnyObjectToString": run_ObjectiveCBridgeFromNSSetAnyObjectToString,
  "ObjectiveCBridgeFromNSSetAnyObjectToStringForced": run_ObjectiveCBridgeFromNSSetAnyObjectToStringForced,
  "ObjectiveCBridgeFromNSString": run_ObjectiveCBridgeFromNSString,
  "ObjectiveCBridgeFromNSStringForced": run_ObjectiveCBridgeFromNSStringForced,
  "ObjectiveCBridgeStubDataAppend": run_ObjectiveCBridgeStubDataAppend,
  "ObjectiveCBridgeStubDateAccess": run_ObjectiveCBridgeStubDateAccess,
  "ObjectiveCBridgeStubDateMutation": run_ObjectiveCBridgeStubDateMutation,
  "ObjectiveCBridgeStubFromArrayOfNSString": run_ObjectiveCBridgeStubFromArrayOfNSString,
  "ObjectiveCBridgeStubFromNSDate": run_ObjectiveCBridgeStubFromNSDate,
  "ObjectiveCBridgeStubFromNSDateRef": run_ObjectiveCBridgeStubFromNSDateRef,
  "ObjectiveCBridgeStubFromNSString": run_ObjectiveCBridgeStubFromNSString,
  "ObjectiveCBridgeStubFromNSStringRef": run_ObjectiveCBridgeStubFromNSStringRef,
  "ObjectiveCBridgeStubNSDataAppend": run_ObjectiveCBridgeStubNSDataAppend,
  "ObjectiveCBridgeStubNSDateMutationRef": run_ObjectiveCBridgeStubNSDateMutationRef,
  "ObjectiveCBridgeStubNSDateRefAccess": run_ObjectiveCBridgeStubNSDateRefAccess,
  "ObjectiveCBridgeStubToArrayOfNSString": run_ObjectiveCBridgeStubToArrayOfNSString,
  "ObjectiveCBridgeStubToNSDate": run_ObjectiveCBridgeStubToNSDate,
  "ObjectiveCBridgeStubToNSDateRef": run_ObjectiveCBridgeStubToNSDateRef,
  "ObjectiveCBridgeStubToNSString": run_ObjectiveCBridgeStubToNSString,
  "ObjectiveCBridgeStubToNSStringRef": run_ObjectiveCBridgeStubToNSStringRef,
  "ObjectiveCBridgeStubURLAppendPath": run_ObjectiveCBridgeStubURLAppendPath,
  "ObjectiveCBridgeStubURLAppendPathRef": run_ObjectiveCBridgeStubURLAppendPathRef,
  "ObjectiveCBridgeToNSArray": run_ObjectiveCBridgeToNSArray,
  "ObjectiveCBridgeToNSDictionary": run_ObjectiveCBridgeToNSDictionary,
  "ObjectiveCBridgeToNSSet": run_ObjectiveCBridgeToNSSet,
  "ObjectiveCBridgeToNSString": run_ObjectiveCBridgeToNSString,
  "ObserverClosure": run_ObserverClosure,
  "ObserverForwarderStruct": run_ObserverForwarderStruct,
  "ObserverPartiallyAppliedMethod": run_ObserverPartiallyAppliedMethod,
  "ObserverUnappliedMethod": run_ObserverUnappliedMethod,
  "OpenClose": run_OpenClose,
  "Phonebook": run_Phonebook,
  "PolymorphicCalls": run_PolymorphicCalls,
  "PopFrontArray": run_PopFrontArray,
  "PopFrontArrayGeneric": run_PopFrontArrayGeneric,
  "PopFrontUnsafePointer": run_PopFrontUnsafePointer,
  "Prims": run_Prims,
  "ProtocolDispatch": run_ProtocolDispatch,
  "ProtocolDispatch2": run_ProtocolDispatch2,
  "RC4": run_RC4,
  "ReversedArray": run_ReversedArray,
  "ReversedBidirectonal": run_ReversedBidirectonal,
  "ReversedDictionary": run_ReversedDictionary,
  "RGBHistogram": run_RGBHistogram,
  "RGBHistogramOfObjects": run_RGBHistogramOfObjects,
  "RangeAssignment": run_RangeAssignment,
  "RecursiveOwnedParameter": run_RecursiveOwnedParameter,
  "SetExclusiveOr": run_SetExclusiveOr,
  "SetExclusiveOr_OfObjects": run_SetExclusiveOr_OfObjects,
  "SetIntersect": run_SetIntersect,
  "SetIntersect_OfObjects": run_SetIntersect_OfObjects,
  "SetIsSubsetOf": run_SetIsSubsetOf,
  "SetIsSubsetOf_OfObjects": run_SetIsSubsetOf_OfObjects,
  "SetUnion": run_SetUnion,
  "SetUnion_OfObjects": run_SetUnion_OfObjects,
  "SevenBoom": run_SevenBoom,
  "Sim2DArray": run_Sim2DArray,
  "SortLettersInPlace": run_SortLettersInPlace,
  "SortSortedStrings": run_SortSortedStrings,
  "SortStrings": run_SortStrings,
  "SortStringsUnicode": run_SortStringsUnicode,
  "StackPromo": run_StackPromo,
  "StaticArray": run_StaticArray,
  "StrComplexWalk": run_StrComplexWalk,
  "StrToInt": run_StrToInt,
  "StringBuilder": run_StringBuilder,
  "StringEqualPointerComparison": run_StringEqualPointerComparison,
  "StringHasPrefix": run_StringHasPrefix,
  "StringHasPrefixUnicode": run_StringHasPrefixUnicode,
  "StringHasSuffix": run_StringHasSuffix,
  "StringHasSuffixUnicode": run_StringHasSuffixUnicode,
  "StringInterpolation": run_StringInterpolation,
  "StringWalk": run_StringWalk,
  "StringWithCString": run_StringWithCString,
  "SuperChars": run_SuperChars,
  "TwoSum": run_TwoSum,
  "TypeFlood": run_TypeFlood,
  "UTF8Decode": run_UTF8Decode,
  "Walsh": run_Walsh,
  "XorLoop": run_XorLoop,
]

otherTests = [
  "Ackermann": run_Ackermann,
  "Fibonacci": run_Fibonacci,
]


main()
