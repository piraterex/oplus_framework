.class public interface abstract Lcom/oplus/verifycode/IOplusVerifyCodeListener;
.super Ljava/lang/Object;
.source "IOplusVerifyCodeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/verifycode/IOplusVerifyCodeListener$Stub;,
        Lcom/oplus/verifycode/IOplusVerifyCodeListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.oplus.verifycode.IOplusVerifyCodeListener"


# virtual methods
.method public abstract blacklist notifyIMELayoutChanged(ZII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyImeAttributeChanged(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onBindService(Lcom/oplus/verifycode/IOplusVerifyCodeService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUnBindService(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
