.class public Landroid/apex/ApexSessionInfo;
.super Ljava/lang/Object;
.source "ApexSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist crashingNativeProcess:Ljava/lang/String;

.field public blacklist errorMessage:Ljava/lang/String;

.field public blacklist isActivated:Z

.field public blacklist isActivationFailed:Z

.field public blacklist isRevertFailed:Z

.field public blacklist isRevertInProgress:Z

.field public blacklist isReverted:Z

.field public blacklist isStaged:Z

.field public blacklist isSuccess:Z

.field public blacklist isUnknown:Z

.field public blacklist isVerified:Z

.field public blacklist sessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Landroid/apex/ApexSessionInfo$1;

    invoke-direct {v0}, Landroid/apex/ApexSessionInfo$1;-><init>()V

    sput-object v0, Landroid/apex/ApexSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    .line 9
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 10
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    .line 11
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    .line 12
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    .line 13
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    .line 14
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 15
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 16
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 17
    iput-boolean v0, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 56
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 58
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_22

    .line 59
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    return-void

    .line 85
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    return-void

    .line 85
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 62
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v6

    :goto_0
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 85
    :cond_5
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_6
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    goto :goto_1

    :cond_7
    move v2, v6

    :goto_1
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 85
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_9
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v5

    goto :goto_2

    :cond_a
    move v2, v6

    :goto_2
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 85
    :cond_b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_c
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d

    move v2, v5

    goto :goto_3

    :cond_d
    move v2, v6

    :goto_3
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 85
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    :cond_f
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_10

    move v2, v5

    goto :goto_4

    :cond_10
    move v2, v6

    :goto_4
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_12

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 85
    :cond_11
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_12
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_13

    move v2, v5

    goto :goto_5

    :cond_13
    move v2, v6

    :goto_5
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_15

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 85
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_15
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_16

    move v2, v5

    goto :goto_6

    :cond_16
    move v2, v6

    :goto_6
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_18

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 85
    :cond_17
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_18
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_19

    move v2, v5

    goto :goto_7

    :cond_19
    move v2, v6

    :goto_7
    iput-boolean v2, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1b

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1a

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 85
    :cond_1a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_1b
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_8

    :cond_1c
    move v5, v6

    :goto_8
    iput-boolean v5, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1e

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1d

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 85
    :cond_1d
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1e
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_20

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 85
    :cond_1f
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_20
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 84
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_21

    .line 87
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    nop

    .line 89
    return-void

    .line 85
    :cond_21
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :catchall_0
    move-exception v2

    goto :goto_9

    .line 58
    :cond_22
    :try_start_d
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/apex/ApexSessionInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 84
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/apex/ApexSessionInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_9
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_23

    .line 85
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_23
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 88
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 35
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Landroid/apex/ApexSessionInfo;->sessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isUnknown:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isVerified:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isStaged:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isActivated:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isRevertInProgress:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isActivationFailed:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isSuccess:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isReverted:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v1, p0, Landroid/apex/ApexSessionInfo;->isRevertFailed:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget-object v1, p0, Landroid/apex/ApexSessionInfo;->crashingNativeProcess:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Landroid/apex/ApexSessionInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 49
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void
.end method
