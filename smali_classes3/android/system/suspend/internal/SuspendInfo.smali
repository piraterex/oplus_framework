.class public Landroid/system/suspend/internal/SuspendInfo;
.super Ljava/lang/Object;
.source "SuspendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/suspend/internal/SuspendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist backoffContinueCount:J

.field public blacklist failedSuspendCount:J

.field public blacklist failedSuspendOverheadTimeMillis:J

.field public blacklist newBackoffCount:J

.field public blacklist shortSuspendCount:J

.field public blacklist shortSuspendTimeMillis:J

.field public blacklist sleepTimeMillis:J

.field public blacklist suspendAttemptCount:J

.field public blacklist suspendOverheadTimeMillis:J

.field public blacklist suspendTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/system/suspend/internal/SuspendInfo$1;

    invoke-direct {v0}, Landroid/system/suspend/internal/SuspendInfo$1;-><init>()V

    sput-object v0, Landroid/system/suspend/internal/SuspendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    .line 10
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    .line 15
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    .line 17
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    .line 19
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    .line 21
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 23
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 28
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    .line 33
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    .line 35
    iput-wide v0, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 70
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 72
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_15

    .line 73
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

    .line 73
    return-void

    .line 95
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 74
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    .line 75
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

    .line 75
    return-void

    .line 95
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    .line 77
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

    .line 77
    return-void

    .line 95
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    .line 79
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

    .line 79
    return-void

    .line 95
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    .line 81
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

    .line 81
    return-void

    .line 95
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 82
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    .line 83
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

    .line 83
    return-void

    .line 95
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 85
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

    .line 85
    return-void

    .line 95
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 87
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

    .line 87
    return-void

    .line 95
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    .line 89
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

    .line 89
    return-void

    .line 95
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    .line 91
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

    .line 91
    return-void

    .line 95
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 94
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 97
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    nop

    .line 99
    return-void

    .line 95
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 72
    :cond_15
    :try_start_b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/suspend/internal/SuspendInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 94
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/suspend/internal/SuspendInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_16

    .line 95
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_16
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendAttemptCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->shortSuspendTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->suspendOverheadTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 59
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->newBackoffCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->backoffContinueCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 61
    iget-wide v1, p0, Landroid/system/suspend/internal/SuspendInfo;->sleepTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 63
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void
.end method
