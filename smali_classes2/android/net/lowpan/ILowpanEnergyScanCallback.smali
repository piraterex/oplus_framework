.class public interface abstract Landroid/net/lowpan/ILowpanEnergyScanCallback;
.super Ljava/lang/Object;
.source "ILowpanEnergyScanCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;,
        Landroid/net/lowpan/ILowpanEnergyScanCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanEnergyScanCallback"


# virtual methods
.method public abstract blacklist onEnergyScanFinished()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEnergyScanResult(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
