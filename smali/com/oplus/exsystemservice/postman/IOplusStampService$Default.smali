.class public Lcom/oplus/exsystemservice/postman/IOplusStampService$Default;
.super Ljava/lang/Object;
.source "IOplusStampService.java"

# interfaces
.implements Lcom/oplus/exsystemservice/postman/IOplusStampService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/exsystemservice/postman/IOplusStampService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist sendDeleteStampId(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public whitelist sendOnStampEvent(Ljava/lang/String;Ljava/util/Map;J)I
    .locals 1
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method
