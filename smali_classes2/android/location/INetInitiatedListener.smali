.class public interface abstract Landroid/location/INetInitiatedListener;
.super Ljava/lang/Object;
.source "INetInitiatedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/INetInitiatedListener$Stub;,
        Landroid/location/INetInitiatedListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist sendNiResponse(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
