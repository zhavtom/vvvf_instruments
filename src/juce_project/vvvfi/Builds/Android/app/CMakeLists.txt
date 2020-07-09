# Automatically generated makefile, created by the Projucer
# Don't edit this file! Your changes will be overwritten when you re-save the Projucer project!

cmake_minimum_required(VERSION 3.4.1)

set(BINARY_NAME "juce_jni")

set(OBOE_DIR "C:/JUCE/modules/juce_audio_devices/native/oboe")

add_subdirectory (${OBOE_DIR} ./oboe)

add_library("cpufeatures" STATIC "${ANDROID_NDK}/sources/android/cpufeatures/cpu-features.c")
set_source_files_properties("${ANDROID_NDK}/sources/android/cpufeatures/cpu-features.c" PROPERTIES COMPILE_FLAGS "-Wno-sign-conversion -Wno-gnu-statement-expression")

add_definitions("-DJUCE_ANDROID=1" "-DJUCE_ANDROID_API_VERSION=16" "-DJUCE_PUSH_NOTIFICATIONS=1" "-DJUCE_PUSH_NOTIFICATIONS_ACTIVITY=\"com/rmsl/juce/JuceActivity\"" "-DMIDICTRL" "-DJUCE_POLY" "-DOSCCTRL" "-DJUCER_ANDROIDSTUDIO_7F0E4A25=1" "-DJUCE_APP_VERSION=0.2.0" "-DJUCE_APP_VERSION_HEX=0x200")

include_directories( AFTER
    "../../../JuceLibraryCode"
    "C:/JUCE/modules"
    "${ANDROID_NDK}/sources/android/cpufeatures"
)

enable_language(ASM)

if(JUCE_BUILD_CONFIGURATION MATCHES "DEBUG")
    add_definitions("-DMIDICTRL" "-DJUCE_POLY" "-DOSCCTRL" "-DJUCER_ANDROIDSTUDIO_7F0E4A25=1" "-DJUCE_APP_VERSION=0.2.0" "-DJUCE_APP_VERSION_HEX=0x200" "-DDEBUG=1" "-D_DEBUG=1")
elseif(JUCE_BUILD_CONFIGURATION MATCHES "RELEASE")
    add_definitions("-DMIDICTRL" "-DJUCE_POLY" "-DOSCCTRL" "-DJUCER_ANDROIDSTUDIO_7F0E4A25=1" "-DJUCE_APP_VERSION=0.2.0" "-DJUCE_APP_VERSION_HEX=0x200" "-DNDEBUG=1")
else()
    message( FATAL_ERROR "No matching build-configuration found." )
endif()

