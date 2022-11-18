.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;
.source "BasicGCMExponentiator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private blacklist x:[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist exponentiateX(J[B)V
    .locals 6
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    .line 22
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsLongs()[J

    move-result-object v0

    .line 24
    .local v0, "y":[J
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_2

    .line 26
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v3

    .line 29
    .local v3, "powX":[J
    :cond_0
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v4, v4, v1

    if-eqz v4, :cond_1

    .line 31
    invoke-static {v0, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 33
    :cond_1
    invoke-static {v3, v3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->square([J[J)V

    .line 34
    const/4 v4, 0x1

    ushr-long/2addr p1, v4

    .line 36
    cmp-long v4, p1, v1

    if-gtz v4, :cond_0

    .line 39
    .end local v3    # "powX":[J
    :cond_2
    invoke-static {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 40
    return-void
.end method

.method public blacklist init([B)V
    .locals 1
    .param p1, "x"    # [B

    .line 16
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    .line 17
    return-void
.end method
