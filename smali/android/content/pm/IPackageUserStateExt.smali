.class public interface abstract Landroid/content/pm/IPackageUserStateExt;
.super Ljava/lang/Object;
.source "IPackageUserStateExt.java"


# static fields
.field public static final blacklist ATTR_PENDING_DATA_MIG:Ljava/lang/String; = "pendingDataMig"


# virtual methods
.method public blacklist getFreezeFlag()I
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getFreezeState()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist ignorePackageDisabledInIsEnabled(IJ)Z
    .locals 1
    .param p1, "enabled"    # I
    .param p2, "flags"    # J

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isPendingDataMig()Z
    .locals 1

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setExtraData(Landroid/content/pm/IPackageUserStateExt;)V
    .locals 0
    .param p1, "mExt"    # Landroid/content/pm/IPackageUserStateExt;

    .line 50
    return-void
.end method

.method public blacklist setFreezeFlag(I)V
    .locals 0
    .param p1, "freezeFlag"    # I

    .line 47
    return-void
.end method

.method public blacklist setFreezeState(I)V
    .locals 0
    .param p1, "freezeState"    # I

    .line 44
    return-void
.end method

.method public blacklist setPendingDataMig(Z)V
    .locals 0
    .param p1, "pendingDataMig"    # Z

    .line 27
    return-void
.end method
