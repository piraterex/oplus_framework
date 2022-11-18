.class public Landroid/view/accessibility/IWindowMagnificationConnectionCallback$Default;
.super Ljava/lang/Object;
.source "IWindowMagnificationConnectionCallback.java"

# interfaces
.implements Landroid/view/accessibility/IWindowMagnificationConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IWindowMagnificationConnectionCallback;
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

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onAccessibilityActionPerformed(I)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public blacklist onChangeMagnificationMode(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "magnificationMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public blacklist onMove(I)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    return-void
.end method

.method public blacklist onPerformScaleAction(IF)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist onSourceBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "sourceBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onWindowMagnifierBoundsChanged(ILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method
