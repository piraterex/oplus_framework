.class public Landroid/view/accessibility/IRemoteMagnificationAnimationCallback$Default;
.super Ljava/lang/Object;
.source "IRemoteMagnificationAnimationCallback.java"

# interfaces
.implements Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;
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

.method public blacklist onResult(Z)V
    .locals 0
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
