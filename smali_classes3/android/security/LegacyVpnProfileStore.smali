.class public Landroid/security/LegacyVpnProfileStore;
.super Ljava/lang/Object;
.source "LegacyVpnProfileStore.java"


# static fields
.field private static final blacklist LEGACY_KEYSTORE_SERVICE_NAME:Ljava/lang/String; = "android.security.legacykeystore"

.field public static final blacklist PROFILE_NOT_FOUND:I = 0x7

.field public static final blacklist SYSTEM_ERROR:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "LegacyVpnProfileStore"

.field private static final blacklist isQcomPlatform:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 52
    nop

    .line 53
    const-string/jumbo v0, "ro.boot.hardware"

    const-string/jumbo v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/security/LegacyVpnProfileStore;->isQcomPlatform:Z

    .line 52
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/String;)[B
    .locals 5
    .param p0, "alias"    # Ljava/lang/String;

    .line 98
    const-string v0, "Failed to get vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->get(Ljava/lang/String;I)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 104
    :catch_0
    move-exception v2

    .line 105
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 100
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 101
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    .line 102
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    nop

    .line 107
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getService()Landroid/security/legacykeystore/ILegacyKeystore;
    .locals 1

    .line 46
    nop

    .line 47
    const-string v0, "android.security.legacykeystore"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/security/legacykeystore/ILegacyKeystore$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getUID(Ljava/lang/String;)I
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;

    .line 167
    sget-boolean v0, Landroid/security/LegacyVpnProfileStore;->isQcomPlatform:Z

    if-eqz v0, :cond_0

    const-string v0, "WAPI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f2

    return v0

    .line 168
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "prefix"    # Ljava/lang/String;

    .line 151
    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/security/legacykeystore/ILegacyKeystore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 154
    aget-object v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 157
    .end local v0    # "aliases":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnProfileStore"

    const-string v2, "Failed to list vpn profiles."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static blacklist put(Ljava/lang/String;[B)Z
    .locals 3
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "profile"    # [B

    .line 72
    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v0

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/security/legacykeystore/ILegacyKeystore;->put(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    const/4 v0, 0x1

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "LegacyVpnProfileStore"

    const-string v2, "Failed to put vpn profile."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist remove(Ljava/lang/String;)Z
    .locals 5
    .param p0, "alias"    # Ljava/lang/String;

    .line 124
    const-string v0, "Failed to remove vpn profile."

    const-string v1, "LegacyVpnProfileStore"

    :try_start_0
    invoke-static {}, Landroid/security/LegacyVpnProfileStore;->getService()Landroid/security/legacykeystore/ILegacyKeystore;

    move-result-object v2

    invoke-static {p0}, Landroid/security/LegacyVpnProfileStore;->getUID(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroid/security/legacykeystore/ILegacyKeystore;->remove(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 131
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 128
    .local v2, "e":Landroid/os/ServiceSpecificException;
    iget v3, v2, Landroid/os/ServiceSpecificException;->errorCode:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    .line 129
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v2    # "e":Landroid/os/ServiceSpecificException;
    :cond_0
    nop

    .line 134
    :goto_0
    const/4 v0, 0x0

    return v0
.end method
