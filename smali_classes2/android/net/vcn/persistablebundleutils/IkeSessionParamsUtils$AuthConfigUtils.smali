.class final Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;
.super Ljava/lang/Object;
.source "IkeSessionParamsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AuthConfigUtils"
.end annotation


# static fields
.field private static final blacklist AUTH_METHOD_KEY:Ljava/lang/String; = "AUTH_METHOD_KEY"

.field private static final blacklist IKE_AUTH_METHOD_EAP:I = 0x3

.field private static final blacklist IKE_AUTH_METHOD_PSK:I = 0x1

.field private static final blacklist IKE_AUTH_METHOD_PUB_KEY_SIGNATURE:I = 0x2


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist createPersistableBundle(I)Landroid/os/PersistableBundle;
    .locals 2
    .param p0, "type"    # I

    .line 250
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 251
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "AUTH_METHOD_KEY"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 252
    return-object v0
.end method

.method public static blacklist setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V
    .locals 5
    .param p0, "localAuthBundle"    # Landroid/os/PersistableBundle;
    .param p1, "remoteAuthBundle"    # Landroid/os/PersistableBundle;
    .param p2, "builder"    # Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 259
    const-string v0, "localAuthBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    const-string v0, "remoteAuthBundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 262
    const-string v0, "AUTH_METHOD_KEY"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, "localMethodType":I
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "remoteMethodType":I
    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    .line 294
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid EAP method type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 284
    :pswitch_0
    if-ne v0, v2, :cond_0

    .line 290
    invoke-static {p0, p1, p2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthEapConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 292
    return-void

    .line 285
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "When using EAP for local authentication, expect remote auth method to be digital signature based, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :pswitch_1
    if-ne v0, v2, :cond_1

    .line 280
    invoke-static {p0, p1, p2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 282
    return-void

    .line 276
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect remote auth method to be digital signature based, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :pswitch_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 271
    invoke-static {p0, p1, p2}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthPskConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/net/ipsec/ike/IkeSessionParams$Builder;)V

    .line 273
    return-void

    .line 267
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expect remote auth method to be PSK based, but was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/os/PersistableBundle;
    .locals 2
    .param p0, "authConfig"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 228
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    if-eqz v0, :cond_0

    .line 229
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;

    .line 230
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
    const/4 v1, 0x1

    .line 231
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 230
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthPskConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 232
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;
    :cond_0
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 233
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;

    .line 234
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    nop

    .line 235
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 234
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 236
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;
    :cond_1
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    if-eqz v0, :cond_2

    .line 237
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;

    .line 238
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    nop

    .line 239
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 238
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthDigitalSignConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 240
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;
    :cond_2
    instance-of v0, p0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    if-eqz v0, :cond_3

    .line 241
    move-object v0, p0

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;

    .line 242
    .local v0, "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    const/4 v1, 0x3

    .line 243
    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$AuthConfigUtils;->createPersistableBundle(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 242
    invoke-static {v0, v1}, Landroid/net/vcn/persistablebundleutils/IkeSessionParamsUtils$IkeAuthEapConfigUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v1

    return-object v1

    .line 245
    .end local v0    # "config":Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid IkeAuthConfig subclass"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
