.class public final Landroid/service/voice/HotwordDetectedResult;
.super Ljava/lang/Object;
.source "HotwordDetectedResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectedResult$Builder;,
        Landroid/service/voice/HotwordDetectedResult$Limit;,
        Landroid/service/voice/HotwordDetectedResult$ConfidenceLevel;,
        Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CHANNEL_UNSET:I = -0x1

.field public static final whitelist CONFIDENCE_LEVEL_HIGH:I = 0x5

.field public static final whitelist CONFIDENCE_LEVEL_LOW:I = 0x1

.field public static final whitelist CONFIDENCE_LEVEL_LOW_MEDIUM:I = 0x2

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM:I = 0x3

.field public static final whitelist CONFIDENCE_LEVEL_MEDIUM_HIGH:I = 0x4

.field public static final whitelist CONFIDENCE_LEVEL_NONE:I = 0x0

.field public static final whitelist CONFIDENCE_LEVEL_VERY_HIGH:I = 0x6

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordDetectedResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HOTWORD_OFFSET_UNSET:I = -0x1

.field private static final blacklist LIMIT_AUDIO_CHANNEL_MAX_VALUE:I = 0x3f

.field private static final blacklist LIMIT_HOTWORD_OFFSET_MAX_VALUE:I = 0x36ee80

.field private static blacklist sMaxBundleSize:I


# instance fields
.field private blacklist mAudioChannel:I

.field private final blacklist mConfidenceLevel:I

.field private final blacklist mExtras:Landroid/os/PersistableBundle;

.field private blacklist mHotwordDetectionPersonalized:Z

.field private blacklist mHotwordDurationMillis:I

.field private blacklist mHotwordOffsetMillis:I

.field private final blacklist mHotwordPhraseId:I

.field private blacklist mMediaSyncEvent:Landroid/media/MediaSyncEvent;

.field private final blacklist mPersonalizedScore:I

