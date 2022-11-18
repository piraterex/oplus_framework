.class public interface abstract Landroid/content/pm/IVersionedPackageExt;
.super Ljava/lang/Object;
.source "IVersionedPackageExt.java"


# static fields
.field public static final blacklist DELETE_PACKAGE_MULTI_SYSTEM_FLAG:I = 0x1


# virtual methods
.method public blacklist getCallPid()I
    .locals 1

    .line 35
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getCallUid()I
    .locals 1

    .line 31
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDeleteFlag()I
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist setCallInfo(II)V
    .locals 0
    .param p1, "callUid"    # I
    .param p2, "callPid"    # I

    .line 28
    return-void
.end method

.method public blacklist setDeleteFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 41
    return-void
.end method
