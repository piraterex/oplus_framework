.class Landroid/telephony/ims/stub/SipTransportImplBase$1;
.super Ljava/lang/Object;
.source "SipTransportImplBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/SipTransportImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/ims/stub/SipTransportImplBase;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/stub/SipTransportImplBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/ims/stub/SipTransportImplBase;

    .line 54
    iput-object p1, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 2

    .line 58
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$fgetmBinderExecutor(Landroid/telephony/ims/stub/SipTransportImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public blacklist binderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "who"    # Landroid/os/IBinder;

    .line 62
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-static {v0}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$fgetmBinderExecutor(Landroid/telephony/ims/stub/SipTransportImplBase;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/SipTransportImplBase$1;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method synthetic blacklist lambda$binderDied$0$android-telephony-ims-stub-SipTransportImplBase$1()V
    .locals 2

    .line 58
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$mbinderDiedInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/os/IBinder;)V

    return-void
.end method

.method synthetic blacklist lambda$binderDied$1$android-telephony-ims-stub-SipTransportImplBase$1(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "who"    # Landroid/os/IBinder;

    .line 62
    iget-object v0, p0, Landroid/telephony/ims/stub/SipTransportImplBase$1;->this$0:Landroid/telephony/ims/stub/SipTransportImplBase;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/SipTransportImplBase;->-$$Nest$mbinderDiedInternal(Landroid/telephony/ims/stub/SipTransportImplBase;Landroid/os/IBinder;)V

    return-void
.end method