add_library( ${BINARY_NAME}

    SHARED

    "../../../FaustPluginProcessor.cpp"
    "C:/JUCE/modules/juce_audio_basics/audio_play_head/juce_AudioPlayHead.h"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioChannelSet.cpp"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioChannelSet.h"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioDataConverters.cpp"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioDataConverters.h"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioProcessLoadMeasurer.cpp"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioProcessLoadMeasurer.h"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioSampleBuffer.h"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_FloatVectorOperations.cpp"
    "C:/JUCE/modules/juce_audio_basics/buffers/juce_FloatVectorOperations.h"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiBuffer.cpp"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiBuffer.h"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiFile.cpp"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiFile.h"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiKeyboardState.cpp"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiKeyboardState.h"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessage.cpp"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessage.h"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessageSequence.cpp"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessageSequence.h"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiRPN.cpp"
    "C:/JUCE/modules/juce_audio_basics/midi/juce_MidiRPN.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEInstrument.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEInstrument.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEMessages.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEMessages.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPENote.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPENote.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiser.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiser.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserBase.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserBase.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserVoice.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserVoice.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEUtils.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEUtils.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEValue.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEValue.h"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEZoneLayout.cpp"
    "C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEZoneLayout.h"
    "C:/JUCE/modules/juce_audio_basics/native/juce_mac_CoreAudioLayouts.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_AudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_BufferingAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_BufferingAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ChannelRemappingAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ChannelRemappingAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_IIRFilterAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_IIRFilterAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_MemoryAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_MemoryAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_MixerAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_MixerAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_PositionableAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ResamplingAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ResamplingAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ReverbAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ReverbAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ToneGeneratorAudioSource.cpp"
    "C:/JUCE/modules/juce_audio_basics/sources/juce_ToneGeneratorAudioSource.h"
    "C:/JUCE/modules/juce_audio_basics/synthesisers/juce_Synthesiser.cpp"
    "C:/JUCE/modules/juce_audio_basics/synthesisers/juce_Synthesiser.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_ADSR.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_Decibels.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_GenericInterpolator.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_IIRFilter.cpp"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_IIRFilter.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_Interpolators.cpp"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_Interpolators.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_LagrangeInterpolator.cpp"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_Reverb.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_SmoothedValue.cpp"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_SmoothedValue.h"
    "C:/JUCE/modules/juce_audio_basics/utilities/juce_WindowedSincInterpolator.cpp"
    "C:/JUCE/modules/juce_audio_basics/juce_audio_basics.cpp"
    "C:/JUCE/modules/juce_audio_basics/juce_audio_basics.mm"
    "C:/JUCE/modules/juce_audio_basics/juce_audio_basics.h"
    "C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioDeviceManager.cpp"
    "C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioDeviceManager.h"
    "C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODevice.cpp"
    "C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODevice.h"
    "C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODeviceType.cpp"
    "C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODeviceType.h"
    "C:/JUCE/modules/juce_audio_devices/audio_io/juce_SystemAudioVolume.h"
    "C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiDevices.cpp"
    "C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiDevices.h"
    "C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiMessageCollector.cpp"
    "C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiMessageCollector.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStream.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStreamBase.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStreamBuilder.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStreamCallback.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Definitions.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/LatencyTuner.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Oboe.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/ResultWithValue.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/StabilizedCallback.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Utilities.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Version.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AAudioLoader.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AAudioLoader.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AudioStreamAAudio.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AudioStreamAAudio.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioClock.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioSourceCaller.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioSourceCaller.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioStream.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioStreamBuilder.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/DataConversionFlowGraph.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/DataConversionFlowGraph.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FilterAudioStream.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FilterAudioStream.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockAdapter.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockAdapter.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockReader.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockReader.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockWriter.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockWriter.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/LatencyTuner.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/MonotonicCounter.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/OboeDebug.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/QuirksManager.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/QuirksManager.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceFloatCaller.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceFloatCaller.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceI16Caller.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceI16Caller.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/StabilizedCallback.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Trace.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Trace.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Utilities.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Version.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoBuffer.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoBuffer.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoController.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoController.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerBase.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerBase.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerIndirect.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerIndirect.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/HyperbolicCosineWindow.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/IntegerRatio.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/IntegerRatio.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/KaiserWindow.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/LinearResampler.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/LinearResampler.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/MultiChannelResampler.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/MultiChannelResampler.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResampler.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResampler.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerMono.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerMono.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerStereo.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerStereo.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResampler.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResampler.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResamplerStereo.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResamplerStereo.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ClipToRange.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ClipToRange.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/FlowGraphNode.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/FlowGraphNode.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ManyToMultiConverter.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ManyToMultiConverter.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/MonoToMultiConverter.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/MonoToMultiConverter.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/RampLinear.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/RampLinear.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SampleRateConverter.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SampleRateConverter.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkFloat.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkFloat.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI16.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI16.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI24.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI24.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceFloat.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceFloat.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI16.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI16.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI24.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI24.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioInputStreamOpenSLES.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioInputStreamOpenSLES.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioOutputStreamOpenSLES.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioOutputStreamOpenSLES.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamBuffered.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamBuffered.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamOpenSLES.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamOpenSLES.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/EngineOpenSLES.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/EngineOpenSLES.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OpenSLESUtilities.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OpenSLESUtilities.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OutputMixerOpenSLES.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OutputMixerOpenSLES.h"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/CMakeLists.txt"
    "C:/JUCE/modules/juce_audio_devices/native/oboe/readme.md"
    "C:/JUCE/modules/juce_audio_devices/native/juce_android_Audio.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_android_HighPerformanceAudioHelpers.h"
    "C:/JUCE/modules/juce_audio_devices/native/juce_android_Midi.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_android_Oboe.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_android_OpenSL.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_ios_Audio.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_ios_Audio.h"
    "C:/JUCE/modules/juce_audio_devices/native/juce_linux_ALSA.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_linux_Bela.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_linux_JackAudio.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_linux_Midi.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_mac_CoreAudio.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_mac_CoreMidi.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_MidiDataConcatenator.h"
    "C:/JUCE/modules/juce_audio_devices/native/juce_win32_ASIO.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_win32_DirectSound.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_win32_Midi.cpp"
    "C:/JUCE/modules/juce_audio_devices/native/juce_win32_WASAPI.cpp"
    "C:/JUCE/modules/juce_audio_devices/sources/juce_AudioSourcePlayer.cpp"
    "C:/JUCE/modules/juce_audio_devices/sources/juce_AudioSourcePlayer.h"
    "C:/JUCE/modules/juce_audio_devices/sources/juce_AudioTransportSource.cpp"
    "C:/JUCE/modules/juce_audio_devices/sources/juce_AudioTransportSource.h"
    "C:/JUCE/modules/juce_audio_devices/juce_audio_devices.cpp"
    "C:/JUCE/modules/juce_audio_devices/juce_audio_devices.mm"
    "C:/JUCE/modules/juce_audio_devices/juce_audio_devices.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/all.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/bitmath.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/bitreader.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/bitwriter.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/cpu.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/crc.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/fixed.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/float.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/format.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/lpc.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/md5.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/memory.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/metadata.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/stream_encoder.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/stream_encoder_framing.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/window.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/protected/all.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/protected/stream_decoder.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/protected/stream_encoder.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/bitmath.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/bitreader.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/bitwriter.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/cpu.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/crc.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/fixed.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/float.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/format.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/lpc_flac.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/md5.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/memory.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/stream_decoder.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/stream_encoder.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/stream_encoder_framing.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/window_flac.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/all.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/alloc.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/assert.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/callback.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/compat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/endswap.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/export.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/Flac Licence.txt"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/format.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/metadata.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/ordinals.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/stream_decoder.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/stream_encoder.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/flac/win_utf8_io.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/coupled/res_books_51.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/coupled/res_books_stereo.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/floor/floor_books.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/uncoupled/res_books_uncoupled.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/floor_all.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_8.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_11.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_16.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_44.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_8.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_16.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_44.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_44p51.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_44u.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_8.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_11.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_16.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_22.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_32.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_44.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_44p51.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_44u.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_X.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/analysis.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/backends.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/bitrate.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/bitrate.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/block.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/codebook.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/codebook.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/codec_internal.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/envelope.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/envelope.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/floor0.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/floor1.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/highlevel.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/info.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lookup.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lookup.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lookup_data.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lpc.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lpc.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lsp.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lsp.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/mapping0.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/masking.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/mdct.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/mdct.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/misc.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/os.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/psy.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/psy.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/registry.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/registry.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/res0.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/scales.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/sharedbook.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/smallft.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/smallft.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/synthesis.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/vorbisenc.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/vorbisfile.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/window.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/window.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/bitwise.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/codec.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/config_types.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/framing.c"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/Ogg Vorbis Licence.txt"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/ogg.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/os_types.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/vorbisenc.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/vorbisfile.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_AiffAudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_AiffAudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_CoreAudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_CoreAudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_FlacAudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_FlacAudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_LAMEEncoderAudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_LAMEEncoderAudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_MP3AudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_MP3AudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_OggVorbisAudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_OggVorbisAudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_WavAudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_WavAudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_WindowsMediaAudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/codecs/juce_WindowsMediaAudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormat.cpp"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormat.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatManager.cpp"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatManager.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReader.cpp"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReader.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReaderSource.cpp"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReaderSource.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatWriter.cpp"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatWriter.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioSubsectionReader.cpp"
    "C:/JUCE/modules/juce_audio_formats/format/juce_AudioSubsectionReader.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_BufferingAudioFormatReader.cpp"
    "C:/JUCE/modules/juce_audio_formats/format/juce_BufferingAudioFormatReader.h"
    "C:/JUCE/modules/juce_audio_formats/format/juce_MemoryMappedAudioFormatReader.h"
    "C:/JUCE/modules/juce_audio_formats/sampler/juce_Sampler.cpp"
    "C:/JUCE/modules/juce_audio_formats/sampler/juce_Sampler.h"
    "C:/JUCE/modules/juce_audio_formats/juce_audio_formats.cpp"
    "C:/JUCE/modules/juce_audio_formats/juce_audio_formats.mm"
    "C:/JUCE/modules/juce_audio_formats/juce_audio_formats.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AAX/juce_AAX_Modifier_Injector.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AAX/juce_AAX_Wrapper.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBase.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBase.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBaseHelper.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBuffer.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBuffer.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewBase.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewBase.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewControl.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewControl.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewDispatch.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUDispatch.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUDispatch.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUInputElement.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUInputElement.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUInputFormatConverter.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUMIDIBase.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUMIDIBase.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputBase.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputBase.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputElement.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputElement.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUPlugInDispatch.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUPlugInDispatch.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUScopeElement.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUScopeElement.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUSilentTimeout.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUTimestampGenerator.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUViewLocalizedStringKeys.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAtomic.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAtomicStack.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAudioChannelLayout.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAudioChannelLayout.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAUParameter.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAUParameter.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAutoDisposer.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CADebugMacros.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CADebugPrintf.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAException.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAHostTimeBase.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAMath.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAMutex.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAMutex.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CarbonEventHandler.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CarbonEventHandler.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAReferenceCounted.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAStreamBasicDescription.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAStreamBasicDescription.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAThreadSafeList.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAVectorUnit.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAVectorUnit.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAVectorUnitTypes.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAXException.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/ComponentBase.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/ComponentBase.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/MusicDeviceBase.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/MusicDeviceBase.h"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/juce_AU_Wrapper.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/AU/juce_AUv3_Wrapper.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode_Header.h"
    "C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode1.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode2.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode3.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_MacUtilities.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_WinUtilities.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_Wrapper.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/Standalone/juce_StandaloneFilterApp.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/Standalone/juce_StandaloneFilterWindow.h"
    "C:/JUCE/modules/juce_audio_plugin_client/Unity/juce_Unity_Wrapper.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/Unity/juce_UnityPluginInterface.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_CarbonVisibility.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_CheckSettingMacros.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_CreatePluginFilter.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_FakeMouseMoveGenerator.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_IncludeModuleHeaders.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_IncludeSystemHeaders.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_PluginHostType.h"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_PluginUtilities.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/utility/juce_WindowsHooks.h"
    "C:/JUCE/modules/juce_audio_plugin_client/VST/juce_VST_Wrapper.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/VST/juce_VST_Wrapper.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/VST/juce_VSTCallbackHandler.h"
    "C:/JUCE/modules/juce_audio_plugin_client/VST3/juce_VST3_Wrapper.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_1.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_2.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_3.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_4.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_utils.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_utils.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_utils.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST_utils.mm"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.cpp"
    "C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client.h"
    "C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormat.cpp"
    "C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormat.h"
    "C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormatManager.cpp"
    "C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormatManager.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/baseiids.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/classfactoryhelpers.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fbuffer.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fbuffer.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fdebug.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fdebug.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fobject.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fobject.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstreamer.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstreamer.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstring.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstring.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/updatehandler.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/updatehandler.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/thread/include/flock.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/thread/source/flock.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/LICENSE.txt"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/README.md"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/conststringtable.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/conststringtable.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/coreiids.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/falignpop.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/falignpush.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fplatform.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fstrdefs.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ftypes.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/funknown.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/funknown.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/futils.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fvariant.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ibstream.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/icloneable.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ipersistent.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ipluginbase.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/istringresult.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/iupdatehandler.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/smartpointer.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/typesizecheck.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ustring.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ustring.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/gui/iplugview.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/gui/iplugviewcontentscalesupport.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstattributes.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstaudioprocessor.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstautomationstate.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstchannelcontextinfo.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstcomponent.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstcontextmenu.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsteditcontroller.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstevents.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsthostapplication.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstinterappaudio.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmessage.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmidicontrollers.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmidilearn.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstnoteexpression.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstparameterchanges.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstphysicalui.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstpluginterfacesupport.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstplugview.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstprefetchablesupport.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstprocesscontext.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstrepresentation.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsttestplugprovider.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstunits.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vstpshpack4.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vstspeaker.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vsttypes.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/LICENSE.txt"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/README.md"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/memorystream.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/memorystream.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/pluginview.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/pluginview.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/hostclasses.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/hostclasses.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/pluginterfacesupport.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/pluginterfacesupport.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstbus.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstbus.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponent.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponent.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponentbase.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponentbase.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vsteditcontroller.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vsteditcontroller.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstinitiids.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstparameters.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstparameters.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstpresetfile.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstpresetfile.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/LICENSE.txt"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/README.md"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/LICENSE.txt"
    "C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/README.md"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_AU_Shared.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_AudioUnitPluginFormat.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_AudioUnitPluginFormat.mm"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_LADSPAPluginFormat.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_LADSPAPluginFormat.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_LegacyAudioParameter.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3Common.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3Headers.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3PluginFormat.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3PluginFormat.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTCommon.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTMidiEventList.h"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTPluginFormat.cpp"
    "C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTPluginFormat.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioPluginInstance.cpp"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioPluginInstance.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessor.cpp"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessor.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorEditor.cpp"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorEditor.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorGraph.cpp"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorGraph.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorListener.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorParameter.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorParameterGroup.cpp"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorParameterGroup.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_GenericAudioProcessorEditor.cpp"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_GenericAudioProcessorEditor.h"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_PluginDescription.cpp"
    "C:/JUCE/modules/juce_audio_processors/processors/juce_PluginDescription.h"
    "C:/JUCE/modules/juce_audio_processors/scanning/juce_KnownPluginList.cpp"
    "C:/JUCE/modules/juce_audio_processors/scanning/juce_KnownPluginList.h"
    "C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginDirectoryScanner.cpp"
    "C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginDirectoryScanner.h"
    "C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginListComponent.cpp"
    "C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginListComponent.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterBool.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterBool.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterChoice.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterChoice.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterFloat.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterFloat.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterInt.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterInt.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorParameterWithID.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorParameterWithID.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorValueTreeState.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorValueTreeState.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_ParameterAttachments.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_ParameterAttachments.h"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_RangedAudioParameter.cpp"
    "C:/JUCE/modules/juce_audio_processors/utilities/juce_RangedAudioParameter.h"
    "C:/JUCE/modules/juce_audio_processors/juce_audio_processors.cpp"
    "C:/JUCE/modules/juce_audio_processors/juce_audio_processors.mm"
    "C:/JUCE/modules/juce_audio_processors/juce_audio_processors.h"
    "C:/JUCE/modules/juce_audio_utils/audio_cd/juce_AudioCDBurner.h"
    "C:/JUCE/modules/juce_audio_utils/audio_cd/juce_AudioCDReader.cpp"
    "C:/JUCE/modules/juce_audio_utils/audio_cd/juce_AudioCDReader.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioAppComponent.cpp"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioAppComponent.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioDeviceSelectorComponent.cpp"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioDeviceSelectorComponent.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnail.cpp"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnail.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnailBase.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnailCache.cpp"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnailCache.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioVisualiserComponent.cpp"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_AudioVisualiserComponent.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_BluetoothMidiDevicePairingDialogue.h"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_MidiKeyboardComponent.cpp"
    "C:/JUCE/modules/juce_audio_utils/gui/juce_MidiKeyboardComponent.h"
    "C:/JUCE/modules/juce_audio_utils/native/juce_android_BluetoothMidiDevicePairingDialogue.cpp"
    "C:/JUCE/modules/juce_audio_utils/native/juce_ios_BluetoothMidiDevicePairingDialogue.mm"
    "C:/JUCE/modules/juce_audio_utils/native/juce_linux_AudioCDReader.cpp"
    "C:/JUCE/modules/juce_audio_utils/native/juce_linux_BluetoothMidiDevicePairingDialogue.cpp"
    "C:/JUCE/modules/juce_audio_utils/native/juce_mac_AudioCDBurner.mm"
    "C:/JUCE/modules/juce_audio_utils/native/juce_mac_AudioCDReader.mm"
    "C:/JUCE/modules/juce_audio_utils/native/juce_mac_BluetoothMidiDevicePairingDialogue.mm"
    "C:/JUCE/modules/juce_audio_utils/native/juce_win_BluetoothMidiDevicePairingDialogue.cpp"
    "C:/JUCE/modules/juce_audio_utils/native/juce_win32_AudioCDBurner.cpp"
    "C:/JUCE/modules/juce_audio_utils/native/juce_win32_AudioCDReader.cpp"
    "C:/JUCE/modules/juce_audio_utils/players/juce_AudioProcessorPlayer.cpp"
    "C:/JUCE/modules/juce_audio_utils/players/juce_AudioProcessorPlayer.h"
    "C:/JUCE/modules/juce_audio_utils/players/juce_SoundPlayer.cpp"
    "C:/JUCE/modules/juce_audio_utils/players/juce_SoundPlayer.h"
    "C:/JUCE/modules/juce_audio_utils/juce_audio_utils.cpp"
    "C:/JUCE/modules/juce_audio_utils/juce_audio_utils.mm"
    "C:/JUCE/modules/juce_audio_utils/juce_audio_utils.h"
    "C:/JUCE/modules/juce_core/containers/juce_AbstractFifo.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_AbstractFifo.h"
    "C:/JUCE/modules/juce_core/containers/juce_Array.h"
    "C:/JUCE/modules/juce_core/containers/juce_ArrayAllocationBase.h"
    "C:/JUCE/modules/juce_core/containers/juce_ArrayBase.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_ArrayBase.h"
    "C:/JUCE/modules/juce_core/containers/juce_DynamicObject.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_DynamicObject.h"
    "C:/JUCE/modules/juce_core/containers/juce_ElementComparator.h"
    "C:/JUCE/modules/juce_core/containers/juce_HashMap.h"
    "C:/JUCE/modules/juce_core/containers/juce_HashMap_test.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_LinkedListPointer.h"
    "C:/JUCE/modules/juce_core/containers/juce_ListenerList.h"
    "C:/JUCE/modules/juce_core/containers/juce_NamedValueSet.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_NamedValueSet.h"
    "C:/JUCE/modules/juce_core/containers/juce_OwnedArray.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_OwnedArray.h"
    "C:/JUCE/modules/juce_core/containers/juce_PropertySet.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_PropertySet.h"
    "C:/JUCE/modules/juce_core/containers/juce_ReferenceCountedArray.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_ReferenceCountedArray.h"
    "C:/JUCE/modules/juce_core/containers/juce_ScopedValueSetter.h"
    "C:/JUCE/modules/juce_core/containers/juce_SortedSet.h"
    "C:/JUCE/modules/juce_core/containers/juce_SparseSet.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_SparseSet.h"
    "C:/JUCE/modules/juce_core/containers/juce_Variant.cpp"
    "C:/JUCE/modules/juce_core/containers/juce_Variant.h"
    "C:/JUCE/modules/juce_core/files/juce_DirectoryIterator.cpp"
    "C:/JUCE/modules/juce_core/files/juce_DirectoryIterator.h"
    "C:/JUCE/modules/juce_core/files/juce_File.cpp"
    "C:/JUCE/modules/juce_core/files/juce_File.h"
    "C:/JUCE/modules/juce_core/files/juce_FileFilter.cpp"
    "C:/JUCE/modules/juce_core/files/juce_FileFilter.h"
    "C:/JUCE/modules/juce_core/files/juce_FileInputStream.cpp"
    "C:/JUCE/modules/juce_core/files/juce_FileInputStream.h"
    "C:/JUCE/modules/juce_core/files/juce_FileOutputStream.cpp"
    "C:/JUCE/modules/juce_core/files/juce_FileOutputStream.h"
    "C:/JUCE/modules/juce_core/files/juce_FileSearchPath.cpp"
    "C:/JUCE/modules/juce_core/files/juce_FileSearchPath.h"
    "C:/JUCE/modules/juce_core/files/juce_MemoryMappedFile.h"
    "C:/JUCE/modules/juce_core/files/juce_RangedDirectoryIterator.cpp"
    "C:/JUCE/modules/juce_core/files/juce_RangedDirectoryIterator.h"
    "C:/JUCE/modules/juce_core/files/juce_TemporaryFile.cpp"
    "C:/JUCE/modules/juce_core/files/juce_TemporaryFile.h"
    "C:/JUCE/modules/juce_core/files/juce_WildcardFileFilter.cpp"
    "C:/JUCE/modules/juce_core/files/juce_WildcardFileFilter.h"
    "C:/JUCE/modules/juce_core/javascript/juce_Javascript.cpp"
    "C:/JUCE/modules/juce_core/javascript/juce_Javascript.h"
    "C:/JUCE/modules/juce_core/javascript/juce_JSON.cpp"
    "C:/JUCE/modules/juce_core/javascript/juce_JSON.h"
    "C:/JUCE/modules/juce_core/logging/juce_FileLogger.cpp"
    "C:/JUCE/modules/juce_core/logging/juce_FileLogger.h"
    "C:/JUCE/modules/juce_core/logging/juce_Logger.cpp"
    "C:/JUCE/modules/juce_core/logging/juce_Logger.h"
    "C:/JUCE/modules/juce_core/maths/juce_BigInteger.cpp"
    "C:/JUCE/modules/juce_core/maths/juce_BigInteger.h"
    "C:/JUCE/modules/juce_core/maths/juce_Expression.cpp"
    "C:/JUCE/modules/juce_core/maths/juce_Expression.h"
    "C:/JUCE/modules/juce_core/maths/juce_MathsFunctions.h"
    "C:/JUCE/modules/juce_core/maths/juce_NormalisableRange.h"
    "C:/JUCE/modules/juce_core/maths/juce_Random.cpp"
    "C:/JUCE/modules/juce_core/maths/juce_Random.h"
    "C:/JUCE/modules/juce_core/maths/juce_Range.h"
    "C:/JUCE/modules/juce_core/maths/juce_StatisticsAccumulator.h"
    "C:/JUCE/modules/juce_core/memory/juce_AllocationHooks.cpp"
    "C:/JUCE/modules/juce_core/memory/juce_AllocationHooks.h"
    "C:/JUCE/modules/juce_core/memory/juce_Atomic.h"
    "C:/JUCE/modules/juce_core/memory/juce_ByteOrder.h"
    "C:/JUCE/modules/juce_core/memory/juce_ContainerDeletePolicy.h"
    "C:/JUCE/modules/juce_core/memory/juce_HeapBlock.h"
    "C:/JUCE/modules/juce_core/memory/juce_HeavyweightLeakedObjectDetector.h"
    "C:/JUCE/modules/juce_core/memory/juce_LeakedObjectDetector.h"
    "C:/JUCE/modules/juce_core/memory/juce_Memory.h"
    "C:/JUCE/modules/juce_core/memory/juce_MemoryBlock.cpp"
    "C:/JUCE/modules/juce_core/memory/juce_MemoryBlock.h"
    "C:/JUCE/modules/juce_core/memory/juce_OptionalScopedPointer.h"
    "C:/JUCE/modules/juce_core/memory/juce_ReferenceCountedObject.h"
    "C:/JUCE/modules/juce_core/memory/juce_ScopedPointer.h"
    "C:/JUCE/modules/juce_core/memory/juce_SharedResourcePointer.h"
    "C:/JUCE/modules/juce_core/memory/juce_Singleton.h"
    "C:/JUCE/modules/juce_core/memory/juce_WeakReference.h"
    "C:/JUCE/modules/juce_core/misc/juce_ConsoleApplication.cpp"
    "C:/JUCE/modules/juce_core/misc/juce_ConsoleApplication.h"
    "C:/JUCE/modules/juce_core/misc/juce_Result.cpp"
    "C:/JUCE/modules/juce_core/misc/juce_Result.h"
    "C:/JUCE/modules/juce_core/misc/juce_RuntimePermissions.cpp"
    "C:/JUCE/modules/juce_core/misc/juce_RuntimePermissions.h"
    "C:/JUCE/modules/juce_core/misc/juce_Uuid.cpp"
    "C:/JUCE/modules/juce_core/misc/juce_Uuid.h"
    "C:/JUCE/modules/juce_core/misc/juce_WindowsRegistry.h"
    "C:/JUCE/modules/juce_core/native/java/README.txt"
    "C:/JUCE/modules/juce_core/native/juce_android_Files.cpp"
    "C:/JUCE/modules/juce_core/native/juce_android_JNIHelpers.cpp"
    "C:/JUCE/modules/juce_core/native/juce_android_JNIHelpers.h"
    "C:/JUCE/modules/juce_core/native/juce_android_Misc.cpp"
    "C:/JUCE/modules/juce_core/native/juce_android_Network.cpp"
    "C:/JUCE/modules/juce_core/native/juce_android_RuntimePermissions.cpp"
    "C:/JUCE/modules/juce_core/native/juce_android_SystemStats.cpp"
    "C:/JUCE/modules/juce_core/native/juce_android_Threads.cpp"
    "C:/JUCE/modules/juce_core/native/juce_BasicNativeHeaders.h"
    "C:/JUCE/modules/juce_core/native/juce_curl_Network.cpp"
    "C:/JUCE/modules/juce_core/native/juce_linux_CommonFile.cpp"
    "C:/JUCE/modules/juce_core/native/juce_linux_Files.cpp"
    "C:/JUCE/modules/juce_core/native/juce_linux_Network.cpp"
    "C:/JUCE/modules/juce_core/native/juce_linux_SystemStats.cpp"
    "C:/JUCE/modules/juce_core/native/juce_linux_Threads.cpp"
    "C:/JUCE/modules/juce_core/native/juce_mac_ClangBugWorkaround.h"
    "C:/JUCE/modules/juce_core/native/juce_mac_Files.mm"
    "C:/JUCE/modules/juce_core/native/juce_mac_Network.mm"
    "C:/JUCE/modules/juce_core/native/juce_mac_Strings.mm"
    "C:/JUCE/modules/juce_core/native/juce_mac_SystemStats.mm"
    "C:/JUCE/modules/juce_core/native/juce_mac_Threads.mm"
    "C:/JUCE/modules/juce_core/native/juce_osx_ObjCHelpers.h"
    "C:/JUCE/modules/juce_core/native/juce_posix_IPAddress.h"
    "C:/JUCE/modules/juce_core/native/juce_posix_NamedPipe.cpp"
    "C:/JUCE/modules/juce_core/native/juce_posix_SharedCode.h"
    "C:/JUCE/modules/juce_core/native/juce_win32_ComSmartPtr.h"
    "C:/JUCE/modules/juce_core/native/juce_win32_Files.cpp"
    "C:/JUCE/modules/juce_core/native/juce_win32_Network.cpp"
    "C:/JUCE/modules/juce_core/native/juce_win32_Registry.cpp"
    "C:/JUCE/modules/juce_core/native/juce_win32_SystemStats.cpp"
    "C:/JUCE/modules/juce_core/native/juce_win32_Threads.cpp"
    "C:/JUCE/modules/juce_core/network/juce_IPAddress.cpp"
    "C:/JUCE/modules/juce_core/network/juce_IPAddress.h"
    "C:/JUCE/modules/juce_core/network/juce_MACAddress.cpp"
    "C:/JUCE/modules/juce_core/network/juce_MACAddress.h"
    "C:/JUCE/modules/juce_core/network/juce_NamedPipe.cpp"
    "C:/JUCE/modules/juce_core/network/juce_NamedPipe.h"
    "C:/JUCE/modules/juce_core/network/juce_Socket.cpp"
    "C:/JUCE/modules/juce_core/network/juce_Socket.h"
    "C:/JUCE/modules/juce_core/network/juce_URL.cpp"
    "C:/JUCE/modules/juce_core/network/juce_URL.h"
    "C:/JUCE/modules/juce_core/network/juce_WebInputStream.cpp"
    "C:/JUCE/modules/juce_core/network/juce_WebInputStream.h"
    "C:/JUCE/modules/juce_core/streams/juce_BufferedInputStream.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_BufferedInputStream.h"
    "C:/JUCE/modules/juce_core/streams/juce_FileInputSource.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_FileInputSource.h"
    "C:/JUCE/modules/juce_core/streams/juce_InputSource.h"
    "C:/JUCE/modules/juce_core/streams/juce_InputStream.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_InputStream.h"
    "C:/JUCE/modules/juce_core/streams/juce_MemoryInputStream.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_MemoryInputStream.h"
    "C:/JUCE/modules/juce_core/streams/juce_MemoryOutputStream.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_MemoryOutputStream.h"
    "C:/JUCE/modules/juce_core/streams/juce_OutputStream.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_OutputStream.h"
    "C:/JUCE/modules/juce_core/streams/juce_SubregionStream.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_SubregionStream.h"
    "C:/JUCE/modules/juce_core/streams/juce_URLInputSource.cpp"
    "C:/JUCE/modules/juce_core/streams/juce_URLInputSource.h"
    "C:/JUCE/modules/juce_core/system/juce_CompilerSupport.h"
    "C:/JUCE/modules/juce_core/system/juce_CompilerWarnings.h"
    "C:/JUCE/modules/juce_core/system/juce_PlatformDefs.h"
    "C:/JUCE/modules/juce_core/system/juce_StandardHeader.h"
    "C:/JUCE/modules/juce_core/system/juce_SystemStats.cpp"
    "C:/JUCE/modules/juce_core/system/juce_SystemStats.h"
    "C:/JUCE/modules/juce_core/system/juce_TargetPlatform.h"
    "C:/JUCE/modules/juce_core/text/juce_Base64.cpp"
    "C:/JUCE/modules/juce_core/text/juce_Base64.h"
    "C:/JUCE/modules/juce_core/text/juce_CharacterFunctions.cpp"
    "C:/JUCE/modules/juce_core/text/juce_CharacterFunctions.h"
    "C:/JUCE/modules/juce_core/text/juce_CharPointer_ASCII.h"
    "C:/JUCE/modules/juce_core/text/juce_CharPointer_UTF8.h"
    "C:/JUCE/modules/juce_core/text/juce_CharPointer_UTF16.h"
    "C:/JUCE/modules/juce_core/text/juce_CharPointer_UTF32.h"
    "C:/JUCE/modules/juce_core/text/juce_Identifier.cpp"
    "C:/JUCE/modules/juce_core/text/juce_Identifier.h"
    "C:/JUCE/modules/juce_core/text/juce_LocalisedStrings.cpp"
    "C:/JUCE/modules/juce_core/text/juce_LocalisedStrings.h"
    "C:/JUCE/modules/juce_core/text/juce_NewLine.h"
    "C:/JUCE/modules/juce_core/text/juce_String.cpp"
    "C:/JUCE/modules/juce_core/text/juce_String.h"
    "C:/JUCE/modules/juce_core/text/juce_StringArray.cpp"
    "C:/JUCE/modules/juce_core/text/juce_StringArray.h"
    "C:/JUCE/modules/juce_core/text/juce_StringPairArray.cpp"
    "C:/JUCE/modules/juce_core/text/juce_StringPairArray.h"
    "C:/JUCE/modules/juce_core/text/juce_StringPool.cpp"
    "C:/JUCE/modules/juce_core/text/juce_StringPool.h"
    "C:/JUCE/modules/juce_core/text/juce_StringRef.h"
    "C:/JUCE/modules/juce_core/text/juce_TextDiff.cpp"
    "C:/JUCE/modules/juce_core/text/juce_TextDiff.h"
    "C:/JUCE/modules/juce_core/threads/juce_ChildProcess.cpp"
    "C:/JUCE/modules/juce_core/threads/juce_ChildProcess.h"
    "C:/JUCE/modules/juce_core/threads/juce_CriticalSection.h"
    "C:/JUCE/modules/juce_core/threads/juce_DynamicLibrary.h"
    "C:/JUCE/modules/juce_core/threads/juce_HighResolutionTimer.cpp"
    "C:/JUCE/modules/juce_core/threads/juce_HighResolutionTimer.h"
    "C:/JUCE/modules/juce_core/threads/juce_InterProcessLock.h"
    "C:/JUCE/modules/juce_core/threads/juce_Process.h"
    "C:/JUCE/modules/juce_core/threads/juce_ReadWriteLock.cpp"
    "C:/JUCE/modules/juce_core/threads/juce_ReadWriteLock.h"
    "C:/JUCE/modules/juce_core/threads/juce_ScopedLock.h"
    "C:/JUCE/modules/juce_core/threads/juce_ScopedReadLock.h"
    "C:/JUCE/modules/juce_core/threads/juce_ScopedWriteLock.h"
    "C:/JUCE/modules/juce_core/threads/juce_SpinLock.h"
    "C:/JUCE/modules/juce_core/threads/juce_Thread.cpp"
    "C:/JUCE/modules/juce_core/threads/juce_Thread.h"
    "C:/JUCE/modules/juce_core/threads/juce_ThreadLocalValue.h"
    "C:/JUCE/modules/juce_core/threads/juce_ThreadPool.cpp"
    "C:/JUCE/modules/juce_core/threads/juce_ThreadPool.h"
    "C:/JUCE/modules/juce_core/threads/juce_TimeSliceThread.cpp"
    "C:/JUCE/modules/juce_core/threads/juce_TimeSliceThread.h"
    "C:/JUCE/modules/juce_core/threads/juce_WaitableEvent.cpp"
    "C:/JUCE/modules/juce_core/threads/juce_WaitableEvent.h"
    "C:/JUCE/modules/juce_core/time/juce_PerformanceCounter.cpp"
    "C:/JUCE/modules/juce_core/time/juce_PerformanceCounter.h"
    "C:/JUCE/modules/juce_core/time/juce_RelativeTime.cpp"
    "C:/JUCE/modules/juce_core/time/juce_RelativeTime.h"
    "C:/JUCE/modules/juce_core/time/juce_Time.cpp"
    "C:/JUCE/modules/juce_core/time/juce_Time.h"
    "C:/JUCE/modules/juce_core/unit_tests/juce_UnitTest.cpp"
    "C:/JUCE/modules/juce_core/unit_tests/juce_UnitTest.h"
    "C:/JUCE/modules/juce_core/unit_tests/juce_UnitTestCategories.h"
    "C:/JUCE/modules/juce_core/xml/juce_XmlDocument.cpp"
    "C:/JUCE/modules/juce_core/xml/juce_XmlDocument.h"
    "C:/JUCE/modules/juce_core/xml/juce_XmlElement.cpp"
    "C:/JUCE/modules/juce_core/xml/juce_XmlElement.h"
    "C:/JUCE/modules/juce_core/zip/zlib/adler32.c"
    "C:/JUCE/modules/juce_core/zip/zlib/compress.c"
    "C:/JUCE/modules/juce_core/zip/zlib/crc32.c"
    "C:/JUCE/modules/juce_core/zip/zlib/crc32.h"
    "C:/JUCE/modules/juce_core/zip/zlib/deflate.c"
    "C:/JUCE/modules/juce_core/zip/zlib/deflate.h"
    "C:/JUCE/modules/juce_core/zip/zlib/infback.c"
    "C:/JUCE/modules/juce_core/zip/zlib/inffast.c"
    "C:/JUCE/modules/juce_core/zip/zlib/inffast.h"
    "C:/JUCE/modules/juce_core/zip/zlib/inffixed.h"
    "C:/JUCE/modules/juce_core/zip/zlib/inflate.c"
    "C:/JUCE/modules/juce_core/zip/zlib/inflate.h"
    "C:/JUCE/modules/juce_core/zip/zlib/inftrees.c"
    "C:/JUCE/modules/juce_core/zip/zlib/inftrees.h"
    "C:/JUCE/modules/juce_core/zip/zlib/trees.c"
    "C:/JUCE/modules/juce_core/zip/zlib/trees.h"
    "C:/JUCE/modules/juce_core/zip/zlib/uncompr.c"
    "C:/JUCE/modules/juce_core/zip/zlib/zconf.h"
    "C:/JUCE/modules/juce_core/zip/zlib/zconf.in.h"
    "C:/JUCE/modules/juce_core/zip/zlib/zlib.h"
    "C:/JUCE/modules/juce_core/zip/zlib/zutil.c"
    "C:/JUCE/modules/juce_core/zip/zlib/zutil.h"
    "C:/JUCE/modules/juce_core/zip/juce_GZIPCompressorOutputStream.cpp"
    "C:/JUCE/modules/juce_core/zip/juce_GZIPCompressorOutputStream.h"
    "C:/JUCE/modules/juce_core/zip/juce_GZIPDecompressorInputStream.cpp"
    "C:/JUCE/modules/juce_core/zip/juce_GZIPDecompressorInputStream.h"
    "C:/JUCE/modules/juce_core/zip/juce_ZipFile.cpp"
    "C:/JUCE/modules/juce_core/zip/juce_ZipFile.h"
    "C:/JUCE/modules/juce_core/juce_core.cpp"
    "C:/JUCE/modules/juce_core/juce_core.mm"
    "C:/JUCE/modules/juce_core/juce_core.h"
    "C:/JUCE/modules/juce_data_structures/app_properties/juce_ApplicationProperties.cpp"
    "C:/JUCE/modules/juce_data_structures/app_properties/juce_ApplicationProperties.h"
    "C:/JUCE/modules/juce_data_structures/app_properties/juce_PropertiesFile.cpp"
    "C:/JUCE/modules/juce_data_structures/app_properties/juce_PropertiesFile.h"
    "C:/JUCE/modules/juce_data_structures/undomanager/juce_UndoableAction.h"
    "C:/JUCE/modules/juce_data_structures/undomanager/juce_UndoManager.cpp"
    "C:/JUCE/modules/juce_data_structures/undomanager/juce_UndoManager.h"
    "C:/JUCE/modules/juce_data_structures/values/juce_CachedValue.cpp"
    "C:/JUCE/modules/juce_data_structures/values/juce_CachedValue.h"
    "C:/JUCE/modules/juce_data_structures/values/juce_Value.cpp"
    "C:/JUCE/modules/juce_data_structures/values/juce_Value.h"
    "C:/JUCE/modules/juce_data_structures/values/juce_ValueTree.cpp"
    "C:/JUCE/modules/juce_data_structures/values/juce_ValueTree.h"
    "C:/JUCE/modules/juce_data_structures/values/juce_ValueTreeSynchroniser.cpp"
    "C:/JUCE/modules/juce_data_structures/values/juce_ValueTreeSynchroniser.h"
    "C:/JUCE/modules/juce_data_structures/values/juce_ValueWithDefault.cpp"
    "C:/JUCE/modules/juce_data_structures/values/juce_ValueWithDefault.h"
    "C:/JUCE/modules/juce_data_structures/juce_data_structures.cpp"
    "C:/JUCE/modules/juce_data_structures/juce_data_structures.mm"
    "C:/JUCE/modules/juce_data_structures/juce_data_structures.h"
    "C:/JUCE/modules/juce_events/broadcasters/juce_ActionBroadcaster.cpp"
    "C:/JUCE/modules/juce_events/broadcasters/juce_ActionBroadcaster.h"
    "C:/JUCE/modules/juce_events/broadcasters/juce_ActionListener.h"
    "C:/JUCE/modules/juce_events/broadcasters/juce_AsyncUpdater.cpp"
    "C:/JUCE/modules/juce_events/broadcasters/juce_AsyncUpdater.h"
    "C:/JUCE/modules/juce_events/broadcasters/juce_ChangeBroadcaster.cpp"
    "C:/JUCE/modules/juce_events/broadcasters/juce_ChangeBroadcaster.h"
    "C:/JUCE/modules/juce_events/broadcasters/juce_ChangeListener.h"
    "C:/JUCE/modules/juce_events/interprocess/juce_ConnectedChildProcess.cpp"
    "C:/JUCE/modules/juce_events/interprocess/juce_ConnectedChildProcess.h"
    "C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnection.cpp"
    "C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnection.h"
    "C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnectionServer.cpp"
    "C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnectionServer.h"
    "C:/JUCE/modules/juce_events/interprocess/juce_NetworkServiceDiscovery.cpp"
    "C:/JUCE/modules/juce_events/interprocess/juce_NetworkServiceDiscovery.h"
    "C:/JUCE/modules/juce_events/messages/juce_ApplicationBase.cpp"
    "C:/JUCE/modules/juce_events/messages/juce_ApplicationBase.h"
    "C:/JUCE/modules/juce_events/messages/juce_CallbackMessage.h"
    "C:/JUCE/modules/juce_events/messages/juce_DeletedAtShutdown.cpp"
    "C:/JUCE/modules/juce_events/messages/juce_DeletedAtShutdown.h"
    "C:/JUCE/modules/juce_events/messages/juce_Initialisation.h"
    "C:/JUCE/modules/juce_events/messages/juce_Message.h"
    "C:/JUCE/modules/juce_events/messages/juce_MessageListener.cpp"
    "C:/JUCE/modules/juce_events/messages/juce_MessageListener.h"
    "C:/JUCE/modules/juce_events/messages/juce_MessageManager.cpp"
    "C:/JUCE/modules/juce_events/messages/juce_MessageManager.h"
    "C:/JUCE/modules/juce_events/messages/juce_MountedVolumeListChangeDetector.h"
    "C:/JUCE/modules/juce_events/messages/juce_NotificationType.h"
    "C:/JUCE/modules/juce_events/native/juce_android_Messaging.cpp"
    "C:/JUCE/modules/juce_events/native/juce_ios_MessageManager.mm"
    "C:/JUCE/modules/juce_events/native/juce_linux_EventLoop.h"
    "C:/JUCE/modules/juce_events/native/juce_linux_Messaging.cpp"
    "C:/JUCE/modules/juce_events/native/juce_mac_MessageManager.mm"
    "C:/JUCE/modules/juce_events/native/juce_osx_MessageQueue.h"
    "C:/JUCE/modules/juce_events/native/juce_win32_HiddenMessageWindow.h"
    "C:/JUCE/modules/juce_events/native/juce_win32_Messaging.cpp"
    "C:/JUCE/modules/juce_events/native/juce_win32_WinRTWrapper.cpp"
    "C:/JUCE/modules/juce_events/native/juce_win32_WinRTWrapper.h"
    "C:/JUCE/modules/juce_events/timers/juce_MultiTimer.cpp"
    "C:/JUCE/modules/juce_events/timers/juce_MultiTimer.h"
    "C:/JUCE/modules/juce_events/timers/juce_Timer.cpp"
    "C:/JUCE/modules/juce_events/timers/juce_Timer.h"
    "C:/JUCE/modules/juce_events/juce_events.cpp"
    "C:/JUCE/modules/juce_events/juce_events.mm"
    "C:/JUCE/modules/juce_events/juce_events.h"
    "C:/JUCE/modules/juce_graphics/colour/juce_Colour.cpp"
    "C:/JUCE/modules/juce_graphics/colour/juce_Colour.h"
    "C:/JUCE/modules/juce_graphics/colour/juce_ColourGradient.cpp"
    "C:/JUCE/modules/juce_graphics/colour/juce_ColourGradient.h"
    "C:/JUCE/modules/juce_graphics/colour/juce_Colours.cpp"
    "C:/JUCE/modules/juce_graphics/colour/juce_Colours.h"
    "C:/JUCE/modules/juce_graphics/colour/juce_FillType.cpp"
    "C:/JUCE/modules/juce_graphics/colour/juce_FillType.h"
    "C:/JUCE/modules/juce_graphics/colour/juce_PixelFormats.h"
    "C:/JUCE/modules/juce_graphics/contexts/juce_GraphicsContext.cpp"
    "C:/JUCE/modules/juce_graphics/contexts/juce_GraphicsContext.h"
    "C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsContext.h"
    "C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsPostScriptRenderer.cpp"
    "C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsPostScriptRenderer.h"
    "C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsSoftwareRenderer.cpp"
    "C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsSoftwareRenderer.h"
    "C:/JUCE/modules/juce_graphics/effects/juce_DropShadowEffect.cpp"
    "C:/JUCE/modules/juce_graphics/effects/juce_DropShadowEffect.h"
    "C:/JUCE/modules/juce_graphics/effects/juce_GlowEffect.cpp"
    "C:/JUCE/modules/juce_graphics/effects/juce_GlowEffect.h"
    "C:/JUCE/modules/juce_graphics/effects/juce_ImageEffectFilter.h"
    "C:/JUCE/modules/juce_graphics/fonts/juce_AttributedString.cpp"
    "C:/JUCE/modules/juce_graphics/fonts/juce_AttributedString.h"
    "C:/JUCE/modules/juce_graphics/fonts/juce_CustomTypeface.cpp"
    "C:/JUCE/modules/juce_graphics/fonts/juce_CustomTypeface.h"
    "C:/JUCE/modules/juce_graphics/fonts/juce_Font.cpp"
    "C:/JUCE/modules/juce_graphics/fonts/juce_Font.h"
    "C:/JUCE/modules/juce_graphics/fonts/juce_GlyphArrangement.cpp"
    "C:/JUCE/modules/juce_graphics/fonts/juce_GlyphArrangement.h"
    "C:/JUCE/modules/juce_graphics/fonts/juce_TextLayout.cpp"
    "C:/JUCE/modules/juce_graphics/fonts/juce_TextLayout.h"
    "C:/JUCE/modules/juce_graphics/fonts/juce_Typeface.cpp"
    "C:/JUCE/modules/juce_graphics/fonts/juce_Typeface.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_AffineTransform.cpp"
    "C:/JUCE/modules/juce_graphics/geometry/juce_AffineTransform.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_BorderSize.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_EdgeTable.cpp"
    "C:/JUCE/modules/juce_graphics/geometry/juce_EdgeTable.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_Line.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_Parallelogram.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_Path.cpp"
    "C:/JUCE/modules/juce_graphics/geometry/juce_Path.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_PathIterator.cpp"
    "C:/JUCE/modules/juce_graphics/geometry/juce_PathIterator.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_PathStrokeType.cpp"
    "C:/JUCE/modules/juce_graphics/geometry/juce_PathStrokeType.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_Point.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_Rectangle.h"
    "C:/JUCE/modules/juce_graphics/geometry/juce_RectangleList.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/cderror.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/changes to libjpeg for JUCE.txt"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcapimin.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcapistd.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jccoefct.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jccolor.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcdctmgr.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jchuff.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jchuff.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcinit.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcmainct.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcmarker.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcmaster.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcomapi.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jconfig.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcparam.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcphuff.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcprepct.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcsample.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jctrans.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdapimin.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdapistd.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdatasrc.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdcoefct.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdcolor.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdct.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jddctmgr.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdhuff.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdhuff.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdinput.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmainct.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmarker.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmaster.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmerge.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdphuff.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdpostct.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdsample.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdtrans.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jerror.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jerror.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jfdctflt.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jfdctfst.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jfdctint.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctflt.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctfst.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctint.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctred.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jinclude.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmemmgr.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmemnobs.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmemsys.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmorecfg.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jpegint.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jpeglib.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jquant1.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jquant2.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jutils.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/jversion.h"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/transupp.c"
    "C:/JUCE/modules/juce_graphics/image_formats/jpglib/transupp.h"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/libpng_readme.txt"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/png.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/png.h"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngconf.h"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngdebug.h"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngerror.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngget.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pnginfo.h"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngmem.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngpread.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngpriv.h"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngread.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngrio.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngrtran.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngrutil.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngset.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngstruct.h"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngtrans.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwio.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwrite.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwtran.c"
    "C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwutil.c"
    "C:/JUCE/modules/juce_graphics/image_formats/juce_GIFLoader.cpp"
    "C:/JUCE/modules/juce_graphics/image_formats/juce_JPEGLoader.cpp"
    "C:/JUCE/modules/juce_graphics/image_formats/juce_PNGLoader.cpp"
    "C:/JUCE/modules/juce_graphics/images/juce_Image.cpp"
    "C:/JUCE/modules/juce_graphics/images/juce_Image.h"
    "C:/JUCE/modules/juce_graphics/images/juce_ImageCache.cpp"
    "C:/JUCE/modules/juce_graphics/images/juce_ImageCache.h"
    "C:/JUCE/modules/juce_graphics/images/juce_ImageConvolutionKernel.cpp"
    "C:/JUCE/modules/juce_graphics/images/juce_ImageConvolutionKernel.h"
    "C:/JUCE/modules/juce_graphics/images/juce_ImageFileFormat.cpp"
    "C:/JUCE/modules/juce_graphics/images/juce_ImageFileFormat.h"
    "C:/JUCE/modules/juce_graphics/native/juce_android_Fonts.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_android_GraphicsContext.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_android_IconHelpers.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_freetype_Fonts.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_linux_Fonts.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_linux_IconHelpers.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_mac_CoreGraphicsContext.h"
    "C:/JUCE/modules/juce_graphics/native/juce_mac_CoreGraphicsContext.mm"
    "C:/JUCE/modules/juce_graphics/native/juce_mac_CoreGraphicsHelpers.h"
    "C:/JUCE/modules/juce_graphics/native/juce_mac_Fonts.mm"
    "C:/JUCE/modules/juce_graphics/native/juce_mac_IconHelpers.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_RenderingHelpers.h"
    "C:/JUCE/modules/juce_graphics/native/juce_win32_Direct2DGraphicsContext.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_win32_Direct2DGraphicsContext.h"
    "C:/JUCE/modules/juce_graphics/native/juce_win32_DirectWriteTypeface.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_win32_DirectWriteTypeLayout.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_win32_Fonts.cpp"
    "C:/JUCE/modules/juce_graphics/native/juce_win32_IconHelpers.cpp"
    "C:/JUCE/modules/juce_graphics/placement/juce_Justification.h"
    "C:/JUCE/modules/juce_graphics/placement/juce_RectanglePlacement.cpp"
    "C:/JUCE/modules/juce_graphics/placement/juce_RectanglePlacement.h"
    "C:/JUCE/modules/juce_graphics/juce_graphics.cpp"
    "C:/JUCE/modules/juce_graphics/juce_graphics.mm"
    "C:/JUCE/modules/juce_graphics/juce_graphics.h"
    "C:/JUCE/modules/juce_gui_basics/application/juce_Application.cpp"
    "C:/JUCE/modules/juce_gui_basics/application/juce_Application.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ArrowButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ArrowButton.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_Button.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_Button.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_DrawableButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_DrawableButton.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_HyperlinkButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_HyperlinkButton.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ImageButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ImageButton.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ShapeButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ShapeButton.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_TextButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_TextButton.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ToggleButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ToggleButton.h"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ToolbarButton.cpp"
    "C:/JUCE/modules/juce_gui_basics/buttons/juce_ToolbarButton.h"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandID.h"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandInfo.cpp"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandInfo.h"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandManager.cpp"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandManager.h"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandTarget.cpp"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandTarget.h"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_KeyPressMappingSet.cpp"
    "C:/JUCE/modules/juce_gui_basics/commands/juce_KeyPressMappingSet.h"
    "C:/JUCE/modules/juce_gui_basics/components/juce_CachedComponentImage.h"
    "C:/JUCE/modules/juce_gui_basics/components/juce_Component.cpp"
    "C:/JUCE/modules/juce_gui_basics/components/juce_Component.h"
    "C:/JUCE/modules/juce_gui_basics/components/juce_ComponentListener.cpp"
    "C:/JUCE/modules/juce_gui_basics/components/juce_ComponentListener.h"
    "C:/JUCE/modules/juce_gui_basics/components/juce_ModalComponentManager.cpp"
    "C:/JUCE/modules/juce_gui_basics/components/juce_ModalComponentManager.h"
    "C:/JUCE/modules/juce_gui_basics/desktop/juce_Desktop.cpp"
    "C:/JUCE/modules/juce_gui_basics/desktop/juce_Desktop.h"
    "C:/JUCE/modules/juce_gui_basics/desktop/juce_Displays.cpp"
    "C:/JUCE/modules/juce_gui_basics/desktop/juce_Displays.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_Drawable.cpp"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_Drawable.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableComposite.cpp"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableComposite.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableImage.cpp"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableImage.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawablePath.cpp"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawablePath.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableRectangle.cpp"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableRectangle.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableShape.cpp"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableShape.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableText.cpp"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableText.h"
    "C:/JUCE/modules/juce_gui_basics/drawables/juce_SVGParser.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ContentSharer.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ContentSharer.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsDisplayComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsDisplayComponent.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsList.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsList.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileBrowserComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileBrowserComponent.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileBrowserListener.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooser.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooser.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooserDialogBox.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooserDialogBox.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileListComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileListComponent.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FilenameComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FilenameComponent.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FilePreviewComponent.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileSearchPathListComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileSearchPathListComponent.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileTreeComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileTreeComponent.h"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ImagePreviewComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ImagePreviewComponent.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_CaretComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_CaretComponent.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyboardFocusTraverser.cpp"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyboardFocusTraverser.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyListener.cpp"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyListener.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyPress.cpp"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyPress.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_ModifierKeys.cpp"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_ModifierKeys.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_SystemClipboard.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_TextEditorKeyMapper.h"
    "C:/JUCE/modules/juce_gui_basics/keyboard/juce_TextInputTarget.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_AnimatedPosition.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_AnimatedPositionBehaviours.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentAnimator.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentAnimator.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBoundsConstrainer.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBoundsConstrainer.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBuilder.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBuilder.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentMovementWatcher.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentMovementWatcher.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ConcertinaPanel.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ConcertinaPanel.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_FlexBox.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_FlexBox.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_FlexItem.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_Grid.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_Grid.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_GridItem.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_GridItem.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_GroupComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_GroupComponent.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_MultiDocumentPanel.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_MultiDocumentPanel.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableBorderComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableBorderComponent.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableCornerComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableCornerComponent.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableEdgeComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableEdgeComponent.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ScrollBar.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_ScrollBar.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_SidePanel.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_SidePanel.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutManager.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutManager.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutResizerBar.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutResizerBar.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableObjectResizer.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableObjectResizer.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedButtonBar.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedButtonBar.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedComponent.h"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_Viewport.cpp"
    "C:/JUCE/modules/juce_gui_basics/layout/juce_Viewport.h"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel.cpp"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel.h"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V1.cpp"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V1.h"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V2.cpp"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V2.h"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V3.cpp"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V3.h"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V4.cpp"
    "C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V4.h"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_BurgerMenuComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_BurgerMenuComponent.h"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarComponent.h"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarModel.cpp"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarModel.h"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_PopupMenu.cpp"
    "C:/JUCE/modules/juce_gui_basics/menus/juce_PopupMenu.h"
    "C:/JUCE/modules/juce_gui_basics/misc/juce_BubbleComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/misc/juce_BubbleComponent.h"
    "C:/JUCE/modules/juce_gui_basics/misc/juce_DropShadower.cpp"
    "C:/JUCE/modules/juce_gui_basics/misc/juce_DropShadower.h"
    "C:/JUCE/modules/juce_gui_basics/misc/juce_JUCESplashScreen.cpp"
    "C:/JUCE/modules/juce_gui_basics/misc/juce_JUCESplashScreen.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_ComponentDragger.cpp"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_ComponentDragger.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_DragAndDropContainer.cpp"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_DragAndDropContainer.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_DragAndDropTarget.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_FileDragAndDropTarget.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_LassoComponent.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseCursor.cpp"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseCursor.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseEvent.cpp"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseEvent.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInactivityDetector.cpp"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInactivityDetector.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInputSource.cpp"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInputSource.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseListener.cpp"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseListener.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_SelectedItemSet.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_TextDragAndDropTarget.h"
    "C:/JUCE/modules/juce_gui_basics/mouse/juce_TooltipClient.h"
    "C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_X11_DragAndDrop.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_X11_Symbols.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_X11_Symbols.h"
    "C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_XWindowSystem.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_XWindowSystem.h"
    "C:/JUCE/modules/juce_gui_basics/native/juce_android_ContentSharer.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_android_FileChooser.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_android_Windowing.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_common_MimeTypes.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_ios_ContentSharer.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_ios_FileChooser.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_ios_UIViewComponentPeer.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_ios_Windowing.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_linux_FileChooser.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_linux_Windowing.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_mac_FileChooser.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_mac_MainMenu.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_mac_MouseCursor.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_mac_NSViewComponentPeer.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_mac_Windowing.mm"
    "C:/JUCE/modules/juce_gui_basics/native/juce_MultiTouchMapper.h"
    "C:/JUCE/modules/juce_gui_basics/native/juce_win32_DragAndDrop.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_win32_FileChooser.cpp"
    "C:/JUCE/modules/juce_gui_basics/native/juce_win32_Windowing.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_MarkerList.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_MarkerList.h"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinate.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinate.h"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinatePositioner.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinatePositioner.h"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeParallelogram.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeParallelogram.h"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePoint.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePoint.h"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePointPath.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePointPath.h"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeRectangle.cpp"
    "C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeRectangle.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_BooleanPropertyComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_BooleanPropertyComponent.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_ButtonPropertyComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_ButtonPropertyComponent.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_ChoicePropertyComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_ChoicePropertyComponent.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_MultiChoicePropertyComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_MultiChoicePropertyComponent.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyComponent.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyPanel.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyPanel.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_SliderPropertyComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_SliderPropertyComponent.h"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_TextPropertyComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/properties/juce_TextPropertyComponent.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ComboBox.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ComboBox.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ImageComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ImageComponent.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_Label.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_Label.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ListBox.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ListBox.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ProgressBar.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ProgressBar.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_Slider.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_Slider.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TableHeaderComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TableHeaderComponent.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TableListBox.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TableListBox.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TextEditor.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TextEditor.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_Toolbar.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_Toolbar.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemComponent.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemComponent.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemFactory.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemPalette.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemPalette.h"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TreeView.cpp"
    "C:/JUCE/modules/juce_gui_basics/widgets/juce_TreeView.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_AlertWindow.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_AlertWindow.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_CallOutBox.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_CallOutBox.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_ComponentPeer.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_ComponentPeer.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_DialogWindow.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_DialogWindow.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_DocumentWindow.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_DocumentWindow.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_NativeMessageBox.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_ResizableWindow.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_ResizableWindow.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_ThreadWithProgressWindow.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_ThreadWithProgressWindow.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_TooltipWindow.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_TooltipWindow.h"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_TopLevelWindow.cpp"
    "C:/JUCE/modules/juce_gui_basics/windows/juce_TopLevelWindow.h"
    "C:/JUCE/modules/juce_gui_basics/juce_gui_basics.cpp"
    "C:/JUCE/modules/juce_gui_basics/juce_gui_basics.mm"
    "C:/JUCE/modules/juce_gui_basics/juce_gui_basics.h"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeDocument.cpp"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeDocument.h"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeEditorComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeEditorComponent.h"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeTokeniser.h"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniser.cpp"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniser.h"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniserFunctions.h"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_LuaCodeTokeniser.cpp"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_LuaCodeTokeniser.h"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_XMLCodeTokeniser.cpp"
    "C:/JUCE/modules/juce_gui_extra/code_editor/juce_XMLCodeTokeniser.h"
    "C:/JUCE/modules/juce_gui_extra/documents/juce_FileBasedDocument.cpp"
    "C:/JUCE/modules/juce_gui_extra/documents/juce_FileBasedDocument.h"
    "C:/JUCE/modules/juce_gui_extra/embedding/juce_ActiveXControlComponent.h"
    "C:/JUCE/modules/juce_gui_extra/embedding/juce_AndroidViewComponent.h"
    "C:/JUCE/modules/juce_gui_extra/embedding/juce_HWNDComponent.h"
    "C:/JUCE/modules/juce_gui_extra/embedding/juce_NSViewComponent.h"
    "C:/JUCE/modules/juce_gui_extra/embedding/juce_ScopedDPIAwarenessDisabler.h"
    "C:/JUCE/modules/juce_gui_extra/embedding/juce_UIViewComponent.h"
    "C:/JUCE/modules/juce_gui_extra/embedding/juce_XEmbedComponent.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_AnimatedAppComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_AnimatedAppComponent.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_AppleRemote.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_BubbleMessageComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_BubbleMessageComponent.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_ColourSelector.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_ColourSelector.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_KeyMappingEditorComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_KeyMappingEditorComponent.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_LiveConstantEditor.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_LiveConstantEditor.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_PreferencesPanel.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_PreferencesPanel.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_PushNotifications.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_PushNotifications.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_RecentlyOpenedFilesList.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_RecentlyOpenedFilesList.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_SplashScreen.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_SplashScreen.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_SystemTrayIconComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_SystemTrayIconComponent.h"
    "C:/JUCE/modules/juce_gui_extra/misc/juce_WebBrowserComponent.h"
    "C:/JUCE/modules/juce_gui_extra/native/juce_android_PushNotifications.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_android_WebBrowserComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_AndroidViewComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_ios_PushNotifications.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_ios_UIViewComponent.mm"
    "C:/JUCE/modules/juce_gui_extra/native/juce_linux_X11_SystemTrayIcon.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_linux_X11_WebBrowserComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_linux_XEmbedComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_mac_AppleRemote.mm"
    "C:/JUCE/modules/juce_gui_extra/native/juce_mac_CarbonViewWrapperComponent.h"
    "C:/JUCE/modules/juce_gui_extra/native/juce_mac_NSViewComponent.mm"
    "C:/JUCE/modules/juce_gui_extra/native/juce_mac_PushNotifications.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_mac_SystemTrayIcon.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_mac_WebBrowserComponent.mm"
    "C:/JUCE/modules/juce_gui_extra/native/juce_win32_ActiveXComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_win32_HWNDComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_win32_SystemTrayIcon.cpp"
    "C:/JUCE/modules/juce_gui_extra/native/juce_win32_WebBrowserComponent.cpp"
    "C:/JUCE/modules/juce_gui_extra/juce_gui_extra.cpp"
    "C:/JUCE/modules/juce_gui_extra/juce_gui_extra.mm"
    "C:/JUCE/modules/juce_gui_extra/juce_gui_extra.h"
    "C:/JUCE/modules/juce_opengl/geometry/juce_Draggable3DOrientation.h"
    "C:/JUCE/modules/juce_opengl/geometry/juce_Matrix3D.h"
    "C:/JUCE/modules/juce_opengl/geometry/juce_Quaternion.h"
    "C:/JUCE/modules/juce_opengl/geometry/juce_Vector3D.h"
    "C:/JUCE/modules/juce_opengl/native/juce_MissingGLDefinitions.h"
    "C:/JUCE/modules/juce_opengl/native/juce_OpenGL_android.h"
    "C:/JUCE/modules/juce_opengl/native/juce_OpenGL_ios.h"
    "C:/JUCE/modules/juce_opengl/native/juce_OpenGL_linux_X11.h"
    "C:/JUCE/modules/juce_opengl/native/juce_OpenGL_osx.h"
    "C:/JUCE/modules/juce_opengl/native/juce_OpenGL_win32.h"
    "C:/JUCE/modules/juce_opengl/native/juce_OpenGLExtensions.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLContext.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLContext.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLFrameBuffer.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLFrameBuffer.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLGraphicsContext.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLGraphicsContext.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLHelpers.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLHelpers.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLImage.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLImage.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLPixelFormat.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLPixelFormat.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLRenderer.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLShaderProgram.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLShaderProgram.h"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLTexture.cpp"
    "C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLTexture.h"
    "C:/JUCE/modules/juce_opengl/utils/juce_OpenGLAppComponent.cpp"
    "C:/JUCE/modules/juce_opengl/utils/juce_OpenGLAppComponent.h"
    "C:/JUCE/modules/juce_opengl/juce_opengl.cpp"
    "C:/JUCE/modules/juce_opengl/juce_opengl.mm"
    "C:/JUCE/modules/juce_opengl/juce_opengl.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCAddress.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCAddress.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCArgument.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCArgument.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCBundle.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCBundle.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCMessage.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCMessage.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCReceiver.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCReceiver.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCSender.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCSender.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCTimeTag.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCTimeTag.h"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCTypes.cpp"
    "C:/JUCE/modules/juce_osc/osc/juce_OSCTypes.h"
    "C:/JUCE/modules/juce_osc/juce_osc.cpp"
    "C:/JUCE/modules/juce_osc/juce_osc.h"
    "../../../JuceLibraryCode/AppConfig.h"
    "../../../JuceLibraryCode/include_juce_audio_basics.cpp"
    "../../../JuceLibraryCode/include_juce_audio_devices.cpp"
    "../../../JuceLibraryCode/include_juce_audio_formats.cpp"
    "../../../JuceLibraryCode/include_juce_audio_plugin_client_Standalone.cpp"
    "../../../JuceLibraryCode/include_juce_audio_plugin_client_utils.cpp"
    "../../../JuceLibraryCode/include_juce_audio_processors.cpp"
    "../../../JuceLibraryCode/include_juce_audio_utils.cpp"
    "../../../JuceLibraryCode/include_juce_core.cpp"
    "../../../JuceLibraryCode/include_juce_data_structures.cpp"
    "../../../JuceLibraryCode/include_juce_events.cpp"
    "../../../JuceLibraryCode/include_juce_graphics.cpp"
    "../../../JuceLibraryCode/include_juce_gui_basics.cpp"
    "../../../JuceLibraryCode/include_juce_gui_extra.cpp"
    "../../../JuceLibraryCode/include_juce_opengl.cpp"
    "../../../JuceLibraryCode/include_juce_osc.cpp"
    "../../../JuceLibraryCode/JuceHeader.h"
    "../../../JuceLibraryCode/JucePluginDefines.h"
)

