.class public interface abstract Landroid/window/IStartingWindowInfoExt;
.super Ljava/lang/Object;
.source "IStartingWindowInfoExt.java"


# virtual methods
.method public blacklist getExtendedInfo()Ljava/lang/Object;
    .locals 1

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 36
    return-void
.end method

.method public blacklist setExtendedInfo(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extendedInfo"    # Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 33
    return-void
.end method
