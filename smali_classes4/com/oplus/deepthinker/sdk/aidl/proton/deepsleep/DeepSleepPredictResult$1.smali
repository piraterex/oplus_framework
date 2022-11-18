.class Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult$1;
.super Ljava/lang/Object;
.source "DeepSleepPredictResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 84
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;-><init>(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;Ljava/util/List;)V

    .line 85
    .local v0, "result":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "mResultTypeString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 87
    invoke-static {v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->valueOf(Ljava/lang/String;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->-$$Nest$fputmResultType(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;)V

    .line 89
    :cond_0
    invoke-static {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->-$$Nest$fgetmDeepSleepClusterList(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->-$$Nest$fputmDeepSleepClusterList(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;Ljava/util/List;)V

    .line 92
    :cond_1
    invoke-static {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->-$$Nest$fgetmDeepSleepClusterList(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 93
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
    .locals 1
    .param p1, "size"    # I

    .line 98
    new-array v0, p1, [Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult$1;->newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;

    move-result-object p1

    return-object p1
.end method
