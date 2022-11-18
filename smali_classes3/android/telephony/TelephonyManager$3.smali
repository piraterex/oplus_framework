.class Landroid/telephony/TelephonyManager$3;
.super Landroid/os/ResultReceiver;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->uploadCallComposerPicture(Ljava/io/InputStream;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
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

    .line 4941
    iput-object p1, p0, Landroid/telephony/TelephonyManager$3;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$0(Landroid/os/OutcomeReceiver;I)V
    .locals 2
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultCode"    # I

    .line 4945
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$1(Landroid/os/OutcomeReceiver;)V
    .locals 3
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;

    .line 4954
    new-instance v0, Landroid/telephony/TelephonyManager$CallComposerException;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager$CallComposerException;-><init>(ILjava/io/IOException;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onReceiveResult$2(Landroid/os/OutcomeReceiver;Landroid/os/ParcelUuid;)V
    .locals 0
    .param p0, "callback"    # Landroid/os/OutcomeReceiver;
    .param p1, "resultUuid"    # Landroid/os/ParcelUuid;

    .line 4959
    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected whitelist onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "resultCode"    # I
    .param p2, "result"    # Landroid/os/Bundle;

    .line 4944
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4945
    iget-object v0, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4947
    return-void

    .line 4949
    :cond_0
    nop

    .line 4950
    const-string v0, "call_composer_picture_handle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 4951
    .local v0, "resultUuid":Landroid/os/ParcelUuid;
    if-nez v0, :cond_1

    .line 4952
    const-string v1, "TelephonyManager"

    const-string v2, "Got null uuid without an error while uploading call composer pic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4954
    iget-object v1, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4957
    return-void

    .line 4959
    :cond_1
    iget-object v1, p0, Landroid/telephony/TelephonyManager$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/telephony/TelephonyManager$3;->val$callback:Landroid/os/OutcomeReceiver;

    new-instance v3, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Landroid/telephony/TelephonyManager$3$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;Landroid/os/ParcelUuid;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4960
    return-void
.end method
