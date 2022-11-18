.class final Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthPskConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IkeAuthPskConfigUtils"
.end annotation


# static fields
.field private static final blacklist PSK_KEY:Ljava/lang/String; = "PSK_KEY"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .locals 6
    .param p0, "localAuthBundle"    # Landroid/os/PersistableBundle;
    .param p1, "remoteAuthBundle"    # Landroid/os/PersistableBundle;
    .param p2, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 315
    const-string v0, "localAuthBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    const-string v0, "remoteAuthBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 318
    const-string v0, "PSK_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 319
    .local v1, "localPskBundle":Landroid/os/PersistableBundle;
    nop

    .line 320
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 321
    .local v0, "remotePskBundle":Landroid/os/PersistableBundle;
    const-string v2, "Local PSK was null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 322
    const-string v2, "Remote PSK was null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 324
    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    .line 325
    .local v2, "localPsk":[B
    invoke-static {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v3

    .line 326
    .local v3, "remotePsk":[B
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    invoke-virtual {p2, v2}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setAuthPsk([B)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 330
    return-void

    .line 327
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Local PSK and remote PSK are different"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .locals 2
    .param p0, "config"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
    .param p1, "result"    # Landroid/os/PersistableBundle;

    .line 306
    nop

    .line 307
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;->getPsk()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 306
    const-string v1, "PSK_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 308
    return-object p1
.end method
