.class public Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;
.super Ljava/lang/Object;
.source "TotalPredictResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist NULL:Ljava/lang/String; = "null"

.field private static final blacklist TAG:Ljava/lang/String; = "TotalPredictResult"


# instance fields
.field private blacklist mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

.field private blacklist mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

.field private blacklist mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

.field private blacklist mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult$1;

    invoke-direct {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult$1;-><init>()V

    sput-object v0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;)V
    .locals 1
    .param p1, "sleepCluster"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .param p2, "wakeCluster"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 31
    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 33
    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 35
    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 38
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 39
    iput-object p2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 40
    return-void
.end method

.method public constructor whitelist <init>(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;)V
    .locals 1
    .param p1, "sleepCluster"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .param p2, "wakeCluster"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .param p3, "sleepConfig"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;
    .param p4, "wakeConfig"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 31
    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 33
    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 35
    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 44
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 45
    iput-object p2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 46
    iput-object p3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 47
    iput-object p4, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getOptimalSleepConfig()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    return-object v0
.end method

.method public whitelist getOptimalWakeConfig()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    return-object v0
.end method

.method public whitelist getSleepCluster()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    return-object v0
.end method

.method public whitelist getWakeCluster()Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    return-object v0
.end method

.method public whitelist setOptimalSleepConfig(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;)V
    .locals 0
    .param p1, "trainConfig"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 67
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 68
    return-void
.end method

.method public whitelist setOptimalWakeConfig(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;)V
    .locals 0
    .param p1, "trainConfig"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 71
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    .line 72
    return-void
.end method

.method public whitelist setSleepCluster(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;)V
    .locals 0
    .param p1, "sleepCluster"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 55
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 56
    return-void
.end method

.method public whitelist setWakeCluster(Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;)V
    .locals 0
    .param p1, "wakeCluster"    # Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 63
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    .line 64
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    const-string/jumbo v1, "null"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 85
    .local v0, "sleepString":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 86
    .local v2, "wakeString":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    .line 87
    .local v3, "sleepConfig":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "wakeConfig":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v5, 0x3

    aput-object v1, v4, v5

    const-string/jumbo v5, "mSleepCluster=%s,mSleepConfig=%s,mWakeCluster=%s,mWakeConfig=%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .line 125
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    const-string v1, "com.oplus.deepthinker.sdk.app.aidl.proton.deepsleep.DeepSleepCluster"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mSleepCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    :goto_0
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    if-nez v0, :cond_1

    .line 133
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 135
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mWakeCluster:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/DeepSleepCluster;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_1
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    const-string v1, "com.oplus.deepthinker.sdk.app.aidl.proton.deepsleep.TrainConfig"

    if-nez v0, :cond_2

    .line 140
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalSleepConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 146
    :goto_2
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    if-nez v0, :cond_3

    .line 147
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_3

    .line 149
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TotalPredictResult;->mOptimalWakeConfig:Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/deepthinker/sdk/aidl/proton/deepsleep/TrainConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    :goto_3
    return-void
.end method
