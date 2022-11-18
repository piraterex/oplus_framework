.class public Lcom/oplus/app/KernelWakeLockInfo;
.super Ljava/lang/Object;
.source "KernelWakeLockInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/app/KernelWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public whitelist activeCount:J

.field public whitelist activeTime:J

.field public whitelist eventCount:J

.field public whitelist expireCount:J

.field public whitelist isActive:Z

.field public whitelist isKernelWakelock:Z

.field public whitelist lastChange:J

.field public whitelist maxTime:J

.field public whitelist name:Ljava/lang/String;

.field public whitelist pid:I

.field public whitelist preventSuspendTime:J

.field public whitelist totalTime:J

.field public whitelist wakeupCount:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/oplus/app/KernelWakeLockInfo$1;

    invoke-direct {v0}, Lcom/oplus/app/KernelWakeLockInfo$1;-><init>()V

    sput-object v0, Lcom/oplus/app/KernelWakeLockInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->activeCount:J

    .line 10
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->lastChange:J

    .line 11
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->maxTime:J

    .line 12
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->totalTime:J

    .line 13
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->isActive:Z

    .line 14
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->activeTime:J

    .line 15
    iput-boolean v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->isKernelWakelock:Z

    .line 17
    iput v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->pid:I

    .line 19
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->eventCount:J

    .line 20
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->expireCount:J

    .line 21
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->preventSuspendTime:J

    .line 22
    iput-wide v0, p0, Lcom/oplus/app/KernelWakeLockInfo;->wakeupCount:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "_mask":I
    return v0
.end method

.method public final whitelist readFromParcel(Landroid/os/Parcel;)V
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
    if-gez v1, :cond_0

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 63
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 63
    return-void

    .line 64
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->name:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_2

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    return-void

    .line 66
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->activeCount:J

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    return-void

    .line 68
    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->lastChange:J

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_4

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 69
    return-void

    .line 70
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->maxTime:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    return-void

    .line 72
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->totalTime:J

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    return-void

    .line 74
    :cond_6
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->isActive:Z

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_8

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 75
    return-void

    .line 76
    :cond_8
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/oplus/app/KernelWakeLockInfo;->activeTime:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    return-void

    .line 78
    :cond_9
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    :cond_a
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/oplus/app/KernelWakeLockInfo;->isKernelWakelock:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 79
    return-void

    .line 80
    :cond_b
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->pid:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    return-void

    .line 82
    :cond_c
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->eventCount:J

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 83
    return-void

    .line 84
    :cond_d
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->expireCount:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    return-void

    .line 86
    :cond_e
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->preventSuspendTime:J

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    return-void

    .line 88
    :cond_f
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oplus/app/KernelWakeLockInfo;->wakeupCount:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 90
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
    nop

    .line 92
    return-void

    .line 90
    :catchall_0
    move-exception v2

    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 91
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
    iget-object v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->activeCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 41
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->lastChange:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 42
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->maxTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 43
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->totalTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 44
    iget-boolean v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->isActive:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->activeTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 46
    iget-boolean v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->isKernelWakelock:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->pid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->eventCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->expireCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 50
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->preventSuspendTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 51
    iget-wide v1, p0, Lcom/oplus/app/KernelWakeLockInfo;->wakeupCount:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

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