set_source_files_properties("C:/JUCE/modules/juce_audio_basics/audio_play_head/juce_AudioPlayHead.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioChannelSet.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioChannelSet.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioDataConverters.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioDataConverters.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioProcessLoadMeasurer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioProcessLoadMeasurer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_AudioSampleBuffer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_FloatVectorOperations.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/buffers/juce_FloatVectorOperations.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiBuffer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiBuffer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiFile.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiFile.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiKeyboardState.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiKeyboardState.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessage.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessage.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessageSequence.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiMessageSequence.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiRPN.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/midi/juce_MidiRPN.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEInstrument.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEInstrument.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEMessages.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEMessages.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPENote.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPENote.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserVoice.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPESynthesiserVoice.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEUtils.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEUtils.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEValue.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEValue.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEZoneLayout.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/mpe/juce_MPEZoneLayout.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/native/juce_mac_CoreAudioLayouts.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_AudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_BufferingAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_BufferingAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ChannelRemappingAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ChannelRemappingAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_IIRFilterAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_IIRFilterAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_MemoryAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_MemoryAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_MixerAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_MixerAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_PositionableAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ResamplingAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ResamplingAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ReverbAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ReverbAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ToneGeneratorAudioSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/sources/juce_ToneGeneratorAudioSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/synthesisers/juce_Synthesiser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/synthesisers/juce_Synthesiser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_ADSR.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_Decibels.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_GenericInterpolator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_IIRFilter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_IIRFilter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_Interpolators.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_Interpolators.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_LagrangeInterpolator.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_Reverb.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_SmoothedValue.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_SmoothedValue.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/utilities/juce_WindowedSincInterpolator.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/juce_audio_basics.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/juce_audio_basics.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_basics/juce_audio_basics.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioDeviceManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioDeviceManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODevice.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODevice.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODeviceType.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/audio_io/juce_AudioIODeviceType.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/audio_io/juce_SystemAudioVolume.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiDevices.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiDevices.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiMessageCollector.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/midi_io/juce_MidiMessageCollector.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStreamBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStreamBuilder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/AudioStreamCallback.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Definitions.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/LatencyTuner.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Oboe.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/ResultWithValue.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/StabilizedCallback.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Utilities.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/include/oboe/Version.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AAudioLoader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AAudioLoader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AudioStreamAAudio.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/aaudio/AudioStreamAAudio.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioClock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioSourceCaller.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioSourceCaller.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/AudioStreamBuilder.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/DataConversionFlowGraph.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/DataConversionFlowGraph.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FilterAudioStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FilterAudioStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockAdapter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockAdapter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockReader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockReader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockWriter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/FixedBlockWriter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/LatencyTuner.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/MonotonicCounter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/OboeDebug.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/QuirksManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/QuirksManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceFloatCaller.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceFloatCaller.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceI16Caller.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/SourceI16Caller.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/StabilizedCallback.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Trace.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Trace.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Utilities.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/common/Version.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoBuffer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoBuffer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoController.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoController.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerIndirect.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/fifo/FifoControllerIndirect.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/HyperbolicCosineWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/IntegerRatio.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/IntegerRatio.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/KaiserWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/LinearResampler.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/LinearResampler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/MultiChannelResampler.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/MultiChannelResampler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResampler.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResampler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerMono.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerMono.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerStereo.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/PolyphaseResamplerStereo.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResampler.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResampler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResamplerStereo.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/resampler/SincResamplerStereo.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ClipToRange.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ClipToRange.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/FlowGraphNode.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/FlowGraphNode.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ManyToMultiConverter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/ManyToMultiConverter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/MonoToMultiConverter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/MonoToMultiConverter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/RampLinear.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/RampLinear.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SampleRateConverter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SampleRateConverter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkFloat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkFloat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI16.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI16.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI24.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SinkI24.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceFloat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceFloat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI16.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI16.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI24.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/flowgraph/SourceI24.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioInputStreamOpenSLES.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioInputStreamOpenSLES.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioOutputStreamOpenSLES.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioOutputStreamOpenSLES.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamBuffered.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamBuffered.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamOpenSLES.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/AudioStreamOpenSLES.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/EngineOpenSLES.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/EngineOpenSLES.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OpenSLESUtilities.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OpenSLESUtilities.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OutputMixerOpenSLES.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/src/opensles/OutputMixerOpenSLES.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/CMakeLists.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/oboe/readme.md" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_android_Audio.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_android_HighPerformanceAudioHelpers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_android_Midi.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_android_Oboe.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_android_OpenSL.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_ios_Audio.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_ios_Audio.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_linux_ALSA.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_linux_Bela.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_linux_JackAudio.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_linux_Midi.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_mac_CoreAudio.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_mac_CoreMidi.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_MidiDataConcatenator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_win32_ASIO.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_win32_DirectSound.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_win32_Midi.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/native/juce_win32_WASAPI.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/sources/juce_AudioSourcePlayer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/sources/juce_AudioSourcePlayer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/sources/juce_AudioTransportSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/sources/juce_AudioTransportSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/juce_audio_devices.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/juce_audio_devices.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_devices/juce_audio_devices.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/all.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/bitmath.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/bitreader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/bitwriter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/cpu.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/crc.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/fixed.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/float.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/format.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/lpc.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/md5.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/memory.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/metadata.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/stream_encoder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/stream_encoder_framing.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/private/window.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/protected/all.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/protected/stream_decoder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/include/protected/stream_encoder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/bitmath.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/bitreader.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/bitwriter.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/cpu.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/crc.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/fixed.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/float.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/format.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/lpc_flac.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/md5.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/memory.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/stream_decoder.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/stream_encoder.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/stream_encoder_framing.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/libFLAC/window_flac.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/all.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/alloc.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/assert.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/callback.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/compat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/endswap.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/export.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/Flac Licence.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/format.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/metadata.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/ordinals.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/stream_decoder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/stream_encoder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/flac/win_utf8_io.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/coupled/res_books_51.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/coupled/res_books_stereo.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/floor/floor_books.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/books/uncoupled/res_books_uncoupled.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/floor_all.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_8.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_11.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_16.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/psych_44.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_8.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_16.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_44.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_44p51.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/residue_44u.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_8.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_11.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_16.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_22.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_32.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_44.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_44p51.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_44u.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/modes/setup_X.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/analysis.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/backends.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/bitrate.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/bitrate.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/block.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/codebook.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/codebook.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/codec_internal.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/envelope.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/envelope.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/floor0.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/floor1.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/highlevel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/info.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lookup.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lookup.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lookup_data.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lpc.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lpc.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lsp.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/lsp.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/mapping0.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/masking.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/mdct.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/mdct.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/misc.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/os.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/psy.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/psy.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/registry.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/registry.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/res0.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/scales.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/sharedbook.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/smallft.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/smallft.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/synthesis.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/vorbisenc.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/vorbisfile.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/window.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/libvorbis-1.3.2/lib/window.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/bitwise.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/codec.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/config_types.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/framing.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/Ogg Vorbis Licence.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/ogg.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/os_types.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/vorbisenc.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/oggvorbis/vorbisfile.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_AiffAudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_AiffAudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_CoreAudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_CoreAudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_FlacAudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_FlacAudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_LAMEEncoderAudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_LAMEEncoderAudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_MP3AudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_MP3AudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_OggVorbisAudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_OggVorbisAudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_WavAudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_WavAudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_WindowsMediaAudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/codecs/juce_WindowsMediaAudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReaderSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatReaderSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatWriter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioFormatWriter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioSubsectionReader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_AudioSubsectionReader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_BufferingAudioFormatReader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_BufferingAudioFormatReader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/format/juce_MemoryMappedAudioFormatReader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/sampler/juce_Sampler.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/sampler/juce_Sampler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/juce_audio_formats.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/juce_audio_formats.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_formats/juce_audio_formats.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AAX/juce_AAX_Modifier_Injector.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AAX/juce_AAX_Wrapper.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBaseHelper.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBuffer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUBuffer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewControl.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewControl.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUCarbonViewDispatch.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUDispatch.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUDispatch.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUInputElement.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUInputElement.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUInputFormatConverter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUMIDIBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUMIDIBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputElement.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUOutputElement.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUPlugInDispatch.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUPlugInDispatch.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUScopeElement.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUScopeElement.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUSilentTimeout.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUTimestampGenerator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/AUViewLocalizedStringKeys.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAtomic.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAtomicStack.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAudioChannelLayout.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAudioChannelLayout.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAUParameter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAUParameter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAAutoDisposer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CADebugMacros.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CADebugPrintf.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAException.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAHostTimeBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAMath.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAMutex.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAMutex.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CarbonEventHandler.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CarbonEventHandler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAReferenceCounted.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAStreamBasicDescription.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAStreamBasicDescription.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAThreadSafeList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAVectorUnit.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAVectorUnit.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAVectorUnitTypes.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/CAXException.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/ComponentBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/ComponentBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/MusicDeviceBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/CoreAudioUtilityClasses/MusicDeviceBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/juce_AU_Wrapper.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/AU/juce_AUv3_Wrapper.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode_Header.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode1.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode2.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_DigiCode3.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_MacUtilities.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_WinUtilities.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/RTAS/juce_RTAS_Wrapper.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/Standalone/juce_StandaloneFilterApp.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/Standalone/juce_StandaloneFilterWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/Unity/juce_Unity_Wrapper.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/Unity/juce_UnityPluginInterface.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_CarbonVisibility.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_CheckSettingMacros.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_CreatePluginFilter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_FakeMouseMoveGenerator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_IncludeModuleHeaders.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_IncludeSystemHeaders.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_PluginHostType.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_PluginUtilities.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/utility/juce_WindowsHooks.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/VST/juce_VST_Wrapper.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/VST/juce_VST_Wrapper.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/VST/juce_VSTCallbackHandler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/VST3/juce_VST3_Wrapper.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AAX.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_1.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AU_2.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_AUv3.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_1.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_2.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_3.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_4.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_utils.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_RTAS_utils.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Standalone.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_Unity.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_utils.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST_utils.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST2.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client_VST3.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_plugin_client/juce_audio_plugin_client.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormatManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format/juce_AudioPluginFormatManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/baseiids.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/classfactoryhelpers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fbuffer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fbuffer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fdebug.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fdebug.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fobject.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fobject.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstreamer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstreamer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstring.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/fstring.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/updatehandler.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/source/updatehandler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/thread/include/flock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/thread/source/flock.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/LICENSE.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/base/README.md" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/conststringtable.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/conststringtable.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/coreiids.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/falignpop.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/falignpush.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fplatform.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fstrdefs.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ftypes.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/funknown.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/funknown.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/futils.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/fvariant.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ibstream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/icloneable.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ipersistent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ipluginbase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/istringresult.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/iupdatehandler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/smartpointer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/typesizecheck.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ustring.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/base/ustring.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/gui/iplugview.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/gui/iplugviewcontentscalesupport.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstattributes.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstaudioprocessor.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstautomationstate.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstchannelcontextinfo.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstcomponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstcontextmenu.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsteditcontroller.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstevents.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsthostapplication.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstinterappaudio.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmessage.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmidicontrollers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstmidilearn.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstnoteexpression.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstparameterchanges.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstphysicalui.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstpluginterfacesupport.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstplugview.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstprefetchablesupport.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstprocesscontext.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstrepresentation.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivsttestplugprovider.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/ivstunits.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vstpshpack4.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vstspeaker.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/vst/vsttypes.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/LICENSE.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/pluginterfaces/README.md" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/memorystream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/memorystream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/pluginview.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/common/pluginview.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/hostclasses.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/hostclasses.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/pluginterfacesupport.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/hosting/pluginterfacesupport.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstbus.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstbus.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponentbase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstcomponentbase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vsteditcontroller.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vsteditcontroller.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstinitiids.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstparameters.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstparameters.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstpresetfile.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/source/vst/vstpresetfile.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/LICENSE.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/public.sdk/README.md" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/LICENSE.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/VST3_SDK/README.md" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_AU_Shared.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_AudioUnitPluginFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_AudioUnitPluginFormat.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_LADSPAPluginFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_LADSPAPluginFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_LegacyAudioParameter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3Common.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3Headers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3PluginFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VST3PluginFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTCommon.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTMidiEventList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTPluginFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/format_types/juce_VSTPluginFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioPluginInstance.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioPluginInstance.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessor.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessor.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorEditor.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorEditor.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorGraph.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorGraph.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorParameter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorParameterGroup.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_AudioProcessorParameterGroup.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_GenericAudioProcessorEditor.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_GenericAudioProcessorEditor.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_PluginDescription.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/processors/juce_PluginDescription.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/scanning/juce_KnownPluginList.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/scanning/juce_KnownPluginList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginDirectoryScanner.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginDirectoryScanner.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginListComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/scanning/juce_PluginListComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterBool.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterBool.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterChoice.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterChoice.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterFloat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterFloat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterInt.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioParameterInt.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorParameterWithID.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorParameterWithID.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorValueTreeState.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_AudioProcessorValueTreeState.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_ParameterAttachments.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_ParameterAttachments.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_RangedAudioParameter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/utilities/juce_RangedAudioParameter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/juce_audio_processors.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/juce_audio_processors.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_processors/juce_audio_processors.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/audio_cd/juce_AudioCDBurner.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/audio_cd/juce_AudioCDReader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/audio_cd/juce_AudioCDReader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioAppComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioAppComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioDeviceSelectorComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioDeviceSelectorComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnail.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnail.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnailBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnailCache.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioThumbnailCache.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioVisualiserComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_AudioVisualiserComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_BluetoothMidiDevicePairingDialogue.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_MidiKeyboardComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/gui/juce_MidiKeyboardComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_android_BluetoothMidiDevicePairingDialogue.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_ios_BluetoothMidiDevicePairingDialogue.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_linux_AudioCDReader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_linux_BluetoothMidiDevicePairingDialogue.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_mac_AudioCDBurner.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_mac_AudioCDReader.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_mac_BluetoothMidiDevicePairingDialogue.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_win_BluetoothMidiDevicePairingDialogue.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_win32_AudioCDBurner.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/native/juce_win32_AudioCDReader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/players/juce_AudioProcessorPlayer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/players/juce_AudioProcessorPlayer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/players/juce_SoundPlayer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/players/juce_SoundPlayer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/juce_audio_utils.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/juce_audio_utils.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_audio_utils/juce_audio_utils.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_AbstractFifo.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_AbstractFifo.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_Array.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ArrayAllocationBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ArrayBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ArrayBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_DynamicObject.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_DynamicObject.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ElementComparator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_HashMap.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_HashMap_test.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_LinkedListPointer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ListenerList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_NamedValueSet.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_NamedValueSet.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_OwnedArray.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_OwnedArray.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_PropertySet.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_PropertySet.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ReferenceCountedArray.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ReferenceCountedArray.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_ScopedValueSetter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_SortedSet.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_SparseSet.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_SparseSet.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_Variant.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/containers/juce_Variant.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_DirectoryIterator.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_DirectoryIterator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_File.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_File.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileFilter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileFilter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileInputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileInputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileOutputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileOutputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileSearchPath.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_FileSearchPath.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_MemoryMappedFile.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_RangedDirectoryIterator.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_RangedDirectoryIterator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_TemporaryFile.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_TemporaryFile.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_WildcardFileFilter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/files/juce_WildcardFileFilter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/javascript/juce_Javascript.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/javascript/juce_Javascript.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/javascript/juce_JSON.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/javascript/juce_JSON.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/logging/juce_FileLogger.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/logging/juce_FileLogger.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/logging/juce_Logger.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/logging/juce_Logger.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_BigInteger.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_BigInteger.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_Expression.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_Expression.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_MathsFunctions.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_NormalisableRange.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_Random.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_Random.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_Range.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/maths/juce_StatisticsAccumulator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_AllocationHooks.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_AllocationHooks.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_Atomic.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_ByteOrder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_ContainerDeletePolicy.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_HeapBlock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_HeavyweightLeakedObjectDetector.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_LeakedObjectDetector.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_Memory.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_MemoryBlock.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_MemoryBlock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_OptionalScopedPointer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_ReferenceCountedObject.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_ScopedPointer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_SharedResourcePointer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_Singleton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/memory/juce_WeakReference.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_ConsoleApplication.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_ConsoleApplication.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_Result.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_Result.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_RuntimePermissions.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_RuntimePermissions.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_Uuid.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_Uuid.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/misc/juce_WindowsRegistry.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/java/README.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_Files.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_JNIHelpers.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_JNIHelpers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_Misc.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_Network.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_RuntimePermissions.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_SystemStats.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_android_Threads.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_BasicNativeHeaders.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_curl_Network.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_linux_CommonFile.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_linux_Files.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_linux_Network.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_linux_SystemStats.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_linux_Threads.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_mac_ClangBugWorkaround.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_mac_Files.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_mac_Network.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_mac_Strings.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_mac_SystemStats.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_mac_Threads.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_osx_ObjCHelpers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_posix_IPAddress.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_posix_NamedPipe.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_posix_SharedCode.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_win32_ComSmartPtr.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_win32_Files.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_win32_Network.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_win32_Registry.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_win32_SystemStats.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/native/juce_win32_Threads.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_IPAddress.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_IPAddress.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_MACAddress.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_MACAddress.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_NamedPipe.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_NamedPipe.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_Socket.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_Socket.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_URL.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_URL.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_WebInputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/network/juce_WebInputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_BufferedInputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_BufferedInputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_FileInputSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_FileInputSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_InputSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_InputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_InputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_MemoryInputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_MemoryInputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_MemoryOutputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_MemoryOutputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_OutputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_OutputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_SubregionStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_SubregionStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_URLInputSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/streams/juce_URLInputSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/system/juce_CompilerSupport.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/system/juce_CompilerWarnings.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/system/juce_PlatformDefs.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/system/juce_StandardHeader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/system/juce_SystemStats.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/system/juce_SystemStats.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/system/juce_TargetPlatform.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_Base64.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_Base64.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_CharacterFunctions.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_CharacterFunctions.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_CharPointer_ASCII.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_CharPointer_UTF8.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_CharPointer_UTF16.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_CharPointer_UTF32.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_Identifier.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_Identifier.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_LocalisedStrings.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_LocalisedStrings.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_NewLine.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_String.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_String.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_StringArray.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_StringArray.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_StringPairArray.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_StringPairArray.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_StringPool.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_StringPool.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_StringRef.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_TextDiff.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/text/juce_TextDiff.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ChildProcess.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ChildProcess.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_CriticalSection.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_DynamicLibrary.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_HighResolutionTimer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_HighResolutionTimer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_InterProcessLock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_Process.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ReadWriteLock.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ReadWriteLock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ScopedLock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ScopedReadLock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ScopedWriteLock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_SpinLock.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_Thread.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_Thread.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ThreadLocalValue.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ThreadPool.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_ThreadPool.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_TimeSliceThread.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_TimeSliceThread.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_WaitableEvent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/threads/juce_WaitableEvent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/time/juce_PerformanceCounter.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/time/juce_PerformanceCounter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/time/juce_RelativeTime.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/time/juce_RelativeTime.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/time/juce_Time.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/time/juce_Time.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/unit_tests/juce_UnitTest.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/unit_tests/juce_UnitTest.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/unit_tests/juce_UnitTestCategories.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/xml/juce_XmlDocument.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/xml/juce_XmlDocument.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/xml/juce_XmlElement.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/xml/juce_XmlElement.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/adler32.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/compress.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/crc32.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/crc32.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/deflate.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/deflate.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/infback.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/inffast.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/inffast.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/inffixed.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/inflate.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/inflate.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/inftrees.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/inftrees.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/trees.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/trees.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/uncompr.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/zconf.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/zconf.in.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/zlib.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/zutil.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/zlib/zutil.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/juce_GZIPCompressorOutputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/juce_GZIPCompressorOutputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/juce_GZIPDecompressorInputStream.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/juce_GZIPDecompressorInputStream.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/juce_ZipFile.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/zip/juce_ZipFile.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/juce_core.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/juce_core.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_core/juce_core.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/app_properties/juce_ApplicationProperties.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/app_properties/juce_ApplicationProperties.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/app_properties/juce_PropertiesFile.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/app_properties/juce_PropertiesFile.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/undomanager/juce_UndoableAction.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/undomanager/juce_UndoManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/undomanager/juce_UndoManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_CachedValue.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_CachedValue.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_Value.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_Value.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_ValueTree.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_ValueTree.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_ValueTreeSynchroniser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_ValueTreeSynchroniser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_ValueWithDefault.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/values/juce_ValueWithDefault.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/juce_data_structures.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/juce_data_structures.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_data_structures/juce_data_structures.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_ActionBroadcaster.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_ActionBroadcaster.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_ActionListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_AsyncUpdater.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_AsyncUpdater.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_ChangeBroadcaster.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_ChangeBroadcaster.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/broadcasters/juce_ChangeListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_ConnectedChildProcess.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_ConnectedChildProcess.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnection.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnection.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnectionServer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_InterprocessConnectionServer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_NetworkServiceDiscovery.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/interprocess/juce_NetworkServiceDiscovery.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_ApplicationBase.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_ApplicationBase.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_CallbackMessage.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_DeletedAtShutdown.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_DeletedAtShutdown.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_Initialisation.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_Message.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_MessageListener.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_MessageListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_MessageManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_MessageManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_MountedVolumeListChangeDetector.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/messages/juce_NotificationType.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_android_Messaging.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_ios_MessageManager.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_linux_EventLoop.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_linux_Messaging.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_mac_MessageManager.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_osx_MessageQueue.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_win32_HiddenMessageWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_win32_Messaging.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_win32_WinRTWrapper.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/native/juce_win32_WinRTWrapper.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/timers/juce_MultiTimer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/timers/juce_MultiTimer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/timers/juce_Timer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/timers/juce_Timer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/juce_events.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/juce_events.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_events/juce_events.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_Colour.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_Colour.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_ColourGradient.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_ColourGradient.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_Colours.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_Colours.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_FillType.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_FillType.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/colour/juce_PixelFormats.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/contexts/juce_GraphicsContext.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/contexts/juce_GraphicsContext.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsContext.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsPostScriptRenderer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsPostScriptRenderer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsSoftwareRenderer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/contexts/juce_LowLevelGraphicsSoftwareRenderer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/effects/juce_DropShadowEffect.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/effects/juce_DropShadowEffect.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/effects/juce_GlowEffect.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/effects/juce_GlowEffect.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/effects/juce_ImageEffectFilter.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_AttributedString.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_AttributedString.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_CustomTypeface.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_CustomTypeface.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_Font.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_Font.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_GlyphArrangement.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_GlyphArrangement.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_TextLayout.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_TextLayout.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_Typeface.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/fonts/juce_Typeface.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_AffineTransform.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_AffineTransform.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_BorderSize.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_EdgeTable.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_EdgeTable.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_Line.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_Parallelogram.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_Path.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_Path.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_PathIterator.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_PathIterator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_PathStrokeType.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_PathStrokeType.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_Point.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_Rectangle.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/geometry/juce_RectangleList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/cderror.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/changes to libjpeg for JUCE.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcapimin.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcapistd.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jccoefct.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jccolor.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcdctmgr.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jchuff.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jchuff.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcinit.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcmainct.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcmarker.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcmaster.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcomapi.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jconfig.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcparam.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcphuff.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcprepct.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jcsample.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jctrans.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdapimin.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdapistd.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdatasrc.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdcoefct.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdcolor.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdct.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jddctmgr.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdhuff.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdhuff.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdinput.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmainct.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmarker.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmaster.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdmerge.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdphuff.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdpostct.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdsample.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jdtrans.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jerror.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jerror.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jfdctflt.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jfdctfst.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jfdctint.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctflt.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctfst.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctint.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jidctred.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jinclude.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmemmgr.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmemnobs.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmemsys.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jmorecfg.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jpegint.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jpeglib.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jquant1.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jquant2.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jutils.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/jversion.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/transupp.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/jpglib/transupp.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/libpng_readme.txt" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/png.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/png.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngconf.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngdebug.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngerror.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngget.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pnginfo.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngmem.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngpread.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngpriv.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngread.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngrio.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngrtran.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngrutil.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngset.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngstruct.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngtrans.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwio.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwrite.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwtran.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/pnglib/pngwutil.c" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/juce_GIFLoader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/juce_JPEGLoader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/image_formats/juce_PNGLoader.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_Image.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_Image.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_ImageCache.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_ImageCache.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_ImageConvolutionKernel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_ImageConvolutionKernel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_ImageFileFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/images/juce_ImageFileFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_android_Fonts.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_android_GraphicsContext.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_android_IconHelpers.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_freetype_Fonts.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_linux_Fonts.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_linux_IconHelpers.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_mac_CoreGraphicsContext.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_mac_CoreGraphicsContext.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_mac_CoreGraphicsHelpers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_mac_Fonts.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_mac_IconHelpers.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_RenderingHelpers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_win32_Direct2DGraphicsContext.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_win32_Direct2DGraphicsContext.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_win32_DirectWriteTypeface.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_win32_DirectWriteTypeLayout.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_win32_Fonts.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/native/juce_win32_IconHelpers.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/placement/juce_Justification.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/placement/juce_RectanglePlacement.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/placement/juce_RectanglePlacement.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/juce_graphics.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/juce_graphics.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_graphics/juce_graphics.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/application/juce_Application.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/application/juce_Application.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ArrowButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ArrowButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_Button.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_Button.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_DrawableButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_DrawableButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_HyperlinkButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_HyperlinkButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ImageButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ImageButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ShapeButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ShapeButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_TextButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_TextButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ToggleButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ToggleButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ToolbarButton.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/buttons/juce_ToolbarButton.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandID.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandInfo.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandInfo.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandTarget.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_ApplicationCommandTarget.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_KeyPressMappingSet.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/commands/juce_KeyPressMappingSet.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/components/juce_CachedComponentImage.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/components/juce_Component.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/components/juce_Component.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/components/juce_ComponentListener.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/components/juce_ComponentListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/components/juce_ModalComponentManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/components/juce_ModalComponentManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/desktop/juce_Desktop.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/desktop/juce_Desktop.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/desktop/juce_Displays.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/desktop/juce_Displays.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_Drawable.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_Drawable.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableComposite.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableComposite.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableImage.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableImage.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawablePath.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawablePath.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableRectangle.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableRectangle.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableShape.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableShape.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableText.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_DrawableText.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/drawables/juce_SVGParser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ContentSharer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ContentSharer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsDisplayComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsDisplayComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsList.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_DirectoryContentsList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileBrowserComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileBrowserComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileBrowserListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooserDialogBox.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileChooserDialogBox.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileListComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileListComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FilenameComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FilenameComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FilePreviewComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileSearchPathListComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileSearchPathListComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileTreeComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_FileTreeComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ImagePreviewComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/filebrowser/juce_ImagePreviewComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_CaretComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_CaretComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyboardFocusTraverser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyboardFocusTraverser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyListener.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyPress.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_KeyPress.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_ModifierKeys.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_ModifierKeys.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_SystemClipboard.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_TextEditorKeyMapper.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/keyboard/juce_TextInputTarget.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_AnimatedPosition.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_AnimatedPositionBehaviours.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentAnimator.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentAnimator.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBoundsConstrainer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBoundsConstrainer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBuilder.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentBuilder.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentMovementWatcher.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ComponentMovementWatcher.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ConcertinaPanel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ConcertinaPanel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_FlexBox.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_FlexBox.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_FlexItem.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_Grid.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_Grid.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_GridItem.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_GridItem.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_GroupComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_GroupComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_MultiDocumentPanel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_MultiDocumentPanel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableBorderComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableBorderComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableCornerComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableCornerComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableEdgeComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ResizableEdgeComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ScrollBar.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_ScrollBar.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_SidePanel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_SidePanel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutManager.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutManager.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutResizerBar.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableLayoutResizerBar.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableObjectResizer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_StretchableObjectResizer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedButtonBar.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedButtonBar.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_TabbedComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_Viewport.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/layout/juce_Viewport.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V1.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V1.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V2.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V2.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V3.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V3.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V4.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/lookandfeel/juce_LookAndFeel_V4.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_BurgerMenuComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_BurgerMenuComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarModel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_MenuBarModel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_PopupMenu.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/menus/juce_PopupMenu.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/misc/juce_BubbleComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/misc/juce_BubbleComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/misc/juce_DropShadower.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/misc/juce_DropShadower.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/misc/juce_JUCESplashScreen.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/misc/juce_JUCESplashScreen.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_ComponentDragger.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_ComponentDragger.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_DragAndDropContainer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_DragAndDropContainer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_DragAndDropTarget.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_FileDragAndDropTarget.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_LassoComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseCursor.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseCursor.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseEvent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseEvent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInactivityDetector.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInactivityDetector.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInputSource.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseInputSource.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseListener.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_MouseListener.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_SelectedItemSet.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_TextDragAndDropTarget.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/mouse/juce_TooltipClient.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_X11_DragAndDrop.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_X11_Symbols.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_X11_Symbols.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_XWindowSystem.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/x11/juce_linux_XWindowSystem.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_android_ContentSharer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_android_FileChooser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_android_Windowing.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_common_MimeTypes.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_ios_ContentSharer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_ios_FileChooser.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_ios_UIViewComponentPeer.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_ios_Windowing.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_linux_FileChooser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_linux_Windowing.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_mac_FileChooser.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_mac_MainMenu.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_mac_MouseCursor.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_mac_NSViewComponentPeer.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_mac_Windowing.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_MultiTouchMapper.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_win32_DragAndDrop.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_win32_FileChooser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/native/juce_win32_Windowing.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_MarkerList.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_MarkerList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinate.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinate.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinatePositioner.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeCoordinatePositioner.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeParallelogram.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeParallelogram.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePoint.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePoint.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePointPath.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativePointPath.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeRectangle.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/positioning/juce_RelativeRectangle.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_BooleanPropertyComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_BooleanPropertyComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_ButtonPropertyComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_ButtonPropertyComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_ChoicePropertyComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_ChoicePropertyComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_MultiChoicePropertyComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_MultiChoicePropertyComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyPanel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_PropertyPanel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_SliderPropertyComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_SliderPropertyComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_TextPropertyComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/properties/juce_TextPropertyComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ComboBox.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ComboBox.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ImageComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ImageComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_Label.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_Label.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ListBox.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ListBox.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ProgressBar.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ProgressBar.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_Slider.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_Slider.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TableHeaderComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TableHeaderComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TableListBox.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TableListBox.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TextEditor.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TextEditor.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_Toolbar.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_Toolbar.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemFactory.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemPalette.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_ToolbarItemPalette.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TreeView.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/widgets/juce_TreeView.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_AlertWindow.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_AlertWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_CallOutBox.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_CallOutBox.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_ComponentPeer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_ComponentPeer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_DialogWindow.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_DialogWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_DocumentWindow.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_DocumentWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_NativeMessageBox.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_ResizableWindow.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_ResizableWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_ThreadWithProgressWindow.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_ThreadWithProgressWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_TooltipWindow.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_TooltipWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_TopLevelWindow.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/windows/juce_TopLevelWindow.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/juce_gui_basics.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/juce_gui_basics.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_basics/juce_gui_basics.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeDocument.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeDocument.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeEditorComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeEditorComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CodeTokeniser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_CPlusPlusCodeTokeniserFunctions.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_LuaCodeTokeniser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_LuaCodeTokeniser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_XMLCodeTokeniser.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/code_editor/juce_XMLCodeTokeniser.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/documents/juce_FileBasedDocument.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/documents/juce_FileBasedDocument.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/embedding/juce_ActiveXControlComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/embedding/juce_AndroidViewComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/embedding/juce_HWNDComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/embedding/juce_NSViewComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/embedding/juce_ScopedDPIAwarenessDisabler.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/embedding/juce_UIViewComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/embedding/juce_XEmbedComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_AnimatedAppComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_AnimatedAppComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_AppleRemote.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_BubbleMessageComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_BubbleMessageComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_ColourSelector.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_ColourSelector.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_KeyMappingEditorComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_KeyMappingEditorComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_LiveConstantEditor.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_LiveConstantEditor.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_PreferencesPanel.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_PreferencesPanel.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_PushNotifications.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_PushNotifications.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_RecentlyOpenedFilesList.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_RecentlyOpenedFilesList.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_SplashScreen.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_SplashScreen.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_SystemTrayIconComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_SystemTrayIconComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/misc/juce_WebBrowserComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_android_PushNotifications.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_android_WebBrowserComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_AndroidViewComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_ios_PushNotifications.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_ios_UIViewComponent.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_linux_X11_SystemTrayIcon.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_linux_X11_WebBrowserComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_linux_XEmbedComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_mac_AppleRemote.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_mac_CarbonViewWrapperComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_mac_NSViewComponent.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_mac_PushNotifications.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_mac_SystemTrayIcon.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_mac_WebBrowserComponent.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_win32_ActiveXComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_win32_HWNDComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_win32_SystemTrayIcon.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/native/juce_win32_WebBrowserComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/juce_gui_extra.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/juce_gui_extra.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_gui_extra/juce_gui_extra.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/geometry/juce_Draggable3DOrientation.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/geometry/juce_Matrix3D.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/geometry/juce_Quaternion.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/geometry/juce_Vector3D.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/native/juce_MissingGLDefinitions.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/native/juce_OpenGL_android.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/native/juce_OpenGL_ios.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/native/juce_OpenGL_linux_X11.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/native/juce_OpenGL_osx.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/native/juce_OpenGL_win32.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/native/juce_OpenGLExtensions.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLContext.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLContext.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLFrameBuffer.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLFrameBuffer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLGraphicsContext.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLGraphicsContext.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLHelpers.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLHelpers.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLImage.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLImage.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLPixelFormat.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLPixelFormat.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLRenderer.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLShaderProgram.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLShaderProgram.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLTexture.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/opengl/juce_OpenGLTexture.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/utils/juce_OpenGLAppComponent.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/utils/juce_OpenGLAppComponent.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/juce_opengl.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/juce_opengl.mm" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_opengl/juce_opengl.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCAddress.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCAddress.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCArgument.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCArgument.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCBundle.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCBundle.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCMessage.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCMessage.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCReceiver.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCReceiver.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCSender.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCSender.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCTimeTag.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCTimeTag.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCTypes.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/osc/juce_OSCTypes.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/juce_osc.cpp" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("C:/JUCE/modules/juce_osc/juce_osc.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("../../../JuceLibraryCode/AppConfig.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("../../../JuceLibraryCode/JuceHeader.h" PROPERTIES HEADER_FILE_ONLY TRUE)
set_source_files_properties("../../../JuceLibraryCode/JucePluginDefines.h" PROPERTIES HEADER_FILE_ONLY TRUE)

target_compile_options( ${BINARY_NAME} PRIVATE "-fsigned-char" "-I" "/usr/local/include/" "-DNVOICES=16" "-DFAUSTFLOAT=float" )

if( JUCE_BUILD_CONFIGURATION MATCHES "DEBUG" )
    target_compile_options( ${BINARY_NAME} PRIVATE)
endif()

if( JUCE_BUILD_CONFIGURATION MATCHES "RELEASE" )
    target_compile_options( ${BINARY_NAME} PRIVATE)
endif()

find_library(log "log")
find_library(android "android")
find_library(glesv2 "GLESv2")
find_library(egl "EGL")

target_link_libraries( ${BINARY_NAME}

    ${log}
    ${android}
    ${glesv2}
    ${egl}
    "cpufeatures"
    "oboe"
)
