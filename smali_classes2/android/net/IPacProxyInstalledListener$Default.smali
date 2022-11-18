.class public Landroid/net/IPacProxyInstalledListener$Default;
.super Ljava/lang/Object;
.source "IPacProxyInstalledListener.java"

# interfaces
.implements Landroid/net/IPacProxyInstalledListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IPacProxyInstalledListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onPacProxyInstalled(Landroid/net/Network;Landroid/net/ProxyInfo;)V
    .locals 0
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
