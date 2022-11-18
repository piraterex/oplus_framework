.class Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$3;
.super Ljava/util/HashMap;
.source "SSHNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 73
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/ec/CustomNamedCurves;->getByName(Ljava/lang/String;)Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;

    move-result-object v2

    .line 77
    .local v2, "parameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "parameters":Lcom/android/internal/org/bouncycastle/asn1/x9/X9ECParameters;
    goto :goto_0

    .line 80
    .end local v0    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
