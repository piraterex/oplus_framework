.class public Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;
.super Ljava/lang/Object;
.source "TrainConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CONFIG_DATA_LENGTH:I = 0x4

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MULTIPLE:I = 0x3e8

.field private static final blacklist PRIME_NUM:I = 0x1f

.field private static final blacklist SIGMA:D = 1.0E-4

.field private static final blacklist SPLIT:Ljava/lang/String; = ","


# instance fields
.field private blacklist mClusterEps:D

.field private blacklist mClusterMinPoints:I

.field private blacklist mDayForPredict:I

.field private blacklist mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmClusterEps(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;D)V
    .locals 0

    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClusterMinPoints(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDayForPredict(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;I)V
    .locals 0

    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 138
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IDI)V
    .locals 1
    .param p1, "clusterMinPoints"    # I
    .param p2, "clusterEps"    # D
    .param p4, "dayForPredict"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    .line 37
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    .line 38
    iput-wide p2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    .line 39
    iput p4, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    .line 43
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "configDatas":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 45
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    .line 46
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    .line 47
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    .line 48
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 107
    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 110
    return v2

    .line 112
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 113
    .local v1, "config":Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;
    iget v3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    invoke-virtual {v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->getClusterMinPoints()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 114
    return v2

    .line 116
    :cond_2
    iget-wide v3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    invoke-virtual {v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->getClusterEps()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 117
    return v2

    .line 119
    :cond_3
    iget v3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    invoke-virtual {v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->getdayForPredict()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 120
    return v2

    .line 122
    :cond_4
    iget v3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    invoke-virtual {v1}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->getType()I

    move-result v4

    if-ne v3, v4, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getClusterEps()D
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    return-wide v0
.end method

.method public whitelist getClusterMinPoints()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    return v0
.end method

.method public whitelist getType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    return v0
.end method

.method public whitelist getdayForPredict()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    .line 97
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    .line 98
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    .line 99
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    add-int/2addr v0, v2

    .line 100
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    add-int/2addr v1, v2

    .line 101
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public whitelist setClusterEps(D)V
    .locals 0
    .param p1, "clusterEps"    # D

    .line 65
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    .line 66
    return-void
.end method

.method public whitelist setClusterMinPoints(I)V
    .locals 0
    .param p1, "clusterMinPoints"    # I

    .line 57
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    .line 58
    return-void
.end method

.method public whitelist setType(I)V
    .locals 0
    .param p1, "type"    # I

    .line 81
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    .line 82
    return-void
.end method

.method public whitelist setdayForPredict(I)V
    .locals 0
    .param p1, "dayForPredict"    # I

    .line 73
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    .line 74
    return-void
.end method

.method public whitelist spliceParameter()Ljava/lang/String;
    .locals 4

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrainConfig{mClusterMinPoints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClusterEps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayForPredict="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterMinPoints:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mClusterEps:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 134
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mDayForPredict:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
