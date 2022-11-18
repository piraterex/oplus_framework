.class public interface abstract Landroid/os/storage/IStorageVolumeExt;
.super Ljava/lang/Object;
.source "IStorageVolumeExt.java"


# virtual methods
.method public blacklist dump(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pw"    # Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public blacklist getReadOnlyType()I
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(I)V
    .locals 0
    .param p1, "readonlyType"    # I

    .line 27
    return-void
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    return-void
.end method

.method public blacklist setReadOnlyType(I)V
    .locals 0
    .param p1, "readonlyType"    # I

    .line 43
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    return-void
.end method
