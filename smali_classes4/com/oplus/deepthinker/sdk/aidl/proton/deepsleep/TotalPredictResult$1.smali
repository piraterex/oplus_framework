.class Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult$1;
.super Ljava/lang/Object;
.source "TotalPredictResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 96
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;-><init>(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;)V

    .line 97
    .local v0, "result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    sget-object v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    invoke-virtual {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->setSleepCluster(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;)V

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 101
    sget-object v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    invoke-virtual {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->setWakeCluster(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;)V

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 104
    sget-object v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    invoke-virtual {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->setOptimalSleepConfig(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;)V

    .line 106
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    sget-object v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    invoke-virtual {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->setOptimalWakeConfig(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;)V

    .line 109
    :cond_3
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
    .locals 1
    .param p1, "size"    # I

    .line 114
    new-array v0, p1, [Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult$1;->newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;

    move-result-object p1

    return-object p1
.end method
