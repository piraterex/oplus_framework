.class public interface abstract Landroid/view/IDisplayWindowRotationCallback;
.super Ljava/lang/Object;
.source "IDisplayWindowRotationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayWindowRotationCallback$Stub;,
        Landroid/view/IDisplayWindowRotationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayWindowRotationCallback"


# virtual methods
.method public abstract blacklist continueRotateDisplay(ILandroid/window/WindowContainerTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
