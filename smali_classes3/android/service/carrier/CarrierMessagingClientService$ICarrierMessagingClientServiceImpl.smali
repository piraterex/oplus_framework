.class Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;
.super Landroid/service/carrier/ICarrierMessagingClientService$Stub;
.source "CarrierMessagingClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/CarrierMessagingClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ICarrierMessagingClientServiceImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/carrier/CarrierMessagingClientService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingClientService;)V
    .locals 0

    .line 81
    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;->this$0:Landroid/service/carrier/CarrierMessagingClientService;

    invoke-direct {p0}, Landroid/service/carrier/ICarrierMessagingClientService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/carrier/CarrierMessagingClientService;Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingClientService$ICarrierMessagingClientServiceImpl;-><init>(Landroid/service/carrier/CarrierMessagingClientService;)V

    return-void
.end method
