.class Landroid/telephony/TelephonyManager$13;
.super Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->getCallForwarding(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$callback:Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 15228
    iput-object p1, p0, Landroid/telephony/TelephonyManager$13;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$13;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$13;->val$callback:Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;

    invoke-direct {p0}, Lcom/android/internal/telephony/ICallForwardingInfoCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingInfoAvailable$0(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;Landroid/telephony/CallForwardingInfo;)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;
    .param p1, "info"    # Landroid/telephony/CallForwardingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15233
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;->onCallForwardingInfoAvailable(Landroid/telephony/CallForwardingInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onCallForwardingInfoAvailable$1(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;Landroid/telephony/CallForwardingInfo;)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;
    .param p1, "info"    # Landroid/telephony/CallForwardingInfo;

    .line 15232
    new-instance v0, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;Landroid/telephony/CallForwardingInfo;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15240
    invoke-interface {p0, p1}, Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onError$3(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;I)V
    .locals 1
    .param p0, "callback"    # Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;
    .param p1, "error"    # I

    .line 15239
    new-instance v0, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onCallForwardingInfoAvailable(Landroid/telephony/CallForwardingInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/telephony/CallForwardingInfo;

    .line 15231
    iget-object v0, p0, Landroid/telephony/TelephonyManager$13;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$13;->val$callback:Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;

    new-instance v2, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1}, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;Landroid/telephony/CallForwardingInfo;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15234
    return-void
.end method

.method public blacklist onError(I)V
    .locals 3
    .param p1, "error"    # I

    .line 15238
    iget-object v0, p0, Landroid/telephony/TelephonyManager$13;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$13;->val$callback:Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;

    new-instance v2, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/telephony/TelephonyManager$13$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/TelephonyManager$CallForwardingInfoCallback;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15241
    return-void
.end method
