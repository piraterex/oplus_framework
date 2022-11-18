.class public Lcom/android/internal/app/IVoiceInteractorCallback$Default;
.super Ljava/lang/Object;
.source "IVoiceInteractorCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist deliverAbortVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist deliverCancel(Lcom/android/internal/app/IVoiceInteractorRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public blacklist deliverCommandResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public blacklist deliverCompleteVoiceResult(Lcom/android/internal/app/IVoiceInteractorRequest;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist deliverConfirmationResult(Lcom/android/internal/app/IVoiceInteractorRequest;ZLandroid/os/Bundle;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "confirmed"    # Z
    .param p3, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method

.method public blacklist deliverPickOptionResult(Lcom/android/internal/app/IVoiceInteractorRequest;Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/app/IVoiceInteractorRequest;
    .param p2, "finished"    # Z
    .param p3, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p4, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist destroy()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method
