.class public Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
.super Ljava/lang/Object;
.source "FrontendDvbtCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist bandwidthCap:I

.field public blacklist coderateCap:I

.field public blacklist constellationCap:I

.field public blacklist guardIntervalCap:I

.field public blacklist hierarchyCap:I

.field public blacklist isMisoSupported:Z

.field public blacklist isT2Supported:Z

.field public blacklist transmissionModeCap:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities$1;

    invoke-direct {v0}, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities$1;-><init>()V

    sput-object v0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->transmissionModeCap:I

    .line 9
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->bandwidthCap:I

    .line 10
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->constellationCap:I

    .line 11
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->coderateCap:I

    .line 12
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->hierarchyCap:I

    .line 13
    iput v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->guardIntervalCap:I

    .line 14
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isT2Supported:Z

    .line 15
    iput-boolean v0, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isMisoSupported:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .locals 1

    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 50
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 52
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_11

    .line 53
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    return-void

    .line 71
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->transmissionModeCap:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void

    .line 71
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->bandwidthCap:I

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 57
    return-void

    .line 71
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->constellationCap:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 71
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->coderateCap:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 71
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->hierarchyCap:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 71
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->guardIntervalCap:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 71
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isT2Supported:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 71
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isMisoSupported:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 70
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 73
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    nop

    .line 75
    return-void

    .line 71
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 52
    :cond_11
    :try_start_9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 70
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_12

    .line 71
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_12
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 33
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->transmissionModeCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->bandwidthCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->constellationCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->coderateCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->hierarchyCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->guardIntervalCap:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isT2Supported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 41
    iget-boolean v1, p0, Landroid/hardware/tv/tuner/FrontendDvbtCapabilities;->isMisoSupported:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 43
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void
.end method
