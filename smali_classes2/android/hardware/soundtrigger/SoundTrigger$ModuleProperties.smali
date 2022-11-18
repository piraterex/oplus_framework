.class public final Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModuleProperties"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$AudioCapabilities;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CAPABILITY_ECHO_CANCELLATION:I = 0x1

.field public static final whitelist AUDIO_CAPABILITY_NOISE_SUPPRESSION:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAudioCapabilities:I

.field private final blacklist mDescription:Ljava/lang/String;

.field private final blacklist mId:I

.field private final blacklist mImplementor:Ljava/lang/String;

.field private final blacklist mMaxBufferMillis:I

.field private final blacklist mMaxKeyphrases:I

.field private final blacklist mMaxSoundModels:I

.field private final blacklist mMaxUsers:I

.field private final blacklist mPowerConsumptionMw:I

.field private final blacklist mRecognitionModes:I

.field private final blacklist mReturnsTriggerInEvent:Z

.field private final blacklist mSupportedModelArch:Ljava/lang/String;

.field private final blacklist mSupportsCaptureTransition:Z

.field private final blacklist mSupportsConcurrentCapture:Z

.field private final blacklist mUuid:Ljava/util/UUID;

.field private final blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 0

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 275
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "implementor"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uuid"    # Ljava/lang/String;
    .param p5, "version"    # I
    .param p6, "supportedModelArch"    # Ljava/lang/String;
    .param p7, "maxSoundModels"    # I
    .param p8, "maxKeyphrases"    # I
    .param p9, "maxUsers"    # I
    .param p10, "recognitionModes"    # I
    .param p11, "supportsCaptureTransition"    # Z
    .param p12, "maxBufferMs"    # I
    .param p13, "supportsConcurrentCapture"    # Z
    .param p14, "powerConsumptionMw"    # I
    .param p15, "returnsTriggerInEvent"    # Z
    .param p16, "audioCapabilities"    # I

    .line 162
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    move v1, p1

    iput v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    .line 164
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    .line 165
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    .line 166
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    .line 167
    move/from16 v2, p5

    iput v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    .line 168
    invoke-static/range {p6 .. p6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    .line 169
    move/from16 v3, p7

    iput v3, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    .line 170
    move/from16 v4, p8

    iput v4, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    .line 171
    move/from16 v5, p9

    iput v5, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    .line 172
    move/from16 v6, p10

    iput v6, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    .line 173
    move/from16 v7, p11

    iput-boolean v7, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    .line 174
    move/from16 v8, p12

    iput v8, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    .line 175
    move/from16 v9, p13

    iput-boolean v9, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    .line 176
    move/from16 v10, p14

    iput v10, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    .line 177
    move/from16 v11, p15

    iput-boolean v11, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    .line 178
    move/from16 v12, p16

    iput v12, v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    .line 179
    return-void
.end method

.method private static greylist-max-o fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 31
    .param p0, "in"    # Landroid/os/Parcel;

    .line 287
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 288
    .local v17, "id":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 289
    .local v18, "implementor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 290
    .local v19, "description":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 291
    .local v20, "uuid":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 292
    .local v21, "version":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 293
    .local v22, "supportedModelArch":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 294
    .local v23, "maxSoundModels":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 295
    .local v24, "maxKeyphrases":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 296
    .local v25, "maxUsers":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 297
    .local v26, "recognitionModes":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v11, v2

    goto :goto_0

    :cond_0
    move v11, v1

    .line 298
    .local v11, "supportsCaptureTransition":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 299
    .local v27, "maxBufferMs":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_1

    move v13, v2

    goto :goto_1

    :cond_1
    move v13, v1

    .line 300
    .local v13, "supportsConcurrentCapture":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v28

    .line 301
    .local v28, "powerConsumptionMw":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_2

    move v15, v2

    goto :goto_2

    :cond_2
    move v15, v1

    .line 302
    .local v15, "returnsTriggerInEvent":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "audioCapabilities":I
    move/from16 v16, v29

    .line 303
    new-instance v30, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-object/from16 v0, v30

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v12, v27

    move/from16 v14, v28

    invoke-direct/range {v0 .. v16}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIIZIZIZI)V

    return-object v30
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 336
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 337
    return v0

    .line 339
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 340
    return v1

    .line 342
    :cond_1
    instance-of v2, p1, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    if-nez v2, :cond_2

    .line 343
    return v1

    .line 345
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 346
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    if-eq v3, v4, :cond_3

    .line 347
    return v1

    .line 349
    :cond_3
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 350
    return v1

    .line 352
    :cond_4
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 353
    return v1

    .line 355
    :cond_5
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 356
    return v1

    .line 358
    :cond_6
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    if-eq v3, v4, :cond_7

    .line 359
    return v1

    .line 361
    :cond_7
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    iget-object v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 362
    return v1

    .line 364
    :cond_8
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    if-eq v3, v4, :cond_9

    .line 365
    return v1

    .line 367
    :cond_9
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    if-eq v3, v4, :cond_a

    .line 368
    return v1

    .line 370
    :cond_a
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    if-eq v3, v4, :cond_b

    .line 371
    return v1

    .line 373
    :cond_b
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    if-eq v3, v4, :cond_c

    .line 374
    return v1

    .line 376
    :cond_c
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    if-eq v3, v4, :cond_d

    .line 377
    return v1

    .line 379
    :cond_d
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    if-eq v3, v4, :cond_e

    .line 380
    return v1

    .line 382
    :cond_e
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    if-eq v3, v4, :cond_f

    .line 383
    return v1

    .line 385
    :cond_f
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    if-eq v3, v4, :cond_10

    .line 386
    return v1

    .line 388
    :cond_10
    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    iget-boolean v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    if-eq v3, v4, :cond_11

    .line 389
    return v1

    .line 391
    :cond_11
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    if-eq v3, v4, :cond_12

    .line 392
    return v1

    .line 394
    :cond_12
    return v0
