.class public Landroid/media/IMediaHTTPService$Default;
.super Ljava/lang/Object;
.source "IMediaHTTPService.java"

# interfaces
.implements Landroid/media/IMediaHTTPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IMediaHTTPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist makeHTTPConnection()Landroid/media/IMediaHTTPConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method
