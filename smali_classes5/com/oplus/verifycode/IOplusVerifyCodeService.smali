.class public interface abstract Lcom/oplus/verifycode/IOplusVerifyCodeService;
.super Ljava/lang/Object;
.source "IOplusVerifyCodeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/verifycode/IOplusVerifyCodeService$Stub;,
        Lcom/oplus/verifycode/IOplusVerifyCodeService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.verifycode.IOplusVerifyCodeService"


# virtual methods
.method public abstract whitelist setVerifyCode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
