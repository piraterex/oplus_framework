.class public Landroid/view/ISurfaceControlViewHost$Default;
.super Ljava/lang/Object;
.source "ISurfaceControlViewHost.java"

# interfaces
.implements Landroid/view/ISurfaceControlViewHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ISurfaceControlViewHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onDispatchDetachedFromWindow()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "insetFrame"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