.field private final blacklist mScore:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultConfidenceLevel()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultExtras()Landroid/os/PersistableBundle;
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultHotwordPhraseId()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultPersonalizedScore()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultScore()I
    .locals 1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 209
    const/4 v0, -0x1

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    .line 652
    new-instance v0, Landroid/service/voice/HotwordDetectedResult$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectedResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordDetectedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/media/MediaSyncEvent;IIIZIIILandroid/os/PersistableBundle;)V
    .locals 3
    .param p1, "confidenceLevel"    # I
    .param p2, "mediaSyncEvent"    # Landroid/media/MediaSyncEvent;
    .param p3, "hotwordOffsetMillis"    # I
    .param p4, "hotwordDurationMillis"    # I
    .param p5, "audioChannel"    # I
    .param p6, "hotwordDetectionPersonalized"    # Z
    .param p7, "score"    # I
    .param p8, "personalizedScore"    # I
    .param p9, "hotwordPhraseId"    # I
    .param p10, "extras"    # Landroid/os/PersistableBundle;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 127
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 134
    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 140
    iput-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 407
    iput p1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    .line 408
    const-class v1, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 410
    iput-object p2, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 411
    iput p3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 412
    iput p4, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 413
    iput p5, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 414
    iput-boolean p6, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 415
    iput p7, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    .line 416
    iput p8, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    .line 417
    iput p9, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    .line 418
    iput-object p10, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    .line 419
    const-class v1, Landroid/annotation/NonNull;

    invoke-static {v1, v0, p10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 422
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    .line 423
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 13
    .param p1, "in"    # Landroid/os/Parcel;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 127
    const/4 v2, 0x0

    iput v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 134
    iput v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 140
    iput-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 622
    .local v1, "flg":I
    and-int/lit8 v3, v1, 0x20

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 623
    .local v2, "hotwordDetectionPersonalized":Z
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 624
    .local v3, "confidenceLevel":I
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_1

    move-object v4, v0

    goto :goto_0

    :cond_1
    sget-object v4, Landroid/media/MediaSyncEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/MediaSyncEvent;

    .line 625
    .local v4, "mediaSyncEvent":Landroid/media/MediaSyncEvent;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 626
    .local v5, "hotwordOffsetMillis":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 627
    .local v6, "hotwordDurationMillis":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 628
    .local v7, "audioChannel":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 629
    .local v8, "score":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 630
    .local v9, "personalizedScore":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 631
    .local v10, "hotwordPhraseId":I
    sget-object v11, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PersistableBundle;

    .line 633
    .local v11, "extras":Landroid/os/PersistableBundle;
    iput v3, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    .line 634
    const-class v12, Landroid/service/voice/HotwordDetectedResult$HotwordConfidenceLevelValue;

    invoke-static {v12, v0, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 636
    iput-object v4, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 637
    iput v5, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    .line 638
    iput v6, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    .line 639
    iput v7, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    .line 640
    iput-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    .line 641
    iput v8, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    .line 642
    iput v9, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    .line 643
    iput v10, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    .line 644
    iput-object v11, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    .line 645
    const-class v12, Landroid/annotation/NonNull;

    invoke-static {v12, v0, v11}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 648
    invoke-direct {p0}, Landroid/service/voice/HotwordDetectedResult;->onConstructed()V

    .line 649
    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 890
    return-void
.end method

.method private static blacklist bitCount(J)I
    .locals 3
    .param p0, "value"    # J

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "bits":I
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 295
    add-int/lit8 v0, v0, 0x1

    .line 296
    const/4 v1, 0x1

    shr-long/2addr p0, v1

    goto :goto_0

    .line 298
    :cond_0
    return v0
.end method

.method public static blacklist confidenceLevelToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 355
    packed-switch p0, :pswitch_data_0

    .line 370
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 369
    :pswitch_0
    const-string v0, "CONFIDENCE_LEVEL_VERY_HIGH"

    return-object v0

    .line 367
    :pswitch_1
    const-string v0, "CONFIDENCE_LEVEL_HIGH"

    return-object v0

    .line 365
    :pswitch_2
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM_HIGH"

    return-object v0

    .line 363
    :pswitch_3
    const-string v0, "CONFIDENCE_LEVEL_MEDIUM"

    return-object v0

    .line 361
    :pswitch_4
    const-string v0, "CONFIDENCE_LEVEL_LOW_MEDIUM"

    return-object v0

    .line 359
    :pswitch_5
    const-string v0, "CONFIDENCE_LEVEL_LOW"

    return-object v0

    .line 357
    :pswitch_6
    const-string v0, "CONFIDENCE_LEVEL_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist defaultConfidenceLevel()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 206
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    return-object v0
.end method

.method private static blacklist defaultHotwordPhraseId()I
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultPersonalizedScore()I
    .locals 1

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist defaultScore()I
    .locals 1

    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public static whitelist getMaxBundleSize()I
    .locals 2

    .line 218
    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    if-gez v0, :cond_0

    .line 219
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    .line 222
    :cond_0
    sget v0, Landroid/service/voice/HotwordDetectedResult;->sMaxBundleSize:I

    return v0
.end method

.method public static whitelist getMaxHotwordPhraseId()I
    .locals 1

    .line 185
    const/16 v0, 0x3f

    return v0
.end method

.method public static whitelist getMaxScore()I
    .locals 1

    .line 168
    const/16 v0, 0xff

    return v0
.end method

.method public static blacklist getParcelableSize(Landroid/os/Parcelable;)I
    .locals 2
    .param p0, "parcelable"    # Landroid/os/Parcelable;

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 246
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 248
    .local v1, "size":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 249
    return v1
.end method

.method public static blacklist getUsageSize(Landroid/service/voice/HotwordDetectedResult;)I
    .locals 5
    .param p0, "hotwordDetectedResult"    # Landroid/service/voice/HotwordDetectedResult;

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, "totalBits":I
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getConfidenceLevel()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultConfidenceLevel()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 261
    const-wide/16 v1, 0x6

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 263
    :cond_0
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordOffsetMillis()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 264
    const-wide/32 v3, 0x36ee80

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_1
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordDurationMillis()I

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    :cond_2
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getAudioChannel()I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 270
    const-wide/16 v1, 0x3f

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 274
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 276
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultScore()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 277
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 279
    :cond_4
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getPersonalizedScore()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultPersonalizedScore()I

    move-result v2

    if-eq v1, v2, :cond_5

    .line 280
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 282
    :cond_5
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getHotwordPhraseId()I

    move-result v1

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->defaultHotwordPhraseId()I

    move-result v2

    if-eq v1, v2, :cond_6

    .line 283
    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/service/voice/HotwordDetectedResult;->bitCount(J)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_6
    invoke-virtual {p0}, Landroid/service/voice/HotwordDetectedResult;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    .line 286
    .local v1, "persistableBundle":Landroid/os/PersistableBundle;
    invoke-virtual {v1}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 287
    invoke-static {v1}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    .line 289
    :cond_7
    return v0
.end method

.method static blacklist limitToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # I

    .line 386
    sparse-switch p0, :sswitch_data_0

    .line 391
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 388
    :sswitch_0
    const-string v0, "LIMIT_HOTWORD_OFFSET_MAX_VALUE"

    return-object v0

    .line 390
    :sswitch_1
    const-string v0, "LIMIT_AUDIO_CHANNEL_MAX_VALUE"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x3f -> :sswitch_1
        0x36ee80 -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist onConstructed()V
    .locals 10

    .line 302
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "score"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 303
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxScore()I

    move-result v1

    const-string/jumbo v3, "personalizedScore"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 305
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxHotwordPhraseId()I

    move-result v1

    const-string/jumbo v3, "hotwordPhraseId"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 307
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    int-to-long v3, v0

    .line 308
    invoke-static {}, Landroid/media/AudioRecord;->getMaxSharedAudioHistoryMillis()J

    move-result-wide v7

    .line 307
    const-wide/16 v5, 0x0

    const-string/jumbo v9, "hotwordDurationMillis"

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 309
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 310
    const v3, 0x36ee80

    const-string/jumbo v4, "hotwordOffsetMillis"

    invoke-static {v0, v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 313
    :cond_0
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-eq v0, v1, :cond_1

    .line 314
    const/16 v1, 0x3f

    const-string v3, "audioChannel"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 317
    :cond_1
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v0}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v0

    invoke-static {}, Landroid/service/voice/HotwordDetectedResult;->getMaxBundleSize()I

    move-result v1

    const-string v3, "extras"

    invoke-static {v0, v2, v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 321
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 612
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 551
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 552
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 554
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/voice/HotwordDetectedResult;

    .line 556
    .local v2, "that":Landroid/service/voice/HotwordDetectedResult;
    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    .line 558
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    iget-boolean v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    iget v4, v2, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    .line 566
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 556
    :goto_0
    return v0

    .line 552
    .end local v2    # "that":Landroid/service/voice/HotwordDetectedResult;
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAudioChannel()I
    .locals 1

    .line 462
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    return v0
.end method

.method public whitelist getConfidenceLevel()I
    .locals 1

    .line 430
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    return v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .locals 1

    .line 521
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getHotwordDurationMillis()I
    .locals 1

    .line 452
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    return v0
.end method

.method public whitelist getHotwordOffsetMillis()I
    .locals 1

    .line 441
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    return v0
.end method

.method public whitelist getHotwordPhraseId()I
    .locals 1

    .line 501
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    return v0
.end method

.method public whitelist getMediaSyncEvent()Landroid/media/MediaSyncEvent;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    return-object v0
.end method

.method public whitelist getPersonalizedScore()I
    .locals 1

    .line 491
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    return v0
.end method

.method public whitelist getScore()I
    .locals 1

    .line 481
    iget v0, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 575
    const/4 v0, 0x1

    .line 576
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    add-int/2addr v1, v2

    .line 577
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 578
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    add-int/2addr v1, v2

    .line 579
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    add-int/2addr v0, v2

    .line 580
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    add-int/2addr v1, v2

    .line 581
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    .line 582
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    add-int/2addr v1, v2

    .line 583
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    add-int/2addr v0, v2

    .line 584
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    add-int/2addr v1, v2

    .line 585
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 586
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist isHotwordDetectionPersonalized()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordDetectedResult { confidenceLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaSyncEvent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordOffsetMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDurationMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioChannel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordDetectionPersonalized = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", score = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", personalizedScore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hotwordPhraseId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", extras = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 595
    const/4 v0, 0x0

    .line 596
    .local v0, "flg":I
    iget-boolean v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDetectionPersonalized:Z

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x20

    .line 597
    :cond_0
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 598
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mConfidenceLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mMediaSyncEvent:Landroid/media/MediaSyncEvent;

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 601
    :cond_2
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordOffsetMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordDurationMillis:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mAudioChannel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mPersonalizedScore:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget v1, p0, Landroid/service/voice/HotwordDetectedResult;->mHotwordPhraseId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    iget-object v1, p0, Landroid/service/voice/HotwordDetectedResult;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 608
    return-void
.end method
