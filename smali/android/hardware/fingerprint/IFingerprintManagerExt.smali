.class public interface abstract Landroid/hardware/fingerprint/IFingerprintManagerExt;
.super Ljava/lang/Object;
.source "IFingerprintManagerExt.java"


# virtual methods
.method public blacklist getAcquiredString(II)Ljava/lang/String;
    .locals 1
    .param p1, "acquireInfo"    # I
    .param p2, "vendorCode"    # I

    .line 22
    const-string v0, ""

    return-object v0
.end method

.method public blacklist isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clientPackage"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    return v0
.end method
