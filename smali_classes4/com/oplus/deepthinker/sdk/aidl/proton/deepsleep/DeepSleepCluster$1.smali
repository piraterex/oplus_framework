.class Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster$1;
.super Ljava/lang/Object;
.source "DeepSleepCluster.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 169
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;-><init>(DD)V

    .line 170
    .local v0, "cluster":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmSleepTimePeriod(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmWakeTimePeriod(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmMaxDistance(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmClusterId(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;I)V

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmClusterNum(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;I)V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmSleepMinValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmSleepMaxValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmWakeMinValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->-$$Nest$fputmWakeMaxValue(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;D)V

    .line 179
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .locals 1
    .param p1, "size"    # I

    .line 184
    new-array v0, p1, [Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster$1;->newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    move-result-object p1

    return-object p1
.end method
