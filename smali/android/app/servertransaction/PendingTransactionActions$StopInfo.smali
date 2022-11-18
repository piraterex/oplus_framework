.class public Landroid/app/servertransaction/PendingTransactionActions$StopInfo;
.super Ljava/lang/Object;
.source "PendingTransactionActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/servertransaction/PendingTransactionActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StopInfo"
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ActivityStopInfo"


# instance fields
.field private greylist-max-o mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

.field private greylist-max-o mDescription:Ljava/lang/CharSequence;

.field private greylist-max-o mPersistentState:Landroid/os/PersistableBundle;

.field private greylist-max-o mState:Landroid/os/Bundle;


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    .line 141
    const-string v0, "ActivityStopInfo"

    :try_start_0
    sget-boolean v1, Landroid/app/ActivityThread;->DEBUG_MEMORY_TRIM:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting activity stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v1

    iget-object v2, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v2, v2, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    iget-object v5, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/ActivityClient;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    nop

    .line 161
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 147
    .local v1, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Landroid/util/LogWriter;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    .line 148
    .local v2, "writer":Landroid/util/LogWriter;
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, v2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 149
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v4, "Bundle stats:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 150
    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    invoke-static {v3, v4}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    .line 151
    const-string v4, "PersistableBundle stats:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 152
    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-static {v3, v4}, Landroid/os/Bundle;->dumpStats(Lcom/android/internal/util/IndentingPrintWriter;Landroid/os/BaseBundle;)V

    .line 154
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Landroid/os/TransactionTooLargeException;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    iget-object v4, v4, Landroid/app/ActivityThread$ActivityClientRecord;->packageInfo:Landroid/app/LoadedApk;

    .line 155
    invoke-virtual {v4}, Landroid/app/LoadedApk;->getTargetSdkVersion()I

    move-result v4

    const/16 v5, 0x18

    if-ge v4, v5, :cond_1

    .line 156
    const-string v4, "App sent too much data in instance state, so it was ignored"

    invoke-static {v0, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    return-void

    .line 159
    :cond_1
    throw v1
.end method

.method public greylist-max-o setActivity(Landroid/app/ActivityThread$ActivityClientRecord;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/ActivityThread$ActivityClientRecord;

    .line 122
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mActivity:Landroid/app/ActivityThread$ActivityClientRecord;

    .line 123
    return-void
.end method

.method public greylist-max-o setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .line 134
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mDescription:Ljava/lang/CharSequence;

    .line 135
    return-void
.end method

.method public greylist-max-o setPersistentState(Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "persistentState"    # Landroid/os/PersistableBundle;

    .line 130
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mPersistentState:Landroid/os/PersistableBundle;

    .line 131
    return-void
.end method

.method public greylist-max-o setState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .line 126
    iput-object p1, p0, Landroid/app/servertransaction/PendingTransactionActions$StopInfo;->mState:Landroid/os/Bundle;

    .line 127
    return-void
.end method
