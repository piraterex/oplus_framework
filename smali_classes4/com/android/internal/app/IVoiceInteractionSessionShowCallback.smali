.class public interface abstract Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
.super Ljava/lang/Object;
.source "IVoiceInteractionSessionShowCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;,
        Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onShown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
