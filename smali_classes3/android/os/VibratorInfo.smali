.class public Landroid/os/VibratorInfo;
.super Ljava/lang/Object;
.source "VibratorInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/VibratorInfo$Builder;,
        Landroid/os/VibratorInfo$FrequencyProfile;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibratorInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

.field private static final blacklist TAG:Ljava/lang/String; = "VibratorInfo"


# instance fields
.field private final blacklist mCapabilities:J

.field private final blacklist mCompositionSizeMax:I

.field private final blacklist mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

.field private final blacklist mId:I

.field private final blacklist mPrimitiveDelayMax:I

.field private final blacklist mPwlePrimitiveDurationMax:I

.field private final blacklist mPwleSizeMax:I

.field private final blacklist mQFactor:F

.field private final blacklist mSupportedBraking:Landroid/util/SparseBooleanArray;

.field private final blacklist mSupportedEffects:Landroid/util/SparseBooleanArray;

.field private final blacklist mSupportedPrimitives:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/os/VibratorInfo$Builder;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/os/VibratorInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroid/os/VibratorInfo$Builder;->build()Landroid/os/VibratorInfo;

    move-result-object v0

    sput-object v0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    .line 792
    new-instance v0, Landroid/os/VibratorInfo$1;

    invoke-direct {v0}, Landroid/os/VibratorInfo$1;-><init>()V

    sput-object v0, Landroid/os/VibratorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "capabilities"    # J
    .param p4, "supportedEffects"    # Landroid/util/SparseBooleanArray;
    .param p5, "supportedBraking"    # Landroid/util/SparseBooleanArray;
    .param p6, "supportedPrimitives"    # Landroid/util/SparseIntArray;
    .param p7, "primitiveDelayMax"    # I
    .param p8, "compositionSizeMax"    # I
    .param p9, "pwlePrimitiveDurationMax"    # I
    .param p10, "pwleSizeMax"    # I
    .param p11, "qFactor"    # F
    .param p12, "frequencyProfile"    # Landroid/os/VibratorInfo$FrequencyProfile;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iput p1, p0, Landroid/os/VibratorInfo;->mId:I

    .line 117
    iput-wide p2, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    .line 118
    const/4 v0, 0x0

    if-nez p4, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 119
    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p5}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 120
    invoke-virtual {p6}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 121
    iput p7, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    .line 122
    iput p8, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    .line 123
    iput p9, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    .line 124
    iput p10, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    .line 125
    iput p11, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 126
    iput-object p12, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 127
    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/VibratorInfo;)V
    .locals 13
    .param p1, "id"    # I
    .param p2, "baseVibratorInfo"    # Landroid/os/VibratorInfo;

    .line 78
    iget-wide v2, p2, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-object v4, p2, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v5, p2, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v6, p2, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    iget v7, p2, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v8, p2, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v9, p2, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v10, p2, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v11, p2, Landroid/os/VibratorInfo;->mQFactor:F

    iget-object v12, p2, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/os/VibratorInfo;-><init>(IJLandroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;Landroid/util/SparseIntArray;IIIIFLandroid/os/VibratorInfo$FrequencyProfile;)V

    .line 83
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mId:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 74
    sget-object v0, Landroid/os/VibratorInfo$FrequencyProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorInfo$FrequencyProfile;

    iput-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 75
    return-void
.end method

