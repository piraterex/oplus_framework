.class public Landroid/hardware/tv/tuner/FrontendDvbtSettings;
.super Ljava/lang/Object;
.source "FrontendDvbtSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbtSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bandwidth:I

.field public blacklist constellation:I

.field public blacklist endFrequency:J

.field public blacklist frequency:J

.field public blacklist guardInterval:I

.field public blacklist hierarchy:I

.field public blacklist hpCoderate:I

.field public blacklist inversion:I

.field public blacklist isHighPriority:Z

.field public blacklist isMiso:Z

.field public blacklist lpCoderate:I

.field public blacklist plpGroupId:I

.field public blacklist plpId:I

.field public blacklist plpMode:I

.field public blacklist standard:B

.field public blacklist transmissionMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbtSettings$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbtSettings$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    .line 9
    iput-wide v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    .line 11
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    .line 12
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    .line 13
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    .line 14
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    .line 15
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    .line 16
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    .line 17
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    .line 18
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    .line 19
    iput-byte v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    .line 20
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    .line 21
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    .line 22
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    .line 23
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 66
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 68
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_21

    .line 69
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 103
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 103
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 103
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 103
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 103
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 103
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 103
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 103
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 103
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 103
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 103
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_17

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    return-void

    .line 103
    :cond_16
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_19

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_18

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 93
    return-void

    .line 103
    :cond_18
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 95
    return-void

    .line 103
    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1c

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 97
    return-void

    .line 103
    :cond_1c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1f

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    return-void

    .line 103
    :cond_1e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 102
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 105
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    nop

    .line 107
    return-void

    .line 103
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 68
    :cond_21
    :try_start_11
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbtSettings;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 102
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbtSettings;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_22

    .line 103
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_22
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->frequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-wide v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->endFrequency:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->inversion:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->transmissionMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->bandwidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->constellation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hierarchy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->hpCoderate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->lpCoderate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->guardInterval:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isHighPriority:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    iget-byte v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->standard:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->isMiso:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 55
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtSettings;->plpGroupId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 59
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void
.end method
