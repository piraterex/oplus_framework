.class public final Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils;
.super Ljava/lang/Object;
.source "EapSessionConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapUiccConfigUtils;,
        Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMethodConfigUtils;
    }
.end annotation


# static fields
.field private static final blacklist EAP_AKA_CONFIG_KEY:Ljava/lang/String; = "EAP_AKA_CONFIG_KEY"

.field private static final blacklist EAP_AKA_PRIME_CONFIG_KEY:Ljava/lang/String; = "EAP_AKA_PRIME_CONFIG_KEY"

.field private static final blacklist EAP_ID_KEY:Ljava/lang/String; = "EAP_ID_KEY"

.field private static final blacklist EAP_MSCHAP_V2_CONFIG_KEY:Ljava/lang/String; = "EAP_MSCHAP_V2_CONFIG_KEY"

.field private static final blacklist EAP_SIM_CONFIG_KEY:Ljava/lang/String; = "EAP_SIM_CONFIG_KEY"

.field private static final blacklist EAP_TTLS_CONFIG_KEY:Ljava/lang/String; = "EAP_TTLS_CONFIG_KEY"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig;
    .locals 8
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 98
    const-string v0, "PersistableBundle was null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    new-instance v0, Landroid/net/eap/EapSessionConfig$Builder;

    invoke-direct {v0}, Landroid/net/eap/EapSessionConfig$Builder;-><init>()V

    .line 102
    .local v0, "builder":Landroid/net/eap/EapSessionConfig$Builder;
    const-string v1, "EAP_ID_KEY"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 103
    .local v1, "eapIdBundle":Landroid/os/PersistableBundle;
    const-string v2, "EAP ID was null"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 104
    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->toByteArray(Landroid/os/PersistableBundle;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/eap/EapSessionConfig$Builder;->setEapIdentity([B)Landroid/net/eap/EapSessionConfig$Builder;

    .line 106
    const-string v2, "EAP_SIM_CONFIG_KEY"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 107
    .local v2, "simBundle":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_0

    .line 108
    invoke-static {v2, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 111
    :cond_0
    const-string v3, "EAP_TTLS_CONFIG_KEY"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 112
    .local v3, "ttlsBundle":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_1

    .line 113
    invoke-static {v3, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 116
    :cond_1
    const-string v4, "EAP_AKA_CONFIG_KEY"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 117
    .local v4, "akaBundle":Landroid/os/PersistableBundle;
    if-eqz v4, :cond_2

    .line 118
    invoke-static {v4, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 121
    :cond_2
    const-string v5, "EAP_MSCHAP_V2_CONFIG_KEY"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 122
    .local v5, "msChapV2Bundle":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_3

    .line 123
    invoke-static {v5, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 126
    :cond_3
    const-string v6, "EAP_AKA_PRIME_CONFIG_KEY"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v6

    .line 127
    .local v6, "akaPrimeBundle":Landroid/os/PersistableBundle;
    if-eqz v6, :cond_4

    .line 128
    invoke-static {v6, v0}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;->setBuilderByReadingPersistableBundle(Landroid/os/PersistableBundle;Landroid/net/eap/EapSessionConfig$Builder;)V

    .line 131
    :cond_4
    invoke-virtual {v0}, Landroid/net/eap/EapSessionConfig$Builder;->build()Landroid/net/eap/EapSessionConfig;

    move-result-object v7

    return-object v7
.end method

.method public static blacklist toPersistableBundle(Landroid/net/eap/EapSessionConfig;)Landroid/os/PersistableBundle;
    .locals 3
    .param p0, "config"    # Landroid/net/eap/EapSessionConfig;

    .line 57
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 59
    .local v0, "result":Landroid/os/PersistableBundle;
    nop

    .line 60
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapIdentity()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->fromByteArray([B)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 59
    const-string v2, "EAP_ID_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapSimConfig()Landroid/net/eap/EapSessionConfig$EapSimConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 63
    nop

    .line 65
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapSimConfig()Landroid/net/eap/EapSessionConfig$EapSimConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapSimConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapSimConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 63
    const-string v2, "EAP_SIM_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapTtlsConfig()Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    nop

    .line 71
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapTtlsConfig()Landroid/net/eap/EapSessionConfig$EapTtlsConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapTtlsConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapTtlsConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 69
    const-string v2, "EAP_TTLS_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 74
    :cond_1
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 75
    nop

    .line 77
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaConfig()Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapAkaConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 75
    const-string v2, "EAP_AKA_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 80
    :cond_2
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 81
    nop

    .line 83
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapMsChapV2Config()Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapMsChapV2ConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapMsChapV2Config;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 81
    const-string v2, "EAP_MSCHAP_V2_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 86
    :cond_3
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaPrimeConfig()Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 87
    nop

    .line 89
    invoke-virtual {p0}, Landroid/net/eap/EapSessionConfig;->getEapAkaPrimeConfig()Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;

    move-result-object v1

    invoke-static {v1}, Landroid/net/vcn/persistablebundleutils/EapSessionConfigUtils$EapAkaPrimeConfigUtils;->toPersistableBundle(Landroid/net/eap/EapSessionConfig$EapAkaPrimeConfig;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 87
    const-string v2, "EAP_AKA_PRIME_CONFIG_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 92
    :cond_4
    return-object v0
.end method
