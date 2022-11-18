.class public interface abstract Landroid/hardware/ICameraExt;
.super Ljava/lang/Object;
.source "ICameraExt.java"


# virtual methods
.method public abstract whitelist extendCamera(IJ)V
.end method

.method public abstract whitelist extendRelease(J)V
.end method

.method public abstract whitelist extendhandleMessage(I)V
.end method

.method public abstract whitelist extendstopPreview(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract whitelist extendtakePicture(Landroid/hardware/Camera$Parameters;)V
.end method

.method public abstract whitelist getComponentName()Ljava/lang/String;
.end method

.method public abstract whitelist getNumPhysicalCameras(Ljava/lang/String;)I
.end method

.method public whitelist interceptTakePicture()Z
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method
