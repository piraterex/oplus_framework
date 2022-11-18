.class Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$1;
.super Ljava/lang/Object;
.source "CarrierMessagingService.java"

# interfaces
.implements Landroid/service/carrier/CarrierMessagingService$ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

.field final synthetic blacklist val$callback:Landroid/service/carrier/ICarrierMessagingCallback;


# direct methods
.method constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;Landroid/service/carrier/ICarrierMessagingCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    .line 505
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$1;->this$1:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    iput-object p2, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$1;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReceiveResult(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "options"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$1;->val$callback:Landroid/service/carrier/ICarrierMessagingCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/service/carrier/ICarrierMessagingCallback;->onFilterComplete(I)V

    .line 509
    return-void
.end method

.method public bridge synthetic whitelist onReceiveResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper$1;->onReceiveResult(Ljava/lang/Integer;)V

    return-void
.end method
