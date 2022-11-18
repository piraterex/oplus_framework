.class public Lcom/android/internal/view/inline/IInlineContentCallback$Default;
.super Ljava/lang/Object;
.source "IInlineContentCallback.java"

# interfaces
.implements Lcom/android/internal/view/inline/IInlineContentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/inline/IInlineContentCallback;
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

.method public blacklist onClick()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public blacklist onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .locals 0
    .param p1, "content"    # Landroid/view/SurfaceControlViewHost$SurfacePackage;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onLongClick()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
