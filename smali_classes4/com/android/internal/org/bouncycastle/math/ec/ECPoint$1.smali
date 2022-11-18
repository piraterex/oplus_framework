.class Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;
.super Ljava/lang/Object;
.source "ECPoint.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

.field final synthetic blacklist val$checkOrder:Z

.field final synthetic blacklist val$decompressed:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 310
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    iput-boolean p2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    iput-boolean p3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;
    .locals 2
    .param p1, "existing"    # Lcom/android/internal/org/bouncycastle/math/ec/PreCompInfo;

    .line 313
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 314
    .local v0, "info":Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 316
    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;

    invoke-direct {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;-><init>()V

    move-object v0, v1

    .line 319
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    return-object v0

    .line 323
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasCurveEquationPassed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 325
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v1

    if-nez v1, :cond_3

    .line 327
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    .line 328
    return-object v0

    .line 330
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportCurveEquationPassed()V

    .line 332
    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasOrderPassed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 334
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$1;->this$0:Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    if-nez v1, :cond_5

    .line 336
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    .line 337
    return-object v0

    .line 339
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ValidityPrecompInfo;->reportOrderPassed()V

    .line 341
    :cond_6
    return-object v0
.end method
