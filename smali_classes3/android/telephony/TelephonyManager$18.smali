.class Landroid/telephony/TelephonyManager$18;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->getNetworkSlicingConfiguration(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/os/OutcomeReceiver;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 16978
    iput-object p1, p0, Landroid/telephony/TelephonyManager$18;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V
    .locals 0
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "slicingConfig"    # Landroid/telephony/data/NetworkSlicingConfig;

    .line 16993
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onReceiveResult$0$android-telephony-TelephonyManager$18(Landroid/os/OutcomeReceiver;I)V
    .locals 2
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "resultCode"    # I

    .line 16982
    new-instance v0, Landroid/telephony/TelephonyManager$TimeoutException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$TimeoutException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic blacklist lambda$onReceiveResult$1$android-telephony-TelephonyManager$18(Landroid/os/OutcomeReceiver;I)V
    .locals 2
    .param p1, "callback"    # Landroid/os/OutcomeReceiver;
    .param p2, "resultCode"    # I

    .line 16986
    new-instance v0, Landroid/telephony/TelephonyManager$ModemErrorException;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {v0, v1, p2}, Landroid/telephony/TelephonyManager$ModemErrorException;-><init>(Landroid/telephony/TelephonyManager;I)V

    invoke-interface {p1, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "result"    # Landroid/os/Bundle;

    .line 16981
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 16982
    iget-object v0, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, p1}, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$18;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16984
    return-void

    .line 16985
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 16986
    iget-object v0, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v1, p1}, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$18;Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16988
    return-void

    .line 16991
    :cond_1
    nop

    .line 16992
    const-string/jumbo v0, "slicing_config_handle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/NetworkSlicingConfig;

    .line 16993
    .local v0, "slicingConfig":Landroid/telephony/data/NetworkSlicingConfig;
    iget-object v1, p0, Landroid/telephony/TelephonyManager$18;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$18;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Landroid/telephony/TelephonyManager$18$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/telephony/data/NetworkSlicingConfig;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 16994
    return-void
.end method
