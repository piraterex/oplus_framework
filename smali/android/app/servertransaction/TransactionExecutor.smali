.class public Landroid/app/servertransaction/TransactionExecutor;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"


# static fields
.field private static final greylist-max-o DEBUG_RESOLVER:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TransactionExecutor"


# instance fields
.field private greylist-max-o mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

.field private greylist-max-o mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

.field private greylist-max-o mTransactionHandler:Landroid/app/ClientTransactionHandler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/ClientTransactionHandler;)V
    .locals 1
    .param p1, "clientTransactionHandler"    # Landroid/app/ClientTransactionHandler;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    .line 55
    new-instance v0, Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-direct {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    .line 59
    iput-object p1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    .line 60
    return-void
.end method

.method private blacklist cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V
    .locals 2
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finish"    # I
    .param p3, "excludeLastState"    # Z
    .param p4, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 193
    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    .line 200
    .local v0, "start":I
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    move-result-object v1

    .line 201
    .local v1, "path":Landroid/util/IntArray;
    invoke-direct {p0, p1, v1, p4}, Landroid/app/servertransaction/TransactionExecutor;->performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;Landroid/app/servertransaction/ClientTransaction;)V

    .line 202
    return-void
.end method

.method private greylist-max-o executeLifecycleState(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 153
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v0

    .line 154
    .local v0, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    if-nez v0, :cond_0

    .line 156
    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 160
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v2, v1}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v2

    .line 167
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-nez v2, :cond_1

    .line 169
    return-void

    .line 173
    :cond_1
    invoke-virtual {v0}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    .line 176
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/servertransaction/ActivityLifecycleItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 177
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v0, v3, v1, v4}, Landroid/app/servertransaction/ActivityLifecycleItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 178
    return-void
.end method

.method private blacklist performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;Landroid/app/servertransaction/ClientTransaction;)V
    .locals 13
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "path"    # Landroid/util/IntArray;
    .param p3, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 207
    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v10

    .line 208
    .local v10, "size":I
    const/4 v1, 0x0

    move v11, v1

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_0

    .line 209
    invoke-virtual {p2, v11}, Landroid/util/IntArray;->get(I)I

    move-result v12

    .line 215
    .local v12, "state":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v12, :pswitch_data_0

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected lifecycle state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :pswitch_0
    iget-object v2, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v2, p1, v1}, Landroid/app/ClientTransactionHandler;->performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    .line 245
    goto :goto_1

    .line 239
    :pswitch_1
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "performLifecycleSequence. cycling to:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, v10, -0x1

    .line 241
    invoke-virtual {p2, v6}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZIZLjava/lang/String;)V

    .line 242
    goto :goto_1

    .line 234
    :pswitch_2
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const/4 v5, 0x0

    const-string v6, "LIFECYCLER_STOP_ACTIVITY"

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/ClientTransactionHandler;->handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V

    .line 237
    goto :goto_1

    .line 229
    :pswitch_3
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const-string v7, "LIFECYCLER_PAUSE_ACTIVITY"

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZILandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    .line 232
    goto :goto_1

    .line 225
    :pswitch_4
    iget-object v2, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-boolean v3, v8, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    const-string v4, "LIFECYCLER_RESUME_ACTIVITY"

    invoke-virtual {v2, p1, v1, v3, v4}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    .line 227
    goto :goto_1

    .line 221
    :pswitch_5
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v1, p1, v3, v2}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions;)V

    .line 223
    goto :goto_1

    .line 217
    :pswitch_6
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v1, p1, v3, v2}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/content/Intent;)Landroid/app/Activity;

    .line 219
    nop

    .line 208
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 250
    .end local v11    # "i":I
    .end local v12    # "state":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .param p1, "r"    # Landroid/app/ActivityThread$ActivityClientRecord;
    .param p2, "finish"    # I
    .param p3, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    .line 184
    return-void
.end method

