.class public interface abstract Landroid/app/IActivityPendingResult;
.super Ljava/lang/Object;
.source "IActivityPendingResult.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityPendingResult$Stub;,
        Landroid/app/IActivityPendingResult$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o sendResult(ILjava/lang/String;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
