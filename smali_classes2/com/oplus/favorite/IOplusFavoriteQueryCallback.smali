.class public interface abstract Lcom/oplus/favorite/IOplusFavoriteQueryCallback;
.super Ljava/lang/Object;
.source "IOplusFavoriteQueryCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/favorite/IOplusFavoriteQueryCallback$Stub;,
        Lcom/oplus/favorite/IOplusFavoriteQueryCallback$Default;
    }
.end annotation


# static fields
.field public static final whitelist DESCRIPTOR:Ljava/lang/String; = "com.oplus.favorite.IOplusFavoriteQueryCallback"


# virtual methods
.method public abstract whitelist onQueryResult(Lcom/oplus/favorite/OplusFavoriteQueryResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
