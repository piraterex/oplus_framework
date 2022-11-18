.class public Landroid/view/IDisplayWindowListener$Default;
.super Ljava/lang/Object;
.source "IDisplayWindowListener.java"

# interfaces
.implements Landroid/view/IDisplayWindowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IDisplayWindowListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public blacklist onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist onFixedRotationFinished(I)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public blacklist onFixedRotationStarted(II)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "newRotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method

.method public blacklist onKeepClearAreasChanged(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    .local p2, "restricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "unrestricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    return-void
.end method
