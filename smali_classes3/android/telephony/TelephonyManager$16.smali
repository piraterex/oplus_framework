.class Landroid/telephony/TelephonyManager$16;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->setCallWaitingEnabled(ZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$resultListener:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .line 15477
    iput-object p1, p0, Landroid/telephony/TelephonyManager$16;->this$0:Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Landroid/telephony/TelephonyManager$16;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyManager$16;->val$resultListener:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist lambda$accept$1(Ljava/util/function/Consumer;I)V
    .locals 1
    .param p0, "resultListener"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 15481
    new-instance v0, Landroid/telephony/TelephonyManager$16$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyManager$16$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .locals 3
    .param p1, "result"    # I

    .line 15480
    iget-object v0, p0, Landroid/telephony/TelephonyManager$16;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/TelephonyManager$16;->val$resultListener:Ljava/util/function/Consumer;

    new-instance v2, Landroid/telephony/TelephonyManager$16$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/telephony/TelephonyManager$16$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15482
    return-void
.end method
