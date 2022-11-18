.class Landroid/telephony/TelephonyManager$7;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->sendUssdRequest(Ljava/lang/String;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

.field final synthetic blacklist val$telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Landroid/telephony/TelephonyManager$UssdResponseCallback;Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 10462
    iput-object p1, p0, Landroid/telephony/TelephonyManager$7;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$7;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$7;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "ussdResponse"    # Landroid/os/Bundle;

    .line 10465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USSD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10466
    const-string/jumbo v0, "ussdResponse cannot be null."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10467
    const-string v0, "USSD_RESPONSE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/UssdResponse;

    .line 10469
    .local v0, "response":Landroid/telephony/UssdResponse;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 10470
    iget-object v1, p0, Landroid/telephony/TelephonyManager$7;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$7;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/UssdResponse;->getUssdRequest()Ljava/lang/String;

    move-result-object v3

    .line 10471
    invoke-virtual {v0}, Landroid/telephony/UssdResponse;->getReturnMessage()Ljava/lang/CharSequence;

    move-result-object v4

    .line 10470
    invoke-virtual {v1, v2, v3, v4}, Landroid/telephony/TelephonyManager$UssdResponseCallback;->onReceiveUssdResponse(Landroid/telephony/TelephonyManager;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10473
    :cond_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager$7;->val$callback:Landroid/telephony/TelephonyManager$UssdResponseCallback;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$7;->val$telephonyManager:Landroid/telephony/TelephonyManager;

    .line 10474
    invoke-virtual {v0}, Landroid/telephony/UssdResponse;->getUssdRequest()Ljava/lang/String;

    move-result-object v3

    .line 10473
    invoke-virtual {v1, v2, v3, p1}, Landroid/telephony/TelephonyManager$UssdResponseCallback;->onReceiveUssdResponseFailed(Landroid/telephony/TelephonyManager;Ljava/lang/String;I)V

    .line 10476
    :goto_0
    return-void
.end method
