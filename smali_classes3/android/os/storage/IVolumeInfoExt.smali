.class public interface abstract Landroid/os/storage/IVolumeInfoExt;
.super Ljava/lang/Object;
.source "IVolumeInfoExt.java"


# virtual methods
.method public blacklist dump(Ljava/lang/Object;)V
    .locals 0
    .param p1, "pw"    # Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public blacklist initFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 30
    return-void
.end method

.method public blacklist setReadOnlyTypeValue(I)V
    .locals 0
    .param p1, "value"    # I

    .line 27
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 36
    return-void
.end method
