.class public interface abstract Landroid/hardware/camera2/ICameraManagerExt;
.super Ljava/lang/Object;
.source "ICameraManagerExt.java"


# virtual methods
.method public abstract whitelist extendCameraManager(Ljava/lang/String;)V
.end method

.method public abstract whitelist extendGetComponentName()Ljava/lang/String;
.end method

.method public abstract whitelist extendSetPackageName()V
.end method

.method public abstract whitelist getNumPhysicalCameras(Ljava/lang/String;)I
.end method

.method public whitelist interceptOpenCameraForUid()Z
    .locals 1

    .line 10
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist ormsSetSceneAction(Ljava/lang/String;I)V
.end method
