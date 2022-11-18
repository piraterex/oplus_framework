.class public interface abstract Landroid/content/pm/IApplicationInfoExt;
.super Ljava/lang/Object;
.source "IApplicationInfoExt.java"


# virtual methods
.method public blacklist enableLowResolution()Z
    .locals 1

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist firstCheckSupportLowResolution()Z
    .locals 1

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppInvScale()F
    .locals 1

    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppScale()F
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCompatDensity()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCompatModeFlag()I
    .locals 1

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getLaunchingDisplayId()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getNewAppScale()F
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOplusFreezeState()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOverrideDensity()I
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPrivateFlags()I
    .locals 1

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSpecialNativeLibraryDirs()[Ljava/lang/String;
    .locals 1

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public blacklist init(Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "refApplicationInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 30
    return-void
.end method

.method public blacklist init(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)V
    .locals 0
    .param p1, "refApplicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "origin"    # Landroid/content/pm/ApplicationInfo;

    .line 33
    return-void
.end method

.method public blacklist init(Landroid/content/pm/ApplicationInfo;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "refApplicationInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "source"    # Landroid/os/Parcel;

    .line 36
    return-void
.end method

.method public blacklist setAppInvScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 61
    return-void
.end method

.method public blacklist setAppScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 47
    return-void
.end method

.method public blacklist setCmpactModeFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 113
    return-void
.end method

.method public blacklist setCompatDensity(I)V
    .locals 0
    .param p1, "newValue"    # I

    .line 79
    return-void
.end method

.method public blacklist setEnableLowResolution(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 98
    return-void
.end method

.method public blacklist setLaunchingDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 105
    return-void
.end method

.method public blacklist setNewAppScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .line 54
    return-void
.end method

.method public blacklist setOplusFreezeState(I)V
    .locals 0
    .param p1, "state"    # I

    .line 83
    return-void
.end method

.method public blacklist setOverrideDensity(I)V
    .locals 0
    .param p1, "newValue"    # I

    .line 72
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    return-void
.end method
