.class public interface abstract Landroid/media/projection/IMediaProjectionWatcherCallback;
.super Ljava/lang/Object;
.source "IMediaProjectionWatcherCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/projection/IMediaProjectionWatcherCallback$Stub;,
        Landroid/media/projection/IMediaProjectionWatcherCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onStart(Landroid/media/projection/MediaProjectionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onStop(Landroid/media/projection/MediaProjectionInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
