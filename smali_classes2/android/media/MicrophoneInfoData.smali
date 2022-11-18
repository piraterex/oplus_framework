.class public Landroid/media/MicrophoneInfoData;
.super Ljava/lang/Object;
.source "MicrophoneInfoData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MicrophoneInfoData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist address:Ljava/lang/String;

.field public blacklist channelMapping:[I

.field public blacklist deviceGroup:I

.field public blacklist deviceId:Ljava/lang/String;

.field public blacklist deviceLocation:I

.field public blacklist directionality:I

.field public blacklist frequencies:[F

.field public blacklist frequencyResponses:[F

.field public blacklist geometricLocation:[F

.field public blacklist indexInTheGroup:I

.field public blacklist maxSpl:F

.field public blacklist minSpl:F

.field public blacklist orientation:[F

.field public blacklist portId:I

.field public blacklist sensitivity:F

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/media/MicrophoneInfoData$1;

    invoke-direct {v0}, Landroid/media/MicrophoneInfoData$1;-><init>()V

    sput-object v0, Landroid/media/MicrophoneInfoData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MicrophoneInfoData;->portId:I

    .line 10
    iput v0, p0, Landroid/media/MicrophoneInfoData;->type:I

    .line 12
    iput v0, p0, Landroid/media/MicrophoneInfoData;->deviceLocation:I

    .line 13
    iput v0, p0, Landroid/media/MicrophoneInfoData;->deviceGroup:I

    .line 14
    iput v0, p0, Landroid/media/MicrophoneInfoData;->indexInTheGroup:I

    .line 20
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/MicrophoneInfoData;->sensitivity:F

    .line 21
    iput v1, p0, Landroid/media/MicrophoneInfoData;->maxSpl:F

    .line 22
    iput v1, p0, Landroid/media/MicrophoneInfoData;->minSpl:F

    .line 23
    iput v0, p0, Landroid/media/MicrophoneInfoData;->directionality:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 64
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 66
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_21

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 101
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->deviceId:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 101
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->portId:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 101
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->type:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 101
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->address:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 101
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->deviceLocation:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 101
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->deviceGroup:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 101
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->indexInTheGroup:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 101
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->geometricLocation:[F

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 101
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->orientation:[F

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 101
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->frequencies:[F

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 101
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->frequencyResponses:[F

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 101
    :cond_16
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/media/MicrophoneInfoData;->channelMapping:[I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 101
    :cond_18
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->sensitivity:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 101
    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->maxSpl:F

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 101
    :cond_1c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->minSpl:F

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 101
    :cond_1e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MicrophoneInfoData;->directionality:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 100
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 103
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    nop

    .line 105
    return-void

    .line 101
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 66
    :cond_21
    :try_start_11
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/media/MicrophoneInfoData;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 100
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/media/MicrophoneInfoData;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_22

    .line 101
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_22
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 39
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->deviceId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget v1, p0, Landroid/media/MicrophoneInfoData;->portId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/media/MicrophoneInfoData;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget v1, p0, Landroid/media/MicrophoneInfoData;->deviceLocation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/media/MicrophoneInfoData;->deviceGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/media/MicrophoneInfoData;->indexInTheGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->geometricLocation:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 48
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->orientation:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 49
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->frequencies:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 50
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->frequencyResponses:[F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 51
    iget-object v1, p0, Landroid/media/MicrophoneInfoData;->channelMapping:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 52
    iget v1, p0, Landroid/media/MicrophoneInfoData;->sensitivity:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 53
    iget v1, p0, Landroid/media/MicrophoneInfoData;->maxSpl:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 54
    iget v1, p0, Landroid/media/MicrophoneInfoData;->minSpl:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 55
    iget v1, p0, Landroid/media/MicrophoneInfoData;->directionality:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 57
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void
.end method
