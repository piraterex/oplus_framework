.class public Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;
.super Ljava/lang/Object;
.source "PredictAABResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INVALID_BUCKET:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "PredictAABResult"


# instance fields
.field private blacklist mPredictResultMap:Ljava/util/HashMap;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPredictResultMap(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->mPredictResultMap:Ljava/util/HashMap;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 76
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p1, "activeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "workingsetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "frequentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "rareList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->mPredictResultMap:Ljava/util/HashMap;

    .line 38
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->putArrayToMap(Ljava/util/ArrayList;I)V

    .line 39
    const/16 v0, 0x14

    invoke-direct {p0, p2, v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->putArrayToMap(Ljava/util/ArrayList;I)V

    .line 40
    const/16 v0, 0x1e

    invoke-direct {p0, p3, v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->putArrayToMap(Ljava/util/ArrayList;I)V

    .line 41
    const/16 v0, 0x28

    invoke-direct {p0, p4, v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->putArrayToMap(Ljava/util/ArrayList;I)V

    .line 42
    return-void
.end method

.method private blacklist putArrayToMap(Ljava/util/ArrayList;I)V
    .locals 4
    .param p2, "appStandbyBucket"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 91
    .local p1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->mPredictResultMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .end local v1    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
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

    .line 59
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->mPredictResultMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPredictAppStandbyBucket(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->mPredictResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    .local v0, "appStandbyBucket":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 71
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 73
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 50
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/appactionpredict/PredictAABResult;->mPredictResultMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 51
    return-void
.end method
