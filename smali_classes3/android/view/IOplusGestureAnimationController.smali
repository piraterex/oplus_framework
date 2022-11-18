.class public interface abstract Landroid/view/IOplusGestureAnimationController;
.super Ljava/lang/Object;
.source "IOplusGestureAnimationController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IOplusGestureAnimationController$Stub;,
        Landroid/view/IOplusGestureAnimationController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IOplusGestureAnimationController"


# virtual methods
.method public abstract blacklist finishGestureAnimation(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
