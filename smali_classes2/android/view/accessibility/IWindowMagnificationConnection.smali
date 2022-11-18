.class public interface abstract Landroid/view/accessibility/IWindowMagnificationConnection;
.super Ljava/lang/Object;
.source "IWindowMagnificationConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IWindowMagnificationConnection$Stub;,
        Landroid/view/accessibility/IWindowMagnificationConnection$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IWindowMagnificationConnection"


# virtual methods
.method public abstract blacklist disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist moveWindowMagnifier(IFF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeMagnificationButton(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setScale(IF)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist showMagnificationButton(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
