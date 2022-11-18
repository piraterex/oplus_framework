.class Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult$1;
.super Ljava/lang/Object;
.source "PredictResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;-><init>(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult-IA;)V

    .line 79
    .local v0, "predictResult":Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->-$$Nest$fputmPredictTime(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;I)V

    .line 80
    const-class v1, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->-$$Nest$fputmPredictResultMap(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;Ljava/util/Map;)V

    .line 81
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
    .locals 1
    .param p1, "size"    # I

    .line 86
    new-array v0, p1, [Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0, p1}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult$1;->newArray(I)[Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;

    move-result-object p1

    return-object p1
.end method
