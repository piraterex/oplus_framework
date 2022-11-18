.class Landroid/hardware/soundtrigger/ConversionUtil;
.super Ljava/lang/Object;
.source "ConversionUtil.java"


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist aidl2apiAudioCapabilities(I)I
    .locals 2
    .param p0, "aidlCapabilities"    # I

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 259
    or-int/lit8 v0, v0, 0x1

    .line 261
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 262
    or-int/lit8 v0, v0, 0x2

    .line 264
    :cond_1
    return v0
.end method

.method public static blacklist aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;
    .locals 1
    .param p0, "audioConfig"    # Landroid/media/audio/common/AudioConfig;
    .param p1, "isInput"    # Z

    .line 233
    if-eqz p0, :cond_0

    .line 234
    invoke-static {p0, p1}, Landroid/media/audio/common/AidlConversion;->aidl2api_AudioConfig_AudioFormat(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0

    .line 236
    :cond_0
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist aidl2apiConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    .locals 3
    .param p0, "apiLevel"    # Landroid/media/soundtrigger/ConfidenceLevel;

    .line 194
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    iget v1, p0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    iget v2, p0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;-><init>(II)V

    return-object v0
.end method

.method public static blacklist aidl2apiModelParameterRange(Landroid/media/soundtrigger/ModelParameterRange;)Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    .locals 3
    .param p0, "aidlRange"    # Landroid/media/soundtrigger/ModelParameterRange;

    .line 250
    if-nez p0, :cond_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    iget v1, p0, Landroid/media/soundtrigger/ModelParameterRange;->minInclusive:I

    iget v2, p0, Landroid/media/soundtrigger/ModelParameterRange;->maxInclusive:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;-><init>(II)V

    return-object v0
.end method

.method public static blacklist aidl2apiModuleDescriptor(Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 20
    .param p0, "aidlDesc"    # Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;

    .line 47
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->properties:Landroid/media/soundtrigger/Properties;

    .line 48
    .local v1, "properties":Landroid/media/soundtrigger/Properties;
    new-instance v19, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-object/from16 v2, v19

    iget v3, v0, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->handle:I

    iget-object v4, v1, Landroid/media/soundtrigger/Properties;->implementor:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/soundtrigger/Properties;->description:Ljava/lang/String;

    iget-object v6, v1, Landroid/media/soundtrigger/Properties;->uuid:Ljava/lang/String;

    iget v7, v1, Landroid/media/soundtrigger/Properties;->version:I

    iget-object v8, v1, Landroid/media/soundtrigger/Properties;->supportedModelArch:Ljava/lang/String;

    iget v9, v1, Landroid/media/soundtrigger/Properties;->maxSoundModels:I

    iget v10, v1, Landroid/media/soundtrigger/Properties;->maxKeyPhrases:I

    iget v11, v1, Landroid/media/soundtrigger/Properties;->maxUsers:I

    iget v12, v1, Landroid/media/soundtrigger/Properties;->recognitionModes:I

    .line 58
    invoke-static {v12}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v12

    iget-boolean v13, v1, Landroid/media/soundtrigger/Properties;->captureTransition:Z

    iget v14, v1, Landroid/media/soundtrigger/Properties;->maxBufferMs:I

    iget-boolean v15, v1, Landroid/media/soundtrigger/Properties;->concurrentCapture:Z

    iget v0, v1, Landroid/media/soundtrigger/Properties;->powerConsumptionMw:I

    move/from16 v16, v0

    iget-boolean v0, v1, Landroid/media/soundtrigger/Properties;->triggerInEvent:Z

    move/from16 v17, v0

    iget v0, v1, Landroid/media/soundtrigger/Properties;->audioCapabilities:I

    .line 64
    invoke-static {v0}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioCapabilities(I)I

    move-result v18

    invoke-direct/range {v2 .. v18}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    .line 48
    return-object v19
.end method

.method public static blacklist aidl2apiPhraseRecognitionEvent(IILandroid/media/soundtrigger/PhraseRecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .locals 15
    .param p0, "modelHandle"    # I
    .param p1, "captureSession"    # I
    .param p2, "aidlEvent"    # Landroid/media/soundtrigger/PhraseRecognitionEvent;

    .line 213
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v1, v1

    new-array v1, v1, [Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 215
    .local v1, "apiExtras":[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 216
    iget-object v3, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->phraseExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v1, v2

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-object v2, v2, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v13

    .line 222
    .local v13, "audioFormat":Landroid/media/AudioFormat;
    new-instance v14, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v3, v2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v5, v2, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v7, v2, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget v8, v2, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-boolean v9, v2, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionEvent;->common:Landroid/media/soundtrigger/RecognitionEvent;

    iget-object v11, v2, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    move-object v2, v14

    move v4, p0

    move/from16 v6, p1

    move-object v10, v13

    move-object v12, v1

    invoke-direct/range {v2 .. v12}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[B[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)V

    return-object v14
.end method

.method public static blacklist aidl2apiPhraseRecognitionExtra(Landroid/media/soundtrigger/PhraseRecognitionExtra;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;
    .locals 5
    .param p0, "aidlExtra"    # Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 174
    iget-object v0, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v0, v0

    new-array v0, v0, [Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 176
    .local v0, "apiLevels":[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 177
    iget-object v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiConfidenceLevel(Landroid/media/soundtrigger/ConfidenceLevel;)Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    iget v2, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    iget v3, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 180
    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiRecognitionModes(I)I

    move-result v3

    iget v4, p0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;-><init>(III[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)V

    .line 179
    return-object v1
.end method

.method public static blacklist aidl2apiRecognitionEvent(IILandroid/media/soundtrigger/RecognitionEvent;)Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;
    .locals 13
    .param p0, "modelHandle"    # I
    .param p1, "captureSession"    # I
    .param p2, "aidlEvent"    # Landroid/media/soundtrigger/RecognitionEvent;

    .line 201
    iget-object v0, p2, Landroid/media/soundtrigger/RecognitionEvent;->audioConfig:Landroid/media/audio/common/AudioConfig;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/hardware/soundtrigger/ConversionUtil;->aidl2apiAudioFormatWithDefault(Landroid/media/audio/common/AudioConfig;Z)Landroid/media/AudioFormat;

    move-result-object v0

    .line 203
    .local v0, "audioFormat":Landroid/media/AudioFormat;
    new-instance v1, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;

    iget v3, p2, Landroid/media/soundtrigger/RecognitionEvent;->status:I

    iget-boolean v5, p2, Landroid/media/soundtrigger/RecognitionEvent;->captureAvailable:Z

    iget v7, p2, Landroid/media/soundtrigger/RecognitionEvent;->captureDelayMs:I

    iget v8, p2, Landroid/media/soundtrigger/RecognitionEvent;->capturePreambleMs:I

    iget-boolean v9, p2, Landroid/media/soundtrigger/RecognitionEvent;->triggerInData:Z

    iget-object v11, p2, Landroid/media/soundtrigger/RecognitionEvent;->data:[B

    iget-boolean v12, p2, Landroid/media/soundtrigger/RecognitionEvent;->recognitionStillActive:Z

    move-object v2, v1

    move v4, p0

    move v6, p1

    move-object v10, v0

    invoke-direct/range {v2 .. v12}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;-><init>(IIZIIIZLandroid/media/AudioFormat;[BZ)V

    return-object v1
.end method

.method public static blacklist aidl2apiRecognitionModes(I)I
    .locals 2
    .param p0, "aidlModes"    # I

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 71
    or-int/lit8 v0, v0, 0x1

    .line 73
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 74
    or-int/lit8 v0, v0, 0x2

    .line 76
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 77
    or-int/lit8 v0, v0, 0x4

    .line 79
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 80
    or-int/lit8 v0, v0, 0x8

    .line 82
    :cond_3
    return v0
.end method

.method public static blacklist api2aidlAudioCapabilities(I)I
    .locals 2
    .param p0, "apiCapabilities"    # I

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 271
    or-int/lit8 v0, v0, 0x1

    .line 273
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 275
    or-int/lit8 v0, v0, 0x2

    .line 277
    :cond_1
    return v0
.end method

.method public static blacklist api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;
    .locals 2
    .param p0, "apiLevel"    # Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    .line 186
    new-instance v0, Landroid/media/soundtrigger/ConfidenceLevel;

    invoke-direct {v0}, Landroid/media/soundtrigger/ConfidenceLevel;-><init>()V

    .line 187
    .local v0, "aidlLevel":Landroid/media/soundtrigger/ConfidenceLevel;
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->confidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->levelPercent:I

    .line 188
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;->userId:I

    iput v1, v0, Landroid/media/soundtrigger/ConfidenceLevel;->userId:I

    .line 189
    return-object v0
.end method

.method public static blacklist api2aidlGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)Landroid/media/soundtrigger/SoundModel;
    .locals 1
    .param p0, "apiModel"    # Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 104
    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist api2aidlModelParameter(I)I
    .locals 1
    .param p0, "apiParam"    # I

    .line 240
    packed-switch p0, :pswitch_data_0

    .line 244
    const/4 v0, -0x1

    return v0

    .line 242
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger/Phrase;
    .locals 3
    .param p0, "apiPhrase"    # Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 134
    new-instance v0, Landroid/media/soundtrigger/Phrase;

    invoke-direct {v0}, Landroid/media/soundtrigger/Phrase;-><init>()V

    .line 135
    .local v0, "aidlPhrase":Landroid/media/soundtrigger/Phrase;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getId()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Phrase;->id:I

    .line 136
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getRecognitionModes()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/Phrase;->recognitionModes:I

    .line 137
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getUsers()[I

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->users:[I

    .line 138
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->locale:Ljava/lang/String;

    .line 139
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/Phrase;->text:Ljava/lang/String;

    .line 140
    return-object v0
.end method

.method public static blacklist api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;
    .locals 4
    .param p0, "apiExtra"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    .line 161
    new-instance v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseRecognitionExtra;-><init>()V

    .line 162
    .local v0, "aidlExtra":Landroid/media/soundtrigger/PhraseRecognitionExtra;
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->id:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->id:I

    .line 163
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->recognitionModes:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlRecognitionModes(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->recognitionModes:I

    .line 164
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->coarseConfidenceLevel:I

    iput v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->confidenceLevel:I

    .line 165
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/ConfidenceLevel;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    .line 166
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 167
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseRecognitionExtra;->levels:[Landroid/media/soundtrigger/ConfidenceLevel;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;->confidenceLevels:[Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlConfidenceLevel(Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;)Landroid/media/soundtrigger/ConfidenceLevel;

    move-result-object v3

    aput-object v3, v2, v1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist api2aidlPhraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)Landroid/media/soundtrigger/PhraseSoundModel;
    .locals 4
    .param p0, "apiModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 124
    new-instance v0, Landroid/media/soundtrigger/PhraseSoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger/PhraseSoundModel;-><init>()V

    .line 125
    .local v0, "aidlModel":Landroid/media/soundtrigger/PhraseSoundModel;
    invoke-static {p0}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseSoundModel;->common:Landroid/media/soundtrigger/SoundModel;

    .line 126
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/Phrase;

    iput-object v1, v0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    .line 127
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 128
    iget-object v2, v0, Landroid/media/soundtrigger/PhraseSoundModel;->phrases:[Landroid/media/soundtrigger/Phrase;

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;->getKeyphrases()[Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhrase(Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;)Landroid/media/soundtrigger/Phrase;

    move-result-object v3

    aput-object v3, v2, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static blacklist api2aidlRecognitionConfig(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)Landroid/media/soundtrigger/RecognitionConfig;
    .locals 4
    .param p0, "apiConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 145
    new-instance v0, Landroid/media/soundtrigger/RecognitionConfig;

    invoke-direct {v0}, Landroid/media/soundtrigger/RecognitionConfig;-><init>()V

    .line 146
    .local v0, "aidlConfig":Landroid/media/soundtrigger/RecognitionConfig;
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->captureRequested:Z

    iput-boolean v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->captureRequested:Z

    .line 148
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v1, v1

    new-array v1, v1, [Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v2, v0, Landroid/media/soundtrigger/RecognitionConfig;->phraseRecognitionExtras:[Landroid/media/soundtrigger/PhraseRecognitionExtra;

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->keyphrases:[Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;

    aget-object v3, v3, v1

    invoke-static {v3}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlPhraseRecognitionExtra(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;)Landroid/media/soundtrigger/PhraseRecognitionExtra;

    move-result-object v3

    aput-object v3, v2, v1

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->data:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->data:[B

    .line 155
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->audioCapabilities:I

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlAudioCapabilities(I)I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/RecognitionConfig;->audioCapabilities:I

    .line 156
    return-object v0
.end method

.method public static blacklist api2aidlRecognitionModes(I)I
    .locals 2
    .param p0, "apiModes"    # I

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "result":I
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 88
    or-int/lit8 v0, v0, 0x1

    .line 90
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 91
    or-int/lit8 v0, v0, 0x2

    .line 93
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 94
    or-int/lit8 v0, v0, 0x4

    .line 96
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 97
    or-int/lit8 v0, v0, 0x8

    .line 99
    :cond_3
    return v0
.end method

.method public static blacklist api2aidlSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)Landroid/media/soundtrigger/SoundModel;
    .locals 3
    .param p0, "apiModel"    # Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    .line 108
    new-instance v0, Landroid/media/soundtrigger/SoundModel;

    invoke-direct {v0}, Landroid/media/soundtrigger/SoundModel;-><init>()V

    .line 109
    .local v0, "aidlModel":Landroid/media/soundtrigger/SoundModel;
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getType()I

    move-result v1

    iput v1, v0, Landroid/media/soundtrigger/SoundModel;->type:I

    .line 110
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/SoundModel;->uuid:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getVendorUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/soundtrigger/ConversionUtil;->api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/media/soundtrigger/SoundModel;->vendorUuid:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->getData()[B

    move-result-object v1

    .line 113
    .local v1, "data":[B
    const-string v2, "SoundTrigger SoundModel"

    invoke-static {v1, v2}, Landroid/hardware/soundtrigger/ConversionUtil;->byteArrayToSharedMemory([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/media/soundtrigger/SoundModel;->data:Landroid/os/ParcelFileDescriptor;

    .line 114
    array-length v2, v1

    iput v2, v0, Landroid/media/soundtrigger/SoundModel;->dataSize:I

    .line 115
    return-object v0
.end method

.method public static blacklist api2aidlUuid(Ljava/util/UUID;)Ljava/lang/String;
    .locals 1
    .param p0, "apiUuid"    # Ljava/util/UUID;

    .line 119
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist byteArrayToSharedMemory([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "name"    # Ljava/lang/String;

    .line 281
    array-length v0, p0

    if-nez v0, :cond_0

    .line 282
    const/4 v0, 0x0

    return-object v0

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, ""

    :goto_0
    array-length v1, p0

    invoke-static {v0, v1}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v0

    .line 287
    .local v0, "shmem":Landroid/os/SharedMemory;
    invoke-virtual {v0}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 288
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 289
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 290
    invoke-virtual {v0}, Landroid/os/SharedMemory;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 291
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    return-object v2

    .line 293
    .end local v0    # "shmem":Landroid/os/SharedMemory;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
