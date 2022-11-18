.class public interface abstract Landroid/hardware/camera2/extension/ISessionProcessorImpl;
.super Ljava/lang/Object;
.source "ISessionProcessorImpl.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/extension/ISessionProcessorImpl$Stub;,
        Landroid/hardware/camera2/extension/ISessionProcessorImpl$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.extension.ISessionProcessorImpl"


# virtual methods
.method public abstract blacklist deInitSession()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist initSession(Ljava/lang/String;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCaptureSessionEnd()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onCaptureSessionStart(Landroid/hardware/camera2/extension/IRequestProcessorImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setParameters(Landroid/hardware/camera2/CaptureRequest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopRepeating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
