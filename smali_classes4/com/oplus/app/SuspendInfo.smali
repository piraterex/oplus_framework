.class public Lcom/oplus/app/SuspendInfo;
.super Ljava/lang/Object;
.source "SuspendInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/app/SuspendInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist backoffContinueCount:J

.field public whitelist failedSuspendCount:J

.field public whitelist failedSuspendOverheadTimeMillis:J

.field public whitelist newBackoffCount:J

.field public whitelist shortSuspendCount:J

.field public whitelist shortSuspendTimeMillis:J

.field public whitelist sleepTimeMillis:J

.field public whitelist suspendAttemptCount:J

.field public whitelist suspendOverheadTimeMillis:J

.field public whitelist suspendTimeMillis:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/oplus/app/SuspendInfo$1;

    invoke-direct {v0}, Lcom/oplus/app/SuspendInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/app/SuspendInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->suspendAttemptCount:J

    .line 14
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->failedSuspendCount:J

    .line 19
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->shortSuspendCount:J

    .line 23
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->suspendTimeMillis:J

    .line 27
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->shortSuspendTimeMillis:J

    .line 31
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 35
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 40
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->newBackoffCount:J

    .line 45
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->backoffContinueCount:J

    .line 49
    iput-wide v0, p0, Lcom/oplus/app/SuspendInfo;->sleepTimeMillis:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 87
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "_aidl_parcelable_size":I
    if-gez v1, :cond_0

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 89
    return-void

    .line 90
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 90
    return-void

    .line 91
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->suspendAttemptCount:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 92
    return-void

    .line 93
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->failedSuspendCount:J

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    return-void

    .line 95
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->shortSuspendCount:J

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_4

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    return-void

    .line 97
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->suspendTimeMillis:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 98
    return-void

    .line 99
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->shortSuspendTimeMillis:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 100
    return-void

    .line 101
    :cond_6
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->suspendOverheadTimeMillis:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 102
    return-void

    .line 103
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_8

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    return-void

    .line 105
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->newBackoffCount:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 106
    return-void

    .line 107
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->backoffContinueCount:J

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    return-void

    .line 109
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/SuspendInfo;->sleepTimeMillis:J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 111
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    nop

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 112
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 68
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->suspendAttemptCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 70
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->failedSuspendCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 71
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->shortSuspendCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->suspendTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->shortSuspendTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->suspendOverheadTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->failedSuspendOverheadTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->newBackoffCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->backoffContinueCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 78
    iget-wide v1, p0, Lcom/oplus/app/SuspendInfo;->sleepTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 80
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void
.end method
