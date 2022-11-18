.class Landroid/os/RecoverySystem$5;
.super Landroid/content/BroadcastReceiver;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->removeEuiccInvisibleSubs(Landroid/content/Context;Ljava/util/List;Landroid/telephony/euicc/EuiccManager;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$removeSubsLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic blacklist val$removedSubsCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1154
    iput-object p1, p0, Landroid/os/RecoverySystem$5;->val$removedSubsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Landroid/os/RecoverySystem$5;->val$removeSubsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.action.EUICC_REMOVE_INVISIBLE_SUBSCRIPTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-virtual {p0}, Landroid/os/RecoverySystem$5;->getResultCode()I

    move-result v0

    const-string v1, "RecoverySystem"

    if-eqz v0, :cond_0

    .line 1159
    const/4 v0, 0x0

    const-string v2, "android.telephony.euicc.extra.EMBEDDED_SUBSCRIPTION_DETAILED_CODE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1161
    .local v0, "detailedCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error removing euicc opportunistic profile, Detailed code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    .end local v0    # "detailedCode":I
    goto :goto_0

    .line 1164
    :cond_0
    const-string v0, "Successfully remove euicc opportunistic profile."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    iget-object v0, p0, Landroid/os/RecoverySystem$5;->val$removedSubsCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 1167
    :goto_0
    iget-object v0, p0, Landroid/os/RecoverySystem$5;->val$removeSubsLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1169
    :cond_1
    return-void
.end method
