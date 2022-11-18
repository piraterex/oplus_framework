.class Landroid/telephony/TelephonyScanManager$1;
.super Landroid/os/Handler;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyScanManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/TelephonyScanManager;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyScanManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 122
    iput-object p1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 1
    .param p0, "cb"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 140
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$1([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 2
    .param p0, "ci"    # [Landroid/telephony/CellInfo;
    .param p1, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onResults(Ljava/util/List;)V

    .line 176
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$2(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TelephonyScanManager"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onError(I)V

    .line 187
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$3(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 2
    .param p0, "callback"    # Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 198
    const-string v0, "TelephonyScanManager"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {p0}, Landroid/telephony/TelephonyScanManager$NetworkScanCallback;->onComplete()V

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .line 125
    const-string/jumbo v0, "message cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 128
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v2}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 130
    iget-object v2, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v2}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 134
    .local v2, "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    if-nez v2, :cond_0

    goto :goto_1

    .line 135
    :cond_0
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmExecutor(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 136
    .local v3, "e":Ljava/util/concurrent/Executor;
    invoke-static {v2}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmCallback(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .local v4, "cb":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    .line 139
    :cond_1
    :try_start_1
    new-instance v5, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    goto :goto_1

    .line 141
    :catch_0
    move-exception v5

    .line 129
    .end local v2    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .end local v3    # "e":Ljava/util/concurrent/Executor;
    .end local v4    # "cb":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 147
    monitor-exit v0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 152
    :cond_4
    iget-object v0, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v0}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v1}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    .line 154
    .local v1, "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 155
    if-eqz v1, :cond_6

    .line 160
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmCallback(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    move-result-object v0

    .line 161
    .local v0, "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    invoke-static {v1}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;->-$$Nest$fgetmExecutor(Landroid/telephony/TelephonyScanManager$NetworkScanInfo;)Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 163
    .local v2, "executor":Ljava/util/concurrent/Executor;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 209
    const-string v3, "TelephonyScanManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 197
    :pswitch_0
    :try_start_4
    new-instance v3, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 201
    iget-object v3, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v3}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 202
    :try_start_5
    iget-object v4, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v4}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 203
    monitor-exit v3

    .line 206
    goto :goto_3

    .line 203
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_6
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 204
    .restart local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .restart local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .restart local p1    # "message":Landroid/os/Message;
    :catch_1
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onComplete"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 183
    :pswitch_1
    :try_start_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 184
    .local v3, "errorCode":I
    new-instance v4, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda2;-><init>(ILandroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 188
    iget-object v4, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v4}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v4

    monitor-enter v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 189
    :try_start_8
    iget-object v5, p0, Landroid/telephony/TelephonyScanManager$1;->this$0:Landroid/telephony/TelephonyScanManager;

    invoke-static {v5}, Landroid/telephony/TelephonyScanManager;->-$$Nest$fgetmScanInfo(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 190
    monitor-exit v4

    .line 193
    .end local v3    # "errorCode":I
    goto :goto_3

    .line 190
    .restart local v3    # "errorCode":I
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .end local p1    # "message":Landroid/os/Message;
    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 191
    .end local v3    # "errorCode":I
    .restart local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .restart local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    .restart local v2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p0    # "this":Landroid/telephony/TelephonyScanManager$1;
    .restart local p1    # "message":Landroid/os/Message;
    :catch_2
    move-exception v3

    .line 192
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onError"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 167
    :pswitch_2
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 168
    .local v3, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "scanResult"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 169
    .local v4, "parcelables":[Landroid/os/Parcelable;
    array-length v5, v4

    new-array v5, v5, [Landroid/telephony/CellInfo;

    .line 170
    .local v5, "ci":[Landroid/telephony/CellInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_5

    .line 171
    aget-object v7, v4, v6

    check-cast v7, Landroid/telephony/CellInfo;

    aput-object v7, v5, v6

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 173
    .end local v6    # "i":I
    :cond_5
    new-instance v6, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v0}, Landroid/telephony/TelephonyScanManager$1$$ExternalSyntheticLambda1;-><init>([Landroid/telephony/CellInfo;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-interface {v2, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 179
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v4    # "parcelables":[Landroid/os/Parcelable;
    .end local v5    # "ci":[Landroid/telephony/CellInfo;
    goto :goto_3

    .line 177
    :catch_3
    move-exception v3

    .line 178
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "TelephonyScanManager"

    const-string v5, "Exception in networkscan callback onResults"

    invoke-static {v4, v5, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v3    # "e":Ljava/lang/Exception;
    nop

    .line 212
    :goto_3
    return-void

    .line 156
    .end local v0    # "callback":Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find NetworkScanInfo with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    .end local v1    # "nsi":Landroid/telephony/TelephonyScanManager$NetworkScanInfo;
    :catchall_3
    move-exception v1

    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
