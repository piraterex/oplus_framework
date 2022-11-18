.class public interface abstract Landroid/hardware/fingerprint/IFingerprintExt;
.super Ljava/lang/Object;
.source "IFingerprintExt.java"


# virtual methods
.method public blacklist getFingerFlags()I
    .locals 1

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist init(I)V
    .locals 0
    .param p1, "groupId"    # I

    .line 29
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .line 32
    return-void
.end method

.method public blacklist setFingerFlags(I)V
    .locals 0
    .param p1, "fingerFlags"    # I

    .line 38
    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 35
    return-void
.end method
