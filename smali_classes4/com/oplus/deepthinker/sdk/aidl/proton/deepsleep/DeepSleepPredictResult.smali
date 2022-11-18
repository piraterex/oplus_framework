.class public Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;
.super Ljava/lang/Object;
.source "DeepSleepPredictResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "DeepSleepPredictResult"


# instance fields
.field private blacklist mDeepSleepClusterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeepSleepClusterList(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeepSleepClusterList(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResultType(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;Ljava/util/List;)V
    .locals 1
    .param p1, "type"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;",
            ">;)V"
        }
    .end annotation

    .line 37
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->PREDICT_RESULT_TYPE_UNKNOWN:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 39
    iput-object p2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    .line 40
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDeepSleepClusterList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getResultType()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    return-object v0
.end method

.method public whitelist setClusterList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "clusterList":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;>;"
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    .line 56
    return-void
.end method

.method public whitelist setResultType(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;)V
    .locals 0
    .param p1, "type"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 51
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    .line 52
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeepSleepPredictResult:resultType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 62
    .local v2, "cluster":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    invoke-virtual {v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .end local v2    # "cluster":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 76
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mResultType:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/PredictResultType;->name()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepPredictResult;->mDeepSleepClusterList:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 79
    return-void
.end method