.end method

.method public whitelist getAudioCapabilities()I
    .locals 1

    .line 272
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    return v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 183
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    return v0
.end method

.method public whitelist getImplementor()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxBufferMillis()I
    .locals 1

    .line 247
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    return v0
.end method

.method public whitelist getMaxKeyphrases()I
    .locals 1

    .line 226
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    return v0
.end method

.method public whitelist getMaxSoundModels()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    return v0
.end method

.method public whitelist getMaxUsers()I
    .locals 1

    .line 231
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    return v0
.end method

.method public whitelist getPowerConsumptionMw()I
    .locals 1

    .line 257
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    return v0
.end method

.method public whitelist getRecognitionModes()I
    .locals 1

    .line 237
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    return v0
.end method

.method public whitelist getSupportedModelArch()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUuid()Ljava/util/UUID;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist getVersion()I
    .locals 1

    .line 206
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 399
    const/16 v0, 0x1f

    .line 400
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 401
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mId:I

    add-int/2addr v2, v3

    .line 402
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mImplementor:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 403
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mDescription:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 404
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mUuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 405
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mVersion:I

    add-int/2addr v2, v3

    .line 406
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportedModelArch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 407
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxSoundModels:I

    add-int/2addr v2, v3

    .line 408
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxKeyphrases:I

    add-int/2addr v1, v3

    .line 409
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxUsers:I

    add-int/2addr v2, v3

    .line 410
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mRecognitionModes:I

    add-int/2addr v1, v3

    .line 411
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    add-int/2addr v2, v3

    .line 412
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mMaxBufferMillis:I

    add-int/2addr v1, v3

    .line 413
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    add-int/2addr v2, v3

    .line 414
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mPowerConsumptionMw:I

    add-int/2addr v1, v3

    .line 415
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-boolean v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    add-int/2addr v2, v3

    .line 416
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mAudioCapabilities:I

    add-int/2addr v1, v3

    .line 417
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist isCaptureTransitionSupported()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsCaptureTransition:Z

    return v0
.end method

.method public whitelist isConcurrentCaptureSupported()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mSupportsConcurrentCapture:Z

    return v0
.end method

.method public whitelist isTriggerReturnedInEvent()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->mReturnsTriggerInEvent:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleProperties [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", implementor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 423
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , supportedModelArch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 425
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxSoundModels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxKeyphrases="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsCaptureTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBufferMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsConcurrentCapture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", powerConsumptionMw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", returnsTriggerInEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 311
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getImplementor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getSupportedModelArch()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxSoundModels()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxKeyphrases()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxUsers()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getRecognitionModes()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isCaptureTransitionSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 322
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getMaxBufferMillis()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isConcurrentCaptureSupported()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 324
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getPowerConsumptionMw()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->isTriggerReturnedInEvent()Z

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 326
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->getAudioCapabilities()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    return-void
.end method
