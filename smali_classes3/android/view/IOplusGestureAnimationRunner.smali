.class public interface abstract Landroid/view/IOplusGestureAnimationRunner;
.super Ljava/lang/Object;
.source "IOplusGestureAnimationRunner.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOplusGestureAnimationRunner$Stub;,
        Landroid/view/IOplusGestureAnimationRunner$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IOplusGestureAnimationRunner"


# virtual methods
.method public abstract greylist onAnimationCanceled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist onAnimationStart(Landroid/view/IOplusGestureAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/SurfaceControl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
