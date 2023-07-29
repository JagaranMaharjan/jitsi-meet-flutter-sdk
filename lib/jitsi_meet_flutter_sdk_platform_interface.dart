import 'dart:ffi';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'jitsi_meet_flutter_sdk_method_channel.dart';
import 'jitsi_meet_event_listener.dart';
import 'jitsi_meet_conference_options.dart';
import 'method_response.dart';

abstract class JitsiMeetFlutterSdkPlatform extends PlatformInterface {
  /// Constructs a JitsiMeetFlutterSdkPlatform.
  JitsiMeetFlutterSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static JitsiMeetFlutterSdkPlatform _instance = MethodChannelJitsiMeetFlutterSdk();

  /// The default instance of [JitsiMeetFlutterSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelJitsiMeetFlutterSdk].
  static JitsiMeetFlutterSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [JitsiMeetFlutterSdkPlatform] when
  /// they register themselves.
  static set instance(JitsiMeetFlutterSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<MethodResponse> join(JitsiMeetConferenceOptions options, JitsiMeetEventListener? listener) {
    throw UnimplementedError('join() has not been implemented.');
  }
  Future<MethodResponse> hangUp() {
    throw UnimplementedError('hangUp() has not been implemented.');
  }
  Future<MethodResponse> setAudioMuted({required bool muted}) {
    throw UnimplementedError('setAudioMuted() has not been implemented.');
  }
  Future<MethodResponse> setVideoMuted({required bool muted}) {
    throw UnimplementedError('setVideoMuted() has not been implemented.');
  }

  @override
  Future<MethodResponse> sendEndpointTextMessage({String? to, required String message}) async {
    throw UnimplementedError('sendEndpointTextMessage() has not been implemented.');
  }

  @override
  Future<MethodResponse> toggleScreenShare({required bool enabled}) async {
    throw UnimplementedError('sendEndpointTextMessage() has not been implemented.');
  }

  @override
  Future<MethodResponse> openChat({String? to}) async {
    throw UnimplementedError('openChat() has not been implemented.');
  }

  @override
  Future<MethodResponse> sendChatMessage({String? to, required String message}) async {
    throw UnimplementedError('sendChatMessage() has not been implemented.');
  }

  @override
  Future<MethodResponse> closeChat() async {
    throw UnimplementedError('openChat() has not been implemented.');
  }

  @override
  Future<MethodResponse> retrieveParticipantsInfo() async {
    throw UnimplementedError('retrieveParticipantsInfo() has not been implemented.');
  }
}
