.class public interface abstract Lcom/oplus/exsystemservice/postman/IOplusStampService;
.super Ljava/lang/Object;
.source "IOplusStampService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/exsystemservice/postman/IOplusStampService$Stub;,
        Lcom/oplus/exsystemservice/postman/IOplusStampService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.exsystemservice.postman.IOplusStampService"


# virtual methods
.method public abstract whitelist sendDeleteStampId(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist sendOnStampEvent(Ljava/lang/String;Ljava/util/Map;J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
