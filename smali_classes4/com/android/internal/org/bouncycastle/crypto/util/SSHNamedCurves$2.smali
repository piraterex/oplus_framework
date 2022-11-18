.class Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$2;
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
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 7

    .line 46
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    const-string/jumbo v1, "secp256r1"

    const-string/jumbo v2, "nistp256"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "secp384r1"

    const-string/jumbo v3, "nistp384"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string/jumbo v1, "secp521r1"

    const-string/jumbo v4, "nistp521"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string/jumbo v1, "sect163k1"

    const-string/jumbo v4, "nistk163"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v0, v4

    const-string/jumbo v1, "secp192r1"

    const-string/jumbo v4, "nistp192"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    aput-object v1, v0, v4

    const-string/jumbo v1, "secp224r1"

    const-string/jumbo v4, "nistp224"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x5

    aput-object v1, v0, v4

    const-string/jumbo v1, "sect233k1"

    const-string/jumbo v4, "nistk233"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    aput-object v1, v0, v4

    const-string/jumbo v1, "sect233r1"

    const-string/jumbo v4, "nistb233"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    const-string/jumbo v1, "sect283k1"

    const-string/jumbo v4, "nistk283"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x8

    aput-object v1, v0, v4

    const-string/jumbo v1, "sect409k1"

    const-string/jumbo v4, "nistk409"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    const-string/jumbo v1, "sect409r1"

    const-string/jumbo v4, "nistb409"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xa

    aput-object v1, v0, v4

    const-string/jumbo v1, "sect571k1"

    const-string/jumbo v4, "nistt571"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0xb

    aput-object v1, v0, v4

    .line 62
    .local v0, "curves":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-eq v1, v4, :cond_0

    .line 64
    aget-object v4, v0, v1

    .line 65
    .local v4, "item":[Ljava/lang/String;
    aget-object v5, v4, v2

    aget-object v6, v4, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/util/SSHNamedCurves$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .end local v4    # "item":[Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v0    # "curves":[[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
