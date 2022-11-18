.class public interface abstract Landroid/os/renderacc/IRenderAcceleratingStateListener;
.super Ljava/lang/Object;
.source "IRenderAcceleratingStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/renderacc/IRenderAcceleratingStateListener$Stub;,
        Landroid/os/renderacc/IRenderAcceleratingStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.renderacc.IRenderAcceleratingStateListener"


# virtual methods
.method public abstract blacklist onStateReport(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
