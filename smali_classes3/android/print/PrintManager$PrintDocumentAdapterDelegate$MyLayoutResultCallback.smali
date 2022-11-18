.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
.super Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyLayoutResultCallback"
.end annotation


# instance fields
.field private greylist-max-o mCallback:Landroid/print/ILayoutResultCallback;

.field private final greylist-max-o mSequence:I

.field final synthetic blacklist this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V
    .locals 0
    .param p2, "callback"    # Landroid/print/ILayoutResultCallback;
    .param p3, "sequence"    # I

    .line 1143
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;-><init>()V

    .line 1144
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1145
    iput p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    .line 1146
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .locals 3

    .line 1228
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1229
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1230
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fputmPendingCallback(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)V

    .line 1231
    monitor-exit v0

    .line 1232
    return-void

    .line 1231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onLayoutCancelled()V
    .locals 4

    .line 1205
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1206
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1207
    .local v1, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1210
    if-nez v1, :cond_0

    .line 1211
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void

    .line 1218
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v1, v0}, Landroid/print/ILayoutResultCallback;->onLayoutCanceled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1222
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1223
    goto :goto_1

    .line 1222
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1219
    :catch_0
    move-exception v0

    .line 1220
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1222
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1224
    :goto_1
    return-void

    .line 1222
    :goto_2
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1223
    throw v0

    .line 1207
    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public whitelist onLayoutFailed(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 1181
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1182
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1183
    .local v1, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1186
    if-nez v1, :cond_0

    .line 1187
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    return-void

    .line 1194
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/ILayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1199
    goto :goto_1

    .line 1198
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1198
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1200
    :goto_1
    return-void

    .line 1198
    :goto_2
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1199
    throw v0

    .line 1183
    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public whitelist onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .locals 4
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;
    .param p2, "changed"    # Z

    .line 1151
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1152
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    .line 1153
    .local v1, "callback":Landroid/print/ILayoutResultCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1156
    if-nez v1, :cond_0

    .line 1157
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    return-void

    .line 1164
    :cond_0
    if-eqz p1, :cond_1

    .line 1169
    :try_start_1
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v1, p1, p2, v0}, Landroid/print/ILayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1172
    goto :goto_0

    .line 1174
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "PrintManager"

    const-string v3, "Error calling onLayoutFinished"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1174
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1175
    nop

    .line 1176
    return-void

    .line 1165
    :cond_1
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "document info cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    .end local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
    .end local p1    # "info":Landroid/print/PrintDocumentInfo;
    .end local p2    # "changed":Z
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1174
    .restart local v1    # "callback":Landroid/print/ILayoutResultCallback;
    .restart local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
    .restart local p1    # "info":Landroid/print/PrintDocumentInfo;
    .restart local p2    # "changed":Z
    :goto_1
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    .line 1175
    throw v0

    .line 1153
    .end local v1    # "callback":Landroid/print/ILayoutResultCallback;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
