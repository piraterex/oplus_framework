.class Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord$1;
.super Ljava/lang/Object;
.source "SleepRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 69
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;-><init>(JJ)V

    .line 70
    .local v0, "record":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->-$$Nest$fputmSleepTime(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;J)V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;->-$$Nest$fputmWakeTime(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;J)V

    .line 72
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;
    .locals 1
    .param p1, "size"    # I

    .line 77
    new-array v0, p1, [Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord$1;->newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/SleepRecord;

    move-result-object p1

    return-object p1
.end method
