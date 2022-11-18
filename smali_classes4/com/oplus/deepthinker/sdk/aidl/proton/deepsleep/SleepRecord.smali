.class public Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
.super Ljava/lang/Object;
.source "SleepRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mSleepTime:J

.field private blacklist mWakeTime:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmSleepTime(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mSleepTime:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWakeTime(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;J)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mWakeTime:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(JJ)V
    .locals 2
    .param p1, "sleepTime"    # J
    .param p3, "wakeTime"    # J

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mSleepTime:J

    .line 30
    iput-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mWakeTime:J

    .line 33
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mSleepTime:J

    .line 34
    iput-wide p3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mWakeTime:J

    .line 35
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSleepTime()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mSleepTime:J

    return-wide v0
.end method

.method public whitelist getWakeTime()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mWakeTime:J

    return-wide v0
.end method

.method public whitelist setSleepTime(J)V
    .locals 0
    .param p1, "sleepTime"    # J

    .line 46
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mSleepTime:J

    .line 47
    return-void
.end method

.method public whitelist setWakeTime(J)V
    .locals 0
    .param p1, "wakeTime"    # J

    .line 50
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mWakeTime:J

    .line 51
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 61
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mSleepTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->mWakeTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 63
    return-void
.end method
