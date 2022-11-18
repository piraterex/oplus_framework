.class Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;Z)Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$fromWNaf:Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

.field final synthetic blacklist val$includeNegated:Z

.field final synthetic blacklist val$pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;ZLcom/android/internal/org/bouncycastle/math/ec/ECPointMap;)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .locals 1
    .param p1, "existingWNaf"    # Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "width"    # I
    .param p3, "reqPreCompLen"    # I
    .param p4, "includeNegated"    # Z

    .line 652
    if-eqz p1, :cond_1

    .line 653
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 654
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 655
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 652
    :goto_0
    return v0
.end method

.method private blacklist checkTable([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;I)Z
    .locals 1
    .param p1, "table"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .param p2, "reqLen"    # I

    .line 660
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .locals 10
    .param p1, "existing"    # Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 602
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 604
    .local v0, "existingWNaf":Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v1

    .line 605
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    array-length v2, v2

    .line 607
    .local v2, "reqPreCompLen":I
    iget-boolean v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->checkExisting(Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 609
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    .line 610
    return-object v0

    .line 617
    :cond_1
    new-instance v3, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v3}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 619
    .local v3, "result":Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPromotionCountdown()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 621
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 622
    .local v4, "twiceFrom":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    if-eqz v4, :cond_2

    .line 624
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    invoke-interface {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 625
    .local v5, "twice":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3, v5}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 628
    .end local v5    # "twice":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 629
    .local v5, "preCompFrom":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    array-length v6, v5

    new-array v6, v6, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 630
    .local v6, "preComp":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 632
    iget-object v8, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;

    aget-object v9, v5, v7

    invoke-interface {v8, v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, v6, v7

    .line 630
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 634
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 635
    invoke-virtual {v3, v1}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    .line 637
    iget-boolean v7, p0, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    if-eqz v7, :cond_5

    .line 639
    array-length v7, v6

    new-array v7, v7, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 640
    .local v7, "preCompNeg":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_4

    .line 642
    aget-object v9, v6, v8

    invoke-virtual {v9}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v7, v8

    .line 640
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 644
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 647
    .end local v7    # "preCompNeg":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_5
    return-object v3
.end method
