.class public Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;
.super Ljava/lang/Object;
.source "PredictResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_TIME:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "PredictResult"


# instance fields
.field private blacklist mPredictResultMap:Ljava/util/Map;

.field private blacklist mPredictTime:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPredictResultMap(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictResultMap:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPredictTime(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictTime:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor whitelist <init>(ILjava/util/Map;)V
    .locals 0
    .param p1, "predictTime"    # I
    .param p2, "predictResultMap"    # Ljava/util/Map;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictTime:I

    .line 39
    iput-object p2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictResultMap:Ljava/util/Map;

    .line 40
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCountdownTimeByPackage(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictResultMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "countdownTime":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 66
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 68
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictResultMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPredictTime()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictTime:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 44
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictResult;->mPredictResultMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 46
    return-void
.end method
