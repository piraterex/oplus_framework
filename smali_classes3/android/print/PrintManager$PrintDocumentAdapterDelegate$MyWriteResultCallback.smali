.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
.super Landroid/print/PrintDocumentAdapter$WriteResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyWriteResultCallback"
.end annotation


# instance fields
.field private greylist-max-o mCallback:Landroid/print/IWriteResultCallback;

.field private greylist-max-o mFd:Landroid/os/ParcelFileDescriptor;

.field private final greylist-max-o mSequence:I

.field final synthetic blacklist this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor blacklist <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/IWriteResultCallback;Landroid/os/ParcelFileDescriptor;I)V
    .locals 0
    .param p2, "callback"    # Landroid/print/IWriteResultCallback;
    .param p3, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "sequence"    # I

    .line 1242
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;-><init>()V

    .line 1243
    iput-object p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 1244
    iput p4, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    .line 1245
    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1246
    return-void
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .locals 3

    .line 1331
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1332
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1333
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1334
    iput-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mFd:Landroid/os/ParcelFileDescriptor;

    .line 1335
    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2, v1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fputmPendingCallback(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)V

    .line 1336
    monitor-exit v0

    .line 1337
    return-void

    .line 1336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist onWriteCancelled()V
    .locals 4

    .line 1308
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1309
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1310
    .local v1, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1313
    if-nez v1, :cond_0

    .line 1314
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    return-void

    .line 1321
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, v0}, Landroid/print/IWriteResultCallback;->onWriteCanceled(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1325
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1326
    goto :goto_1

    .line 1325
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteCanceled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1325
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1327
    :goto_1
    return-void

    .line 1325
    :goto_2
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1326
    throw v0

    .line 1310
    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public whitelist onWriteFailed(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 1284
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1285
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1286
    .local v1, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1289
    if-nez v1, :cond_0

    .line 1290
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    return-void

    .line 1297
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/IWriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1301
    nop

    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1302
    goto :goto_1

    .line 1301
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFailed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1301
    nop

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_0

    .line 1303
    :goto_1
    return-void

    .line 1301
    :goto_2
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1302
    throw v0

    .line 1286
    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public whitelist onWriteFinished([Landroid/print/PageRange;)V
    .locals 4
    .param p1, "pages"    # [Landroid/print/PageRange;

    .line 1251
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-$$Nest$fgetmLock(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1252
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mCallback:Landroid/print/IWriteResultCallback;

    .line 1253
    .local v1, "callback":Landroid/print/IWriteResultCallback;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1256
    if-nez v1, :cond_0

    .line 1257
    const-string v0, "PrintManager"

    const-string v2, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return-void

    .line 1264
    :cond_0
    if-eqz p1, :cond_2

    .line 1267
    :try_start_1
    array-length v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1272
    :try_start_2
    iget v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->mSequence:I

    invoke-interface {v1, p1, v0}, Landroid/print/IWriteResultCallback;->onWriteFinished([Landroid/print/PageRange;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1275
    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "PrintManager"

    const-string v3, "Error calling onWriteFinished"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1277
    .end local v0    # "re":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1278
    nop

    .line 1279
    return-void

    .line 1268
    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pages cannot be empty"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    .end local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .end local p1    # "pages":[Landroid/print/PageRange;
    throw v0

    .line 1277
    .restart local v1    # "callback":Landroid/print/IWriteResultCallback;
    .restart local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .restart local p1    # "pages":[Landroid/print/PageRange;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1265
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pages cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    .end local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .end local p1    # "pages":[Landroid/print/PageRange;
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1277
    .restart local v1    # "callback":Landroid/print/IWriteResultCallback;
    .restart local p0    # "this":Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;
    .restart local p1    # "pages":[Landroid/print/PageRange;
    :goto_1
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyWriteResultCallback;->destroy()V

    .line 1278
    throw v0

    .line 1253
    .end local v1    # "callback":Landroid/print/IWriteResultCallback;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
