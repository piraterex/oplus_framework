.class public interface abstract Lcom/oplus/app/ITerminateObserver;
.super Ljava/lang/Object;
.source "ITerminateObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/ITerminateObserver$Stub;,
        Lcom/oplus/app/ITerminateObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.ITerminateObserver"


# virtual methods
.method public abstract whitelist onRequestTerminate(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist onTerminateStateChanged(IIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
