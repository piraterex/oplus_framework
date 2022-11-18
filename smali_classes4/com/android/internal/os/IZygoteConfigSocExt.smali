.class public interface abstract Lcom/android/internal/os/IZygoteConfigSocExt;
.super Ljava/lang/Object;
.source "IZygoteConfigSocExt.java"


# virtual methods
.method public blacklist checkPolicy(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist createTertiaryZygote(Ljava/lang/String;)Lcom/android/internal/os/ZygoteServer;
    .locals 1
    .param p1, "zygoteSocketName"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isApp32BoostEnabled()Z
    .locals 1

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist shouldAttemptApp32Boost(II)Z
    .locals 1
    .param p1, "zygotePolicyFlags"    # I
    .param p2, "runtimeFlags"    # I

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateZygotePolicyFlags(Landroid/content/ContentResolver;I)I
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "zygotePolicyFlags"    # I

    .line 34
    return p2
.end method
