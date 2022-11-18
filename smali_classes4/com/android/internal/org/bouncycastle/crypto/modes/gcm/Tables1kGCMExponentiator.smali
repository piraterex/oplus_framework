.class public Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;
.super Ljava/lang/Object;
.source "Tables1kGCMExponentiator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private blacklist lookupPowX2:Ljava/util/Vector;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist ensureAvailable(I)V
    .locals 3
    .param p1, "bit"    # I

    .line 50
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 51
    .local v0, "count":I
    if-gt v0, p1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 56
    .local v1, "tmp":[J
    :cond_0
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([J)[J

    move-result-object v1

    .line 57
    invoke-static {v1, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->square([J[J)V

    .line 58
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    .line 62
    .end local v1    # "tmp":[J
    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist exponentiateX(J[B)V
    .locals 6
    .param p1, "pow"    # J
    .param p3, "output"    # [B

    .line 32
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsLongs()[J

    move-result-object v0

    .line 33
    .local v0, "y":[J
    const/4 v1, 0x0

    .line 34
    .local v1, "bit":I
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-lez v4, :cond_1

    .line 36
    const-wide/16 v4, 0x1

    and-long/2addr v4, p1

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    .line 38
    invoke-direct {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->ensureAvailable(I)V

    .line 39
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    invoke-static {v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 42
    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {v0, p3}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 46
    return-void
.end method

.method public blacklist init([B)V
    .locals 3
    .param p1, "x"    # [B

    .line 20
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    .line 21
    .local v0, "y":[J
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([J[J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    return-void

    .line 26
    :cond_0
    new-instance v1, Ljava/util/Vector;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/modes/gcm/Tables1kGCMExponentiator;->lookupPowX2:Ljava/util/Vector;

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 28
    return-void
.end method
