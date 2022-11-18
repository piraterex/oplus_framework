.class public Landroid/service/autofill/IInlineSuggestionUi$Default;
.super Ljava/lang/Object;
.source "IInlineSuggestionUi.java"

# interfaces
.implements Landroid/service/autofill/IInlineSuggestionUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/IInlineSuggestionUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/service/autofill/ISurfacePackageResultCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist releaseSurfaceControlViewHost()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method
