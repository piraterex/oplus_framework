.class Landroid/telephony/SmsManager$5;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/SmsManager;

.field final synthetic blacklist val$data:[B

.field final synthetic blacklist val$deliveryIntent:Landroid/app/PendingIntent;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$destinationPort:S

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntent:Landroid/app/PendingIntent;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/SmsManager;

    .line 1421
    iput-object p1, p0, Landroid/telephony/SmsManager$5;->this$0:Landroid/telephony/SmsManager;

    iput-object p2, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iput-short p4, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    iput-object p5, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iput-object p6, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iput-object p7, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .locals 2

    .line 1435
    iget-object v0, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 1436
    return-void
.end method

.method public blacklist onSuccess(I)V
    .locals 10
    .param p1, "subId"    # I

    .line 1425
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1426
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/telephony/SmsManager$5;->val$destinationAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$5;->val$scAddress:Ljava/lang/String;

    iget-short v1, p0, Landroid/telephony/SmsManager$5;->val$destinationPort:S

    const v6, 0xffff

    and-int/2addr v6, v1

    iget-object v7, p0, Landroid/telephony/SmsManager$5;->val$data:[B

    iget-object v8, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    iget-object v9, p0, Landroid/telephony/SmsManager$5;->val$deliveryIntent:Landroid/app/PendingIntent;

    move v1, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    goto :goto_0

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDataMessage: Couldn\'t send SMS - Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    iget-object v1, p0, Landroid/telephony/SmsManager$5;->val$sentIntent:Landroid/app/PendingIntent;

    const/16 v2, 0x1f

    invoke-static {v1, v2}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V

    .line 1432
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
