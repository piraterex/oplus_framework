.class public abstract Landroid/service/carrier/CarrierMessagingService;
.super Landroid/app/Service;
.source "CarrierMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;,
        Landroid/service/carrier/CarrierMessagingService$ResultCallback;,
        Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;,
        Landroid/service/carrier/CarrierMessagingService$SendSmsResult;,
        Landroid/service/carrier/CarrierMessagingService$SendMmsResult;,
        Landroid/service/carrier/CarrierMessagingService$SendRequest;,
        Landroid/service/carrier/CarrierMessagingService$DownloadResult;,
        Landroid/service/carrier/CarrierMessagingService$SendResult;,
        Landroid/service/carrier/CarrierMessagingService$FilterCompleteResult;
    }
.end annotation


# static fields
.field public static final whitelist DOWNLOAD_STATUS_ERROR:I = 0x2

.field public static final whitelist DOWNLOAD_STATUS_OK:I = 0x0

.field public static final whitelist DOWNLOAD_STATUS_RETRY_ON_CARRIER_NETWORK:I = 0x1

.field public static final whitelist RECEIVE_OPTIONS_DEFAULT:I = 0x0

.field public static final whitelist RECEIVE_OPTIONS_DROP:I = 0x1

.field public static final whitelist RECEIVE_OPTIONS_SKIP_NOTIFY_WHEN_CREDENTIAL_PROTECTED_STORAGE_UNAVAILABLE:I = 0x2

.field public static final whitelist SEND_FLAG_REQUEST_DELIVERY_STATUS:I = 0x1

.field public static final whitelist SEND_STATUS_ERROR:I = 0x2

.field public static final whitelist SEND_STATUS_OK:I = 0x0

.field public static final whitelist SEND_STATUS_RETRY_ON_CARRIER_NETWORK:I = 0x1

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.carrier.CarrierMessagingService"


# instance fields
.field private final greylist-max-o mWrapper:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 149
    new-instance v0, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;-><init>(Landroid/service/carrier/CarrierMessagingService;Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper-IA;)V

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingService;->mWrapper:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 355
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.service.carrier.CarrierMessagingService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingService;->mWrapper:Landroid/service/carrier/CarrierMessagingService$ICarrierMessagingWrapper;

    return-object v0
.end method

.method public whitelist onDownloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/net/Uri;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 348
    .local p4, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    goto :goto_0

    .line 349
    :catch_0
    move-exception v0

    .line 351
    :goto_0
    return-void
.end method

.method public whitelist onFilterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 1
    .param p1, "pdu"    # Landroid/service/carrier/MessagePdu;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/carrier/MessagePdu;",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    .local p5, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Ljava/lang/Boolean;>;"
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p5, v0}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 170
    :goto_0
    return-void
.end method

.method public whitelist onReceiveTextSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 6
    .param p1, "pdu"    # Landroid/service/carrier/MessagePdu;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/carrier/MessagePdu;",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p5, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/service/carrier/CarrierMessagingService$1;

    invoke-direct {v5, p0, p5}, Landroid/service/carrier/CarrierMessagingService$1;-><init>(Landroid/service/carrier/CarrierMessagingService;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/service/carrier/CarrierMessagingService;->onFilterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 200
    return-void
.end method

.method public whitelist onSendDataSms([BILjava/lang/String;IILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .param p5, "sendSmsFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "II",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .line 275
    .local p6, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Landroid/service/carrier/CarrierMessagingService$SendSmsResult;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/service/carrier/CarrierMessagingService;->onSendDataSms([BILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 276
    return-void
.end method

.method public whitelist onSendDataSms([BILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "destPort"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    .local p5, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Landroid/service/carrier/CarrierMessagingService$SendSmsResult;>;"
    :try_start_0
    new-instance v0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;-><init>(II)V

    invoke-interface {p5, v0}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 258
    :goto_0
    return-void
.end method

.method public whitelist onSendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 3
    .param p1, "pduUri"    # Landroid/net/Uri;
    .param p2, "subId"    # I
    .param p3, "location"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/net/Uri;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendMmsResult;",
            ">;)V"
        }
    .end annotation

    .line 329
    .local p4, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Landroid/service/carrier/CarrierMessagingService$SendMmsResult;>;"
    :try_start_0
    new-instance v0, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/carrier/CarrierMessagingService$SendMmsResult;-><init>(I[B)V

    invoke-interface {p4, v0}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 332
    :goto_0
    return-void
.end method

.method public whitelist onSendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 0
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;",
            ">;)V"
        }
    .end annotation

    .line 313
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;>;"
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/service/carrier/CarrierMessagingService;->onSendMultipartTextSms(Ljava/util/List;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 314
    return-void
.end method

.method public whitelist onSendMultipartTextSms(Ljava/util/List;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 3
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;>;"
    :try_start_0
    new-instance v0, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/carrier/CarrierMessagingService$SendMultipartSmsResult;-><init>(I[I)V

    invoke-interface {p4, v0}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 297
    :goto_0
    return-void
.end method

.method public whitelist onSendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .param p4, "sendSmsFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .line 236
    .local p5, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Landroid/service/carrier/CarrierMessagingService$SendSmsResult;>;"
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/service/carrier/CarrierMessagingService;->onSendTextSms(Ljava/lang/String;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V

    .line 237
    return-void
.end method

.method public whitelist onSendTextSms(Ljava/lang/String;ILjava/lang/String;Landroid/service/carrier/CarrierMessagingService$ResultCallback;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "destAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/service/carrier/CarrierMessagingService$ResultCallback<",
            "Landroid/service/carrier/CarrierMessagingService$SendSmsResult;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    .local p4, "callback":Landroid/service/carrier/CarrierMessagingService$ResultCallback;, "Landroid/service/carrier/CarrierMessagingService$ResultCallback<Landroid/service/carrier/CarrierMessagingService$SendSmsResult;>;"
    :try_start_0
    new-instance v0, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/service/carrier/CarrierMessagingService$SendSmsResult;-><init>(II)V

    invoke-interface {p4, v0}, Landroid/service/carrier/CarrierMessagingService$ResultCallback;->onReceiveResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    :goto_0
    return-void
.end method
