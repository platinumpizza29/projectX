///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use chatMessageRequestDescriptor instead')
const ChatMessageRequest$json = const {
  '1': 'ChatMessageRequest',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ChatMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageRequestDescriptor = $convert.base64Decode('ChJDaGF0TWVzc2FnZVJlcXVlc3QSFgoGdXNlcklkGAEgASgDUgZ1c2VySWQSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use chatMessageResponseDescriptor instead')
const ChatMessageResponse$json = const {
  '1': 'ChatMessageResponse',
  '2': const [
    const {'1': 'userId', '3': 1, '4': 1, '5': 3, '10': 'userId'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ChatMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageResponseDescriptor = $convert.base64Decode('ChNDaGF0TWVzc2FnZVJlc3BvbnNlEhYKBnVzZXJJZBgBIAEoA1IGdXNlcklkEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2U=');
