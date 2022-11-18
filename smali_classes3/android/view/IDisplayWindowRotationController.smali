.class public interface abstract Landroid/view/IDisplayWindowRotationController;
.super Ljava/lang/Object;
.source "IDisplayWindowRotationController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowRotationController$Stub;,
        Landroid/view/IDisplayWindowRotationController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayWindowRotationController"


# virtual methods
.method public abstract blacklist onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
