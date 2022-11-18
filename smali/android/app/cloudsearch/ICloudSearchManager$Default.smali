.class public Landroid/app/cloudsearch/ICloudSearchManager$Default;
.super Ljava/lang/Object;
.source "ICloudSearchManager.java"

# interfaces
.implements Landroid/app/cloudsearch/ICloudSearchManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/cloudsearch/ICloudSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist returnResults(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/cloudsearch/SearchResponse;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/app/cloudsearch/SearchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist search(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V
    .locals 0
    .param p1, "request"    # Landroid/app/cloudsearch/SearchRequest;
    .param p2, "callBack"    # Landroid/app/cloudsearch/ICloudSearchManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
