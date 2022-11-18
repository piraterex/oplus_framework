.class public interface abstract Lcom/oplus/preloadsource/IOplusChannelService;
.super Ljava/lang/Object;
.source "IOplusChannelService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/preloadsource/IOplusChannelService$Stub;,
        Lcom/oplus/preloadsource/IOplusChannelService$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.preloadsource.IOplusChannelService"


# virtual methods
.method public abstract whitelist handleChannelEvent(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
