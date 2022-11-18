.class public interface abstract Landroid/mtp/IMtpDatabaseExt;
.super Ljava/lang/Object;
.source "IMtpDatabaseExt.java"


# virtual methods
.method public whitelist getMtpDeviceProperty(II[C)Z
    .locals 1
    .param p1, "length"    # I
    .param p2, "property"    # I
    .param p3, "outStringValue"    # [C

    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist quitSafely()V
    .locals 0

    .line 31
    return-void
.end method

.method public whitelist releaseScanThread()V
    .locals 0

    .line 35
    return-void
.end method

.method public whitelist rescanFile(Ljava/lang/String;II)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I

    .line 23
    return-void
.end method
