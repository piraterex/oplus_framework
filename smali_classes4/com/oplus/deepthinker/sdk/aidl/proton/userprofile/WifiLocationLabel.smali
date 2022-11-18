.class public Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;
.super Ljava/lang/Object;
.source "WifiLocationLabel.java"


# instance fields
.field private blacklist mAccuracy:D

.field private blacklist mBssidSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mClusterPointsNum:I

.field private blacklist mConfigName:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private blacklist mRadius:I

.field private blacklist mSsidSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSurvivalTime:I


# direct methods
.method public constructor whitelist <init>(DDIIDLjava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .param p1, "mLongitude"    # D
    .param p3, "mLatitude"    # D
    .param p5, "mRadius"    # I
    .param p6, "mClusterPointsNum"    # I
    .param p7, "mAccuracy"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDIID",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    .local p9, "mBssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p10, "mSsidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p11, "mConfigName":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mBssidSet:Ljava/util/Set;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSsidSet:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mConfigName:Ljava/util/Set;

    .line 33
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mLongitude:D

    .line 34
    iput-wide p3, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mLatitude:D

    .line 35
    iput p5, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mRadius:I

    .line 36
    iput p6, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mClusterPointsNum:I

    .line 37
    iput-wide p7, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mAccuracy:D

    .line 38
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mBssidSet:Ljava/util/Set;

    invoke-interface {v0, p9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSsidSet:Ljava/util/Set;

    invoke-interface {v0, p10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mConfigName:Ljava/util/Set;

    invoke-interface {v0, p11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 41
    return-void
.end method


# virtual methods
.method public whitelist getAccuracy()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mAccuracy:D

    return-wide v0
.end method

.method public whitelist getBssidSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mBssidSet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getClusterPointsNum()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mClusterPointsNum:I

    return v0
.end method

.method public whitelist getConfigName()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mConfigName:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getLatitude()D
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mLatitude:D

    return-wide v0
.end method

.method public whitelist getLongitude()D
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mLongitude:D

    return-wide v0
.end method

.method public whitelist getRadius()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mRadius:I

    return v0
.end method

.method public whitelist getSsidSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSsidSet:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getSurvivalTime()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSurvivalTime:I

    return v0
.end method

.method public whitelist setAccuracy(D)V
    .locals 0
    .param p1, "accuracy"    # D

    .line 82
    iput-wide p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mAccuracy:D

    .line 83
    return-void
.end method

.method public whitelist setBssidSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "mBssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mBssidSet:Ljava/util/Set;

    .line 91
    return-void
.end method

.method public whitelist setClusterPointsNum(I)V
    .locals 0
    .param p1, "clusterPointsNum"    # I

    .line 74
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mClusterPointsNum:I

    .line 75
    return-void
.end method

.method public whitelist setConfigName(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 106
    .local p1, "mConfigName":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mConfigName:Ljava/util/Set;

    .line 107
    return-void
.end method

.method public whitelist setSsidSet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "mSsidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSsidSet:Ljava/util/Set;

    .line 99
    return-void
.end method

.method public whitelist setSurvivalTime(I)V
    .locals 0
    .param p1, "mSurvivalTime"    # I

    .line 114
    iput p1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSurvivalTime:I

    .line 115
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiLocationLabel{mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClusterPointsNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mClusterPointsNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mAccuracy:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSsidSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSsidSet:Ljava/util/Set;

    .line 51
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBssidSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mBssidSet:Ljava/util/Set;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mConfigName:Ljava/util/Set;

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSurvivalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/deepthinker/sdk/aidl/proton/userprofile/WifiLocationLabel;->mSurvivalTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    return-object v0
.end method
