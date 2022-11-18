.class public final Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;
.super Ljava/lang/Object;
.source "CryptoServicesRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    }
.end annotation


# static fields
.field private static final blacklist CanSetDefaultProperty:Ljava/security/Permission;

.field private static final blacklist CanSetDefaultRandom:Ljava/security/Permission;

.field private static final blacklist CanSetThreadProperty:Ljava/security/Permission;

.field private static final blacklist cacheLock:Ljava/lang/Object;

.field private static blacklist defaultSecureRandom:Ljava/security/SecureRandom;

.field private static final blacklist globalProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist threadProperties:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 26
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "globalConfig"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string/jumbo v1, "threadLocalConfig"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    .line 28
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;

    const-string v1, "defaultRandomConfig"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesPermission;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->cacheLock:Ljava/lang/Object;

    .line 40
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "fca682ce8e12caba26efccf7110e526db078b05edecbcd1eb4a208f3ae1617ae01f35b91a47e6df63413c5e12ed0899bcd132acd50d99151bdc43ee737592e17"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "962eddcc369cba8ebb260ee6b6a126d9346e38c5"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "678471b27a9cf44ee91a49c5147db1a9aaf244f05a434d6486931d2d14271b9e35030b71fd73da179069b32e2935630e1c2062354d0da20a6c416e50be794ca4"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 44
    const-string v6, "b869c82b35d70e1b1ff91b28e37a62ecdc34409b"

    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v6

    const/16 v7, 0x7b

    invoke-direct {v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 46
    .local v0, "def512Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "e9e642599d355f37c97ffd3567120b8e25c9cd43e927b3a9670fbec5d890141922d2c3b3ad2480093799869d1e846aab49fab0ad26d2ce6a22219d470bce7d777d4a21fbe9c270b57f607002f3cef8393694cf45ee3688c11a8c56ab127a3daf"

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "9cdbd84c9f1ac2f38d0f80f42ab952e7338bf511"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "30470ad5a005fb14ce2d9dcd87e38bc7d1b1c5facbaecbe95f190aa7a31d23c4dbbcbe06174544401a5b2c020965d8c2bd2171d3668445771f74ba084d2029d83c1c158547f3a9f1a2715be23d51ae4d3e5a1f6a7064f316933a346d3f529252"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 56
    const-string v7, "77d0f8c4dad15eb8c4f2f8d6726cefd96d5bb399"

    invoke-static {v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v7

    const/16 v8, 0x107

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v1, v2, v4, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 58
    .local v1, "def768Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    new-instance v2, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "fd7f53811d75122952df4a9c2eece4e7f611b7523cef4400c31e3f80b6512669455d402251fb593d8d58fabfc5f5ba30f6cb9b556cd7813b801d346ff26660b76b9950a5a49f9fe8047b1022c24fbba9d7feb7c61bf83b57e7c6a8a6150f04fb83f6d3c51ec3023554135a169132f675f3ae2b61d72aeff22203199dd14801c7"

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "9760508f15230bccb292b982a2eb840bf0581cf5"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "f7e1a085d69b3ddecbbcab5c36b857b97994afbbfa3aea82f9574c0b3d0782675159578ebad4594fe67107108180b449167123e84c281613b7cf09328cc8a6e13c167a8b547c8d28e0a3ae1e2bb3a675916ea37f0bfa213562f1fb627a01243bcca4f1bea8519089a883dfe15ae59f06928b665e807b552564014c3bfecf492a"

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 70
    const-string v8, "8d5155894229d5e689ee01e6018a237e2cae64cd"

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x5c

    invoke-direct {v7, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    .line 72
    .local v2, "def1024Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    new-instance v4, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "95475cf5d93e596c3fcd1d902add02f427f5f3c7210313bb45fb4d5bb2e5fe1cbd678cd4bbdd84c9836be1f31c0777725aeb6c2fc38b85f48076fa76bcd8146cc89a6fb2f706dd719898c2083dc8d896f84062e2c9c94d137b054a8d8096adb8d51952398eeca852a0af12df83e475aa65d4ec0c38a9560d5661186ff98b9fc9eb60eee8b030376b236bc73be3acdbd74fd61c1d2475fa3077b8f080467881ff7e1ca56fee066d79506ade51edbb5443a563927dbc4ba520086746175c8885925ebc64c6147906773496990cb714ec667304e261faee33b3cbdf008e0c3fa90650d97d3909c9275bf4ac86ffcb3d03e6dfc8ada5934242dd6d3bcca2a406cb0b"

    invoke-direct {v5, v6, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v6, Ljava/math/BigInteger;

    const-string v7, "f8183668ba5fc5bb06b5981e6d8b795d30b8978d43ca0ec572e37e09939a9773"

    invoke-direct {v6, v7, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v7, Ljava/math/BigInteger;

    const-string v8, "42debb9da5b3d88cc956e08787ec3f3a09bba5f48b889a74aaf53174aa0fbe7e3c5b8fcd7a53bef563b0e98560328960a9517f4014d3325fc7962bf1e049370d76d1314a76137e792f3f0db859d095e4a5b932024f079ecf2ef09c797452b0770e1350782ed57ddf794979dcef23cb96f183061965c4ebc93c9c71c56b925955a75f94cccf1449ac43d586d0beee43251b0b2287349d68de0d144403f13e802f4146d882e057af19b6f6275c6676c8fa0e3ca2713a3257fd1b27d0639f695e347d8d1cf9ac819a26ca9b04cb0eb9b7b035988d15bbac65212a55239cfc7e58fae38d7250ab9991ffbc97134025fe8ce04c4399ad96569be91a546f4978693c7a"

    invoke-direct {v7, v8, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 94
    const-string v8, "b0b4417601b59cbc9d8ac8f935cadaec4f5fbb2f23785609ae466748d9b5a536"

    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v8

    const/16 v9, 0x1f1

    invoke-direct {v3, v8, v9}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BI)V

    invoke-direct {v4, v5, v6, v7, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;)V

    move-object v3, v4

    .line 96
    .local v3, "def2048Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DSA_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    const/4 v5, 0x4

    new-array v6, v5, [Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v8, 0x1

    aput-object v1, v6, v8

    const/4 v9, 0x2

    aput-object v2, v6, v9

    const/4 v10, 0x3

    aput-object v3, v6, v10

    invoke-static {v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 97
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->DH_DEFAULT_PARAMS:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    new-array v5, v5, [Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 98
    .end local v0    # "def512Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .end local v1    # "def768Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .end local v2    # "def1024Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    .end local v3    # "def2048Params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private static blacklist checkPermission(Ljava/security/Permission;)V
    .locals 2
    .param p0, "permission"    # Ljava/security/Permission;

    .line 370
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 372
    .local v0, "securityManager":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    .line 374
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$1;

    invoke-direct {v1, v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$1;-><init>(Ljava/lang/SecurityManager;Ljava/security/Permission;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 384
    :cond_0
    return-void
.end method

.method private static blacklist chooseLowerBound(I)I
    .locals 2
    .param p0, "pSize"    # I

    .line 397
    const/16 v0, 0xa0

    .line 398
    .local v0, "m":I
    const/16 v1, 0x400

    if-le p0, v1, :cond_3

    .line 400
    const/16 v1, 0x800

    if-gt p0, v1, :cond_0

    .line 402
    const/16 v0, 0xe0

    goto :goto_0

    .line 404
    :cond_0
    const/16 v1, 0xc00

    if-gt p0, v1, :cond_1

    .line 406
    const/16 v0, 0x100

    goto :goto_0

    .line 408
    :cond_1
    const/16 v1, 0x1e00

    if-gt p0, v1, :cond_2

    .line 410
    const/16 v0, 0x180

    goto :goto_0

    .line 414
    :cond_2
    const/16 v0, 0x200

    .line 417
    :cond_3
    :goto_0
    return v0
.end method

.method public static blacklist clearGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 2
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 336
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localClearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method public static blacklist clearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 1
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 352
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localClearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Object;
    .locals 2
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")TT;"
        }
    .end annotation

    .line 169
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "values":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 173
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    .line 176
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getSecureRandom()Ljava/security/SecureRandom;
    .locals 3

    .line 112
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandom:Ljava/security/SecureRandom;

    if-eqz v1, :cond_0

    .line 116
    monitor-exit v0

    return-object v1

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 120
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 122
    .local v1, "tmp":Ljava/security/SecureRandom;
    monitor-enter v0

    .line 124
    :try_start_1
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandom:Ljava/security/SecureRandom;

    if-nez v2, :cond_1

    .line 126
    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 129
    :cond_1
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandom:Ljava/security/SecureRandom;

    monitor-exit v0

    return-object v2

    .line 130
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 118
    .end local v1    # "tmp":Ljava/security/SecureRandom;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public static blacklist getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1
    .param p0, "secureRandom"    # Ljava/security/SecureRandom;

    .line 141
    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static blacklist getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;I)Ljava/lang/Object;
    .locals 5
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "I)TT;"
        }
    .end annotation

    .line 226
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "values":[Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 230
    return-object v1

    .line 233
    :cond_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-eq v2, v3, :cond_2

    .line 237
    aget-object v3, v0, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 239
    .local v3, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 241
    return-object v3

    .line 235
    .end local v3    # "params":Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2    # "i":I
    :cond_2
    goto :goto_2

    .line 245
    :cond_3
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, v0

    if-eq v2, v3, :cond_5

    .line 249
    aget-object v3, v0, v2

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 251
    .local v3, "params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-ne v4, p1, :cond_4

    .line 253
    return-object v3

    .line 247
    .end local v3    # "params":Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v2    # "i":I
    :cond_5
    :goto_2
    return-object v1
.end method

.method public static blacklist getSizedProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 2
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            ")[TT;"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;

    move-result-object v0

    .line 207
    .local v0, "values":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    return-object v1

    .line 212
    :cond_0
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private static blacklist localClearThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 357
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 359
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 361
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 365
    :cond_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static varargs blacklist localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 313
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetThread(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 321
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    return-void

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad property value passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist localSetThread(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 300
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 302
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 304
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v1, v2

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 308
    :cond_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method private static blacklist lookupProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)[Ljava/lang/Object;
    .locals 3
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;

    .line 181
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->threadProperties:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 184
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .local v1, "values":[Ljava/lang/Object;
    goto :goto_1

    .line 186
    .end local v1    # "values":[Ljava/lang/Object;
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->globalProperties:Ljava/util/Map;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgetname(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 192
    .restart local v1    # "values":[Ljava/lang/Object;
    :goto_1
    return-object v1
.end method

.method public static varargs blacklist setGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 293
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 295
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetGlobalProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public static blacklist setSecureRandom(Ljava/security/SecureRandom;)V
    .locals 2
    .param p0, "secureRandom"    # Ljava/security/SecureRandom;

    .line 151
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetDefaultRandom:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 153
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    sput-object p0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->defaultSecureRandom:Ljava/security/SecureRandom;

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static varargs blacklist setThreadProperty(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "property"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;",
            "[TT;)V"
        }
    .end annotation

    .line 272
    .local p1, "propertyValue":[Ljava/lang/Object;, "[TT;"
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->CanSetThreadProperty:Ljava/security/Permission;

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkPermission(Ljava/security/Permission;)V

    .line 274
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;->-$$Nest$fgettype(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {p1}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->localSetThread(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar$Property;[Ljava/lang/Object;)V

    .line 280
    return-void

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad property value passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist toDH(Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;)Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .locals 11
    .param p0, "dsaParams"    # Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;

    .line 388
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 389
    .local v0, "pSize":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->chooseLowerBound(I)I

    move-result v9

    .line 390
    .local v9, "m":I
    new-instance v10, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    new-instance v8, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 391
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->getSeed()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAParameters;->getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->getCounter()I

    move-result v5

    invoke-direct {v8, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;-><init>([BI)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move v5, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    .line 390
    return-object v10
.end method
