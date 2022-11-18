.class public interface abstract Landroid/content/pm/ISessionParamsExt;
.super Ljava/lang/Object;
.source "ISessionParamsExt.java"


# virtual methods
.method public blacklist baseWriteToParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;

    .line 41
    return-void
.end method

.method public blacklist copyFrom(Landroid/content/pm/ISessionParamsExt;)V
    .locals 0
    .param p1, "sessionParamsExt"    # Landroid/content/pm/ISessionParamsExt;

    .line 44
    return-void
.end method

.method public blacklist getDexoptFlag()I
    .locals 1

    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtraInstallFlags()I
    .locals 1

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtraSessionInfo()Ljava/lang/String;
    .locals 1

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .line 38
    return-void
.end method

.method public blacklist setDexoptFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .line 47
    return-void
.end method

.method public blacklist setExtraInstallFlags(I)V
    .locals 0
    .param p1, "installFlags"    # I

    .line 31
    return-void
.end method

.method public blacklist setExtraSessionInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraSessionInfo"    # Ljava/lang/String;

    .line 24
    return-void
.end method
