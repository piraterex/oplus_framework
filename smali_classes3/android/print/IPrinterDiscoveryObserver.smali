.class public interface abstract Landroid/print/IPrinterDiscoveryObserver;
.super Ljava/lang/Object;
.source "IPrinterDiscoveryObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrinterDiscoveryObserver$Stub;,
        Landroid/print/IPrinterDiscoveryObserver$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
