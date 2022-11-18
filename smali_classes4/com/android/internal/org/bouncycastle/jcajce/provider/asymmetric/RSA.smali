.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/RSA;
.super Ljava/lang/Object;
.source "RSA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/RSA$Mappings;
    }
.end annotation


# static fields
.field private static final blacklist PREFIX:Ljava/lang/String; = "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.rsa."

.field private static final blacklist generalRsaAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetgeneralRsaAttributes()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/RSA;->generalRsaAttributes:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/RSA;->generalRsaAttributes:Ljava/util/Map;

    .line 30
    const-string v1, "SupportedKeyClasses"

    const-string/jumbo v2, "javax.crypto.interfaces.RSAPublicKey|javax.crypto.interfaces.RSAPrivateKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "SupportedKeyFormats"

    const-string v2, "PKCS#8|X.509"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
