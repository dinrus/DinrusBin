/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.sfml.audio;

public
{
    import derelict.sfml.atypes;
    import derelict.sfml.afuncs;
}

private
{
    import derelict.util.loader2;
}

class DerelictSFMLAudioLoader : SharedLibLoader
{
public:
    this()
    {
        super(
            "csfml-audio.dll",
            "libcsfml-audio.so",
            ""
        );
    }

protected:
    override void loadSymbols()
    {
        // Listener.h
        bindFunc(cast(void**)&sfListener_SetGlobalVolume, "sfListener_SetGlobalVolume");
        bindFunc(cast(void**)&sfListener_GetGlobalVolume, "sfListener_GetGlobalVolume");
        bindFunc(cast(void**)&sfListener_SetPosition, "sfListener_SetPosition");
        bindFunc(cast(void**)&sfListener_GetPosition, "sfListener_GetPosition");
        bindFunc(cast(void**)&sfListener_SetTarget, "sfListener_SetTarget");
        bindFunc(cast(void**)&sfListener_GetTarget, "sfListener_GetTarget");

        // Music.h
        bindFunc(cast(void**)&sfMusic_CreateFromFile, "sfMusic_CreateFromFile");
        bindFunc(cast(void**)&sfMusic_CreateFromMemory, "sfMusic_CreateFromMemory");
        bindFunc(cast(void**)&sfMusic_Destroy, "sfMusic_Destroy");
        bindFunc(cast(void**)&sfMusic_SetLoop, "sfMusic_SetLoop");
        bindFunc(cast(void**)&sfMusic_GetLoop, "sfMusic_GetLoop");
        bindFunc(cast(void**)&sfMusic_GetDuration, "sfMusic_GetDuration");
        bindFunc(cast(void**)&sfMusic_Play, "sfMusic_Play");
        bindFunc(cast(void**)&sfMusic_Pause, "sfMusic_Pause");
        bindFunc(cast(void**)&sfMusic_Stop, "sfMusic_Stop");
        bindFunc(cast(void**)&sfMusic_GetChannelsCount, "sfMusic_GetChannelsCount");
        bindFunc(cast(void**)&sfMusic_GetSampleRate, "sfMusic_GetSampleRate");
        bindFunc(cast(void**)&sfMusic_GetStatus, "sfMusic_GetStatus");
        bindFunc(cast(void**)&sfMusic_GetPlayingOffset, "sfMusic_GetPlayingOffset");
        bindFunc(cast(void**)&sfMusic_SetPitch, "sfMusic_SetPitch");
        bindFunc(cast(void**)&sfMusic_SetVolume, "sfMusic_SetVolume");
        bindFunc(cast(void**)&sfMusic_SetPosition, "sfMusic_SetPosition");
        bindFunc(cast(void**)&sfMusic_SetRelativeToListener, "sfMusic_SetRelativeToListener");
        bindFunc(cast(void**)&sfMusic_SetMinDistance, "sfMusic_SetMinDistance");
        bindFunc(cast(void**)&sfMusic_SetAttenuation, "sfMusic_SetAttenuation");
        bindFunc(cast(void**)&sfMusic_GetPitch, "sfMusic_GetPitch");
        bindFunc(cast(void**)&sfMusic_GetVolume, "sfMusic_GetVolume");
        bindFunc(cast(void**)&sfMusic_GetPosition, "sfMusic_GetPosition");
        bindFunc(cast(void**)&sfMusic_IsRelativeToListener, "sfMusic_IsRelativeToListener");
        bindFunc(cast(void**)&sfMusic_GetMinDistance, "sfMusic_GetMinDistance");
        bindFunc(cast(void**)&sfMusic_GetAttenuation, "sfMusic_GetAttenuation");

        // Sound.h
        bindFunc(cast(void**)&sfSound_Create, "sfSound_Create");
        bindFunc(cast(void**)&sfSound_Destroy, "sfSound_Destroy");
        bindFunc(cast(void**)&sfSound_Play, "sfSound_Play");
        bindFunc(cast(void**)&sfSound_Pause, "sfSound_Pause");
        bindFunc(cast(void**)&sfSound_Stop, "sfSound_Stop");
        bindFunc(cast(void**)&sfSound_SetBuffer, "sfSound_SetBuffer");
        bindFunc(cast(void**)&sfSound_GetBuffer, "sfSound_GetBuffer");
        bindFunc(cast(void**)&sfSound_SetLoop, "sfSound_SetLoop");
        bindFunc(cast(void**)&sfSound_GetLoop, "sfSound_GetLoop");
        bindFunc(cast(void**)&sfSound_GetStatus, "sfSound_GetStatus");
        bindFunc(cast(void**)&sfSound_SetPitch, "sfSound_SetPitch");
        bindFunc(cast(void**)&sfSound_SetVolume, "sfSound_SetVolume");
        bindFunc(cast(void**)&sfSound_SetPosition, "sfSound_SetPosition");
        bindFunc(cast(void**)&sfSound_SetRelativeToListener, "sfSound_SetRelativeToListener");
        bindFunc(cast(void**)&sfSound_SetMinDistance, "sfSound_SetMinDistance");
        bindFunc(cast(void**)&sfSound_SetAttenuation, "sfSound_SetAttenuation");
        bindFunc(cast(void**)&sfSound_SetPlayingOffset, "sfSound_SetPlayingOffset");
        bindFunc(cast(void**)&sfSound_GetPitch, "sfSound_GetPitch");
        bindFunc(cast(void**)&sfSound_GetVolume, "sfSound_GetVolume");
        bindFunc(cast(void**)&sfSound_GetPosition, "sfSound_GetPosition");
        bindFunc(cast(void**)&sfSound_IsRelativeToListener, "sfSound_IsRelativeToListener");
        bindFunc(cast(void**)&sfSound_GetMinDistance, "sfSound_GetMinDistance");
        bindFunc(cast(void**)&sfSound_GetAttenuation, "sfSound_GetAttenuation");
        bindFunc(cast(void**)&sfSound_GetPlayingOffset, "sfSound_GetPlayingOffset");

        // SoundBuffer.h
        bindFunc(cast(void**)&sfSoundBuffer_CreateFromFile, "sfSoundBuffer_CreateFromFile");
        bindFunc(cast(void**)&sfSoundBuffer_CreateFromMemory, "sfSoundBuffer_CreateFromMemory");
        bindFunc(cast(void**)&sfSoundBuffer_CreateFromSamples, "sfSoundBuffer_CreateFromSamples");
        bindFunc(cast(void**)&sfSoundBuffer_Destroy, "sfSoundBuffer_Destroy");
        bindFunc(cast(void**)&sfSoundBuffer_SaveToFile, "sfSoundBuffer_SaveToFile");
        bindFunc(cast(void**)&sfSoundBuffer_GetSamples, "sfSoundBuffer_GetSamples");
        bindFunc(cast(void**)&sfSoundBuffer_GetSamplesCount, "sfSoundBuffer_GetSamplesCount");
        bindFunc(cast(void**)&sfSoundBuffer_GetSampleRate, "sfSoundBuffer_GetSampleRate");
        bindFunc(cast(void**)&sfSoundBuffer_GetChannelsCount, "sfSoundBuffer_GetChannelsCount");
        bindFunc(cast(void**)&sfSoundBuffer_GetDuration, "sfSoundBuffer_GetDuration");

        // SoundBufferRecorder.h
        bindFunc(cast(void**)&sfSoundBufferRecorder_Create, "sfSoundBufferRecorder_Create");
        bindFunc(cast(void**)&sfSoundBufferRecorder_Destroy, "sfSoundBufferRecorder_Destroy");
        bindFunc(cast(void**)&sfSoundBufferRecorder_Start, "sfSoundBufferRecorder_Start");
        bindFunc(cast(void**)&sfSoundBufferRecorder_Stop, "sfSoundBufferRecorder_Stop");
        bindFunc(cast(void**)&sfSoundBufferRecorder_GetSampleRate, "sfSoundBufferRecorder_GetSampleRate");
        bindFunc(cast(void**)&sfSoundBufferRecorder_GetBuffer, "sfSoundBufferRecorder_GetBuffer");

        // SoundRecorder.h
        bindFunc(cast(void**)&sfSoundRecorder_Create, "sfSoundRecorder_Create");
        bindFunc(cast(void**)&sfSoundRecorder_Destroy, "sfSoundRecorder_Destroy");
        bindFunc(cast(void**)&sfSoundRecorder_Start, "sfSoundRecorder_Start");
        bindFunc(cast(void**)&sfSoundRecorder_Stop, "sfSoundRecorder_Stop");
        bindFunc(cast(void**)&sfSoundRecorder_GetSampleRate, "sfSoundRecorder_GetSampleRate");
        bindFunc(cast(void**)&sfSoundRecorder_CanCapture, "sfSoundRecorder_CanCapture");

        // SoundStream.h
        bindFunc(cast(void**)&sfSoundStream_Create, "sfSoundStream_Create");
        bindFunc(cast(void**)&sfSoundStream_Destroy, "sfSoundStream_Destroy");
        bindFunc(cast(void**)&sfSoundStream_Play, "sfSoundStream_Play");
        bindFunc(cast(void**)&sfSoundStream_Pause, "sfSoundStream_Pause");
        bindFunc(cast(void**)&sfSoundStream_Stop, "sfSoundStream_Stop");
        bindFunc(cast(void**)&sfSoundStream_GetStatus, "sfSoundStream_GetStatus");
        bindFunc(cast(void**)&sfSoundStream_GetChannelsCount, "sfSoundStream_GetChannelsCount");
        bindFunc(cast(void**)&sfSoundStream_GetSampleRate, "sfSoundStream_GetSampleRate");
        bindFunc(cast(void**)&sfSoundStream_SetPitch, "sfSoundStream_SetPitch");
        bindFunc(cast(void**)&sfSoundStream_SetVolume, "sfSoundStream_SetVolume");
        bindFunc(cast(void**)&sfSoundStream_SetPosition, "sfSoundStream_SetPosition");
        bindFunc(cast(void**)&sfSoundStream_SetRelativeToListener, "sfSoundStream_SetRelativeToListener");
        bindFunc(cast(void**)&sfSoundStream_SetMinDistance, "sfSoundStream_SetMinDistance");
        bindFunc(cast(void**)&sfSoundStream_SetAttenuation, "sfSoundStream_SetAttenuation");
        bindFunc(cast(void**)&sfSoundStream_SetLoop, "sfSoundStream_SetLoop");
        bindFunc(cast(void**)&sfSoundStream_GetPitch, "sfSoundStream_GetPitch");
        bindFunc(cast(void**)&sfSoundStream_GetVolume, "sfSoundStream_GetVolume");
        bindFunc(cast(void**)&sfSoundStream_GetPosition, "sfSoundStream_GetPosition");
        bindFunc(cast(void**)&sfSoundStream_IsRelativeToListener, "sfSoundStream_IsRelativeToListener");
        bindFunc(cast(void**)&sfSoundStream_GetMinDistance, "sfSoundStream_GetMinDistance");
        bindFunc(cast(void**)&sfSoundStream_GetAttenuation, "sfSoundStream_GetAttenuation");
        bindFunc(cast(void**)&sfSoundStream_GetLoop, "sfSoundStream_GetLoop");
        bindFunc(cast(void**)&sfSoundStream_GetPlayingOffset, "sfSoundStream_GetPlayingOffset");
    }
}

DerelictSFMLAudioLoader DerelictSFMLAudio;

static this()
{
    DerelictSFMLAudio = new DerelictSFMLAudioLoader();
}

static ~this()
{
    DerelictSFMLAudio.unload();
}