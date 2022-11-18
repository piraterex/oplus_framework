.class public interface abstract Landroid/net/lowpan/ILowpanManagerListener;
.super Ljava/lang/Object;
.source "ILowpanManagerListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManagerListener$Stub;,
        Landroid/net/lowpan/ILowpanManagerListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanManagerListener"


# virtual methods
.method public abstract blacklist onInterfaceAdded(Landroid/net/lowpan/ILowpanInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onInterfaceRemoved(Landroid/net/lowpan/ILowpanInterface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
