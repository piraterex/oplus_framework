.class public Landroid/hardware/tv/tuner/FrontendDvbsSettings;
.super Ljava/lang/Object;
.source "FrontendDvbsSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbsSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist inputStreamId:I

.field public blacklist inversion:I

.field public blacklist isDiseqcRxMessage:Z

.field public blacklist modulation:I

.field public blacklist pilot:I

.field public blacklist rolloff:I

.field public blacklist scanType:I

.field public blacklist standard:B

.field public blacklist symbolRate:I

.field public blacklist vcmMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbsSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbsSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    .line 9
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    .line 11
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    .line 13
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    .line 14
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    .line 15
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    .line 17
    iput-byte v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    .line 18
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    .line 19
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    .line 20
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 2
    .param p1, "_v"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_1

    .line 105
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 107
    :cond_1
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    invoke-direct {p0, v1}, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 100
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 60
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1b

    .line 63
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 91
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 91
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 91
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 91
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 91
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_9
    :try_start_5
    sget-object v2, Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    iput-object v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 91
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 91
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 91
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 91
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 91
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 91
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 91
    :cond_16
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 91
    :cond_18
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 90
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 93
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    nop

    .line 95
    return-void

    .line 91
    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 62
    :cond_1b
    :try_start_e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbsSettings;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 90
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbsSettings;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1c

    .line 91
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_1c
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->frequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 40
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->endFrequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inversion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->modulation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->coderate:Landroid/hardware/tv/tuner/FrontendDvbsCodeRate;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 44
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->symbolRate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->rolloff:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->pilot:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->inputStreamId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-byte v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->standard:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 49
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->vcmMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->scanType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbsSettings;->isDiseqcRxMessage:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 53
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void
.end method
