.class public interface abstract Landroid/content/pm/IActivityInfoExt;
.super Ljava/lang/Object;
.source "IActivityInfoExt.java"


# virtual methods
.method public blacklist copy(Landroid/content/pm/IActivityInfoExt;)V
    .locals 0
    .param p1, "other"    # Landroid/content/pm/IActivityInfoExt;

    .line 35
    return-void
.end method

.method public blacklist disableOverrideMinAspectRatioForCompatMode(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .line 60
    return-void
.end method

.method public blacklist dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 44
    return-void
.end method

.method public blacklist getActivityInfo()Ljava/lang/Object;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getOplusFlags()I
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getOverrideMinAspectRatioForCompatMode()F
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRealConfigChanged(Ljava/lang/String;I)I
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "changes"    # I

    .line 47
    return p2
.end method

.method public blacklist inOplusCompatMode()Z
    .locals 1

    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    return-void
.end method

.method public blacklist setOplusFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .line 24
    return-void
.end method

.method public blacklist setOverrideMinAspectRatioForCompatMode(F)V
    .locals 0
    .param p1, "minAspectRatio"    # F

    .line 53
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 41
    return-void
.end method
