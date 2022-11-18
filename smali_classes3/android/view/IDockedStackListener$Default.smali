.class public Landroid/view/IDockedStackListener$Default;
.super Ljava/lang/Object;
.source "IDockedStackListener.java"

# interfaces
.implements Landroid/view/IDockedStackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDockedStackListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAdjustedForImeChanged(ZJ)V
    .locals 0
    .param p1, "adjustedForIme"    # Z
    .param p2, "animDuration"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    return-void
.end method

.method public blacklist onDividerVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onDockSideChanged(I)V
    .locals 0
    .param p1, "newDockSide"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public blacklist onDockedStackExistsChanged(Z)V
    .locals 0
    .param p1, "exists"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist onDockedStackMinimizedChanged(ZJZ)V
    .locals 0
    .param p1, "minimized"    # Z
    .param p2, "animDuration"    # J
    .param p4, "isHomeStackResizable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method
