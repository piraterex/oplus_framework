.class public interface abstract Lcom/oplus/app/IProcessTerminateObserver;
.super Ljava/lang/Object;
.source "IProcessTerminateObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/app/IProcessTerminateObserver$Stub;,
        Lcom/oplus/app/IProcessTerminateObserver$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.app.IProcessTerminateObserver"


# virtual methods
.method public abstract whitelist onProcessTerminate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
