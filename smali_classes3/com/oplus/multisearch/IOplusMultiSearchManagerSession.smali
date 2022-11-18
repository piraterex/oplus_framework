.class public interface abstract Lcom/oplus/multisearch/IOplusMultiSearchManagerSession;
.super Ljava/lang/Object;
.source "IOplusMultiSearchManagerSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/multisearch/IOplusMultiSearchManagerSession$Stub;,
        Lcom/oplus/multisearch/IOplusMultiSearchManagerSession$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.multisearch.IOplusMultiSearchManagerSession"


# virtual methods
.method public abstract whitelist registerListener(Lcom/oplus/multisearch/IOplusMultiSearchListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract whitelist unregisterListener()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