.method public greylist-max-o execute(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 5
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 72
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 73
    .local v0, "token":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 74
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    .line 75
    invoke-virtual {v1}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v1

    .line 76
    .local v1, "activitiesToBeDestroyed":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/servertransaction/ClientTransactionItem;

    .line 77
    .local v2, "destroyItem":Landroid/app/servertransaction/ClientTransactionItem;
    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v3

    if-ne v3, v2, :cond_0

    .line 81
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v3, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v3

    if-nez v3, :cond_1

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->tId(Landroid/app/servertransaction/ClientTransaction;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Skip pre-destroyed transaction:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    .line 87
    invoke-static {p1, v4}, Landroid/app/servertransaction/TransactionExecutorHelper;->transactionToString(Landroid/app/servertransaction/ClientTransaction;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    const-string v4, "TransactionExecutor"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 95
    .end local v1    # "activitiesToBeDestroyed":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;>;"
    .end local v2    # "destroyItem":Landroid/app/servertransaction/ClientTransactionItem;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeCallbacks(Landroid/app/servertransaction/ClientTransaction;)V

    .line 97
    invoke-direct {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeLifecycleState(Landroid/app/servertransaction/ClientTransaction;)V

    .line 98
    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v1}, Landroid/app/servertransaction/PendingTransactionActions;->clear()V

    .line 100
    return-void
.end method

.method public greylist-max-o executeCallbacks(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 14
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;

    .line 105
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 106
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/app/servertransaction/ClientTransactionItem;>;"
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 113
    .local v1, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v2, v1}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v2

    .line 118
    .local v2, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v3

    .line 119
    .local v3, "finalStateRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    const/4 v4, -0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v5

    goto :goto_0

    .line 120
    :cond_1
    move v5, v4

    :goto_0
    nop

    .line 122
    .local v5, "finalState":I
    invoke-static {p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->lastCallbackRequestingState(Landroid/app/servertransaction/ClientTransaction;)I

    move-result v6

    .line 124
    .local v6, "lastCallbackRequestingState":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 125
    .local v7, "size":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_6

    .line 126
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/servertransaction/ClientTransactionItem;

    .line 128
    .local v9, "item":Landroid/app/servertransaction/ClientTransactionItem;
    invoke-virtual {v9}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v10

    .line 129
    .local v10, "postExecutionState":I
    iget-object v11, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    .line 130
    invoke-virtual {v9}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v12

    .line 129
    invoke-virtual {v11, v2, v12}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I

    move-result v11

    .line 131
    .local v11, "closestPreExecutionState":I
    if-eq v11, v4, :cond_2

    .line 132
    invoke-virtual {p0, v2, v11, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/ClientTransaction;)V

    .line 135
    :cond_2
    iget-object v12, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v13, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v9, v12, v1, v13}, Landroid/app/servertransaction/ClientTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 136
    iget-object v12, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v13, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v9, v12, v1, v13}, Landroid/app/servertransaction/ClientTransactionItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 137
    if-nez v2, :cond_3

    .line 139
    iget-object v12, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v12, v1}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v2

    .line 142
    :cond_3
    if-eq v10, v4, :cond_5

    if-eqz v2, :cond_5

    .line 144
    if-ne v8, v6, :cond_4

    if-ne v5, v10, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    .line 146
    .local v12, "shouldExcludeLastTransition":Z
    :goto_2
    invoke-direct {p0, v2, v10, v12, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    .line 125
    .end local v9    # "item":Landroid/app/servertransaction/ClientTransactionItem;
    .end local v10    # "postExecutionState":I
    .end local v11    # "closestPreExecutionState":I
    .end local v12    # "shouldExcludeLastTransition":Z
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 149
    .end local v8    # "i":I
    :cond_6
    return-void

    .line 108
    .end local v1    # "token":Landroid/os/IBinder;
    .end local v2    # "r":Landroid/app/ActivityThread$ActivityClientRecord;
    .end local v3    # "finalStateRequest":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5    # "finalState":I
    .end local v6    # "lastCallbackRequestingState":I
    .end local v7    # "size":I
    :cond_7
    :goto_3
    return-void
.end method
