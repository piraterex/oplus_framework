.class public interface abstract Landroid/service/autofill/IAutoFillService;
.super Ljava/lang/Object;
.source "IAutoFillService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IAutoFillService$Stub;,
        Landroid/service/autofill/IAutoFillService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onConnectedStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSavedPasswordCountRequest(Lcom/android/internal/os/IResultReceiver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
