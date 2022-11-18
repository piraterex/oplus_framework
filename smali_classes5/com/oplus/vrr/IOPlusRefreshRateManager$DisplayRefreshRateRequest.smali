.class public final Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;
.super Ljava/lang/Object;
.source "IOPlusRefreshRateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vrr/IOPlusRefreshRateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayRefreshRateRequest"
.end annotation


# instance fields
.field public whitelist displayId:I

.field public whitelist policy:I

.field public whitelist requestRefreshRate:F

.field public whitelist statusOn:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->statusOn:Z

    .line 76
    iput v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->displayId:I

    .line 77
    iput v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->policy:I

    .line 78
    return-void
.end method

.method private blacklist floatEquals(FF)Z
    .locals 1
    .param p1, "f1"    # F
    .param p2, "f2"    # F

    .line 102
    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public whitelist copyFrom(Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;)V
    .locals 1
    .param p1, "other"    # Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;

    .line 81
    iget v0, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->displayId:I

    iput v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->displayId:I

    .line 82
    iget v0, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->policy:I

    iput v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->policy:I

    .line 83
    iget v0, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->requestRefreshRate:F

    iput v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->requestRefreshRate:F

    .line 84
    iget-boolean v0, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->statusOn:Z

    iput-boolean v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->statusOn:Z

    .line 85
    return-void
.end method

.method public whitelist equals(Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;)Z
    .locals 2
    .param p1, "other"    # Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;

    .line 94
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->displayId:I

    iget v1, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->displayId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->policy:I

    iget v1, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->policy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->requestRefreshRate:F

    iget v1, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->requestRefreshRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->statusOn:Z

    iget-boolean v1, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->statusOn:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 89
    instance-of v0, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;

    .line 90
    invoke-virtual {p0, v0}, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->equals(Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->policy:I

    invoke-static {v1}, Lcom/oplus/vrr/IOPlusRefreshRateManager$VRRPolicy;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requestRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->requestRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->statusOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
