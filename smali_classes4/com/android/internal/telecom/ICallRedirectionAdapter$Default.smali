.class public Lcom/android/internal/telecom/ICallRedirectionAdapter$Default;
.super Ljava/lang/Object;
.source "ICallRedirectionAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallRedirectionAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallRedirectionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist placeCallUnmodified()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public blacklist redirectCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 0
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "targetPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "confirmFirst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
