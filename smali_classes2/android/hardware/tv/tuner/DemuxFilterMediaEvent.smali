.class public Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
.super Ljava/lang/Object;
.source "DemuxFilterMediaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist avDataId:J

.field public blacklist avMemory:Landroid/hardware/common/NativeHandle;

.field public blacklist dataLength:J

.field public blacklist dts:J

.field public blacklist extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

.field public blacklist isDtsPresent:Z

.field public blacklist isPesPrivateData:Z

.field public blacklist isPtsPresent:Z

.field public blacklist isSecureMemory:Z

.field public blacklist mpuSequenceNumber:I

.field public blacklist offset:J

.field public blacklist pts:J

.field public blacklist scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

.field public blacklist streamId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    .line 9
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    .line 10
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    .line 11
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    .line 12
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    .line 13
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    .line 14
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    .line 16
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    .line 17
    iput-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    .line 19
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 110
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 111
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 113
    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 104
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 105
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 106
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 62
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 64
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1d

    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 95
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 95
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 95
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 95
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 95
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 95
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 95
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 95
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_f
    :try_start_8
    sget-object v2, Landroid/hardware/common/NativeHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/common/NativeHandle;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 95
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 95
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 95
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 95
    :cond_16
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 95
    :cond_18
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_19
    :try_start_d
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 95
    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1b
    :try_start_e
    sget-object v2, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    iput-object v2, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    nop

    .line 99
    return-void

    .line 95
    :cond_1c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 64
    :cond_1d
    :try_start_f
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 94
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1e

    .line 95
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_1e
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
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
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->streamId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPtsPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->pts:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isDtsPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dts:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 45
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->dataLength:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->offset:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avMemory:Landroid/hardware/common/NativeHandle;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 48
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isSecureMemory:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget-wide v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->avDataId:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->mpuSequenceNumber:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->isPesPrivateData:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->extraMetaData:Landroid/hardware/tv/tuner/DemuxFilterMediaEventExtraMetaData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 53
    iget-object v1, p0, Landroid/hardware/tv/tuner/DemuxFilterMediaEvent;->scIndexMask:Landroid/hardware/tv/tuner/DemuxFilterScIndexMask;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 55
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void
.end method