.method private blacklist getCapabilitiesNames()[Ljava/lang/String;
    .locals 3

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    const-string v1, "ON_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_0
    const-wide/16 v1, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 410
    const-string v1, "PERFORM_CALLBACK"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_1
    const-wide/16 v1, 0x20

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 413
    const-string v1, "COMPOSE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_2
    const-wide/16 v1, 0x400

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    const-string v1, "COMPOSE_PWLE_EFFECTS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_3
    const-wide/16 v1, 0x40

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 419
    const-string v1, "ALWAYS_ON_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_4
    const-wide/16 v1, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 422
    const-string v1, "AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_5
    const-wide/16 v1, 0x200

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 425
    const-string v1, "FREQUENCY_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_6
    const-wide/16 v1, 0x8

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 428
    const-string v1, "EXTERNAL_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    :cond_7
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 431
    const-string v1, "EXTERNAL_AMPLITUDE_CONTROL"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private blacklist getSupportedBrakingNames()[Ljava/lang/String;
    .locals 3

    .line 448
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 449
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 451
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 452
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 453
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 461
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    .line 458
    :pswitch_0
    const-string v2, "CLAB"

    aput-object v2, v0, v1

    .line 459
    goto :goto_1

    .line 455
    :pswitch_1
    const-string v2, "NONE"

    aput-object v2, v0, v1

    .line 456
    nop

    .line 452
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v1    # "i":I
    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getSupportedEffectsNames()[Ljava/lang/String;
    .locals 3

    .line 437
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 440
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 441
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 442
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/VibrationEffect;->effectIdToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private blacklist getSupportedPrimitivesNames()[Ljava/lang/String;
    .locals 5

    .line 468
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 469
    .local v0, "supportedPrimitivesCount":I
    new-array v1, v0, [Ljava/lang/String;

    .line 470
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 471
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/VibrationEffect$Composition;->primitiveToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 472
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 151
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 152
    return v0

    .line 154
    :cond_0
    instance-of v1, p1, Landroid/os/VibratorInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 155
    return v2

    .line 157
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/VibratorInfo;

    .line 158
    .local v1, "that":Landroid/os/VibratorInfo;
    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 159
    .local v3, "supportedPrimitivesCount":I
    iget-object v4, v1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 160
    return v2

    .line 162
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_5

    .line 163
    iget-object v5, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    if-eq v5, v6, :cond_3

    .line 164
    return v2

    .line 166
    :cond_3
    iget-object v5, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    iget-object v6, v1, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 167
    return v2

    .line 162
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 170
    .end local v4    # "i":I
    :cond_5
    iget v4, p0, Landroid/os/VibratorInfo;->mId:I

    iget v5, v1, Landroid/os/VibratorInfo;->mId:I

    if-ne v4, v5, :cond_6

    iget-wide v4, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    iget-wide v6, v1, Landroid/os/VibratorInfo;->mCapabilities:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_6

    iget v4, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    if-ne v4, v5, :cond_6

    iget v4, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    if-ne v4, v5, :cond_6

    iget v4, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    if-ne v4, v5, :cond_6

    iget v4, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    iget v5, v1, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    iget-object v5, v1, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    .line 175
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    iget-object v5, v1, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    .line 176
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 177
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, v1, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    iget-object v5, v1, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    .line 178
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    .line 170
    :goto_1
    return v0
.end method

.method protected blacklist getCapabilities()J
    .locals 2

    .line 401
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    return-wide v0
.end method

.method public blacklist getCompositionSizeMax()I
    .locals 1

    .line 337
    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    return v0
.end method

.method public blacklist getDefaultBraking()I
    .locals 3

    .line 231
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 233
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 234
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    return v2

    .line 233
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "size":I
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 212
    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    return v0
.end method

.method public blacklist getPrimitiveDelayMax()I
    .locals 1

    .line 328
    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    return v0
.end method

.method public blacklist getPrimitiveDuration(I)I
    .locals 1
    .param p1, "primitiveId"    # I

    .line 314
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public blacklist getPwlePrimitiveDurationMax()I
    .locals 1

    .line 346
    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    return v0
.end method

.method public blacklist getPwleSizeMax()I
    .locals 1

    .line 355
    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    return v0
.end method

.method public blacklist getQFactor()F
    .locals 1

    .line 386
    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    return v0
.end method

.method public blacklist getResonantFrequencyHz()F
    .locals 1

    .line 376
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-static {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->-$$Nest$fgetmResonantFrequencyHz(Landroid/os/VibratorInfo$FrequencyProfile;)F

    move-result v0

    return v0
.end method

.method public blacklist getSupportedBraking()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 245
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedEffects()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 287
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    return-object v0

    .line 290
    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedPrimitives()Landroid/util/SparseIntArray;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasAmplitudeControl()Z
    .locals 2

    .line 221
    const-wide/16 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    return v0
.end method

.method public blacklist hasBrakingSupport(I)Z
    .locals 1
    .param p1, "braking"    # I

    .line 258
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasCapability(J)Z
    .locals 2
    .param p1, "capability"    # J

    .line 366
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    and-long/2addr v0, p1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    .line 184
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 183
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 185
    .local v0, "hashCode":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 186
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 187
    .end local v0    # "hashCode":I
    .local v2, "hashCode":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 185
    .end local v2    # "hashCode":I
    .restart local v0    # "hashCode":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public blacklist isBrakingSupportKnown()Z
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEffectSupportKnown()Z
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEffectSupported(I)I
    .locals 1
    .param p1, "effectId"    # I

    .line 277
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    return v0

    .line 280
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x2

    .line 280
    :goto_0
    return v0
.end method

.method public blacklist isPrimitiveSupported(I)Z
    .locals 2
    .param p1, "primitiveId"    # I

    .line 301
    const-wide/16 v0, 0x20

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    .line 302
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VibratorInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 196
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getCapabilitiesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCapabilities flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    .line 197
    invoke-static {v1, v2}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedEffects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedEffectsNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedBraking="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedBrakingNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSupportedPrimitives="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    invoke-direct {p0}, Landroid/os/VibratorInfo;->getSupportedPrimitivesNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPrimitiveDelayMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCompositionSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPwlePrimitiveDurationMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPwleSizeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrequencyProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    iget v0, p0, Landroid/os/VibratorInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-wide v0, p0, Landroid/os/VibratorInfo;->mCapabilities:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedEffects:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 134
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedBraking:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 135
    iget-object v0, p0, Landroid/os/VibratorInfo;->mSupportedPrimitives:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 136
    iget v0, p0, Landroid/os/VibratorInfo;->mPrimitiveDelayMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    iget v0, p0, Landroid/os/VibratorInfo;->mCompositionSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget v0, p0, Landroid/os/VibratorInfo;->mPwlePrimitiveDurationMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget v0, p0, Landroid/os/VibratorInfo;->mPwleSizeMax:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Landroid/os/VibratorInfo;->mQFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 141
    iget-object v0, p0, Landroid/os/VibratorInfo;->mFrequencyProfile:Landroid/os/VibratorInfo$FrequencyProfile;

    invoke-virtual {v0, p1, p2}, Landroid/os/VibratorInfo$FrequencyProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 142
    return-void
.end method
