.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field volatile greylist-max-o mAppOpsManager:Landroid/app/AppOpsManager;

.field volatile blacklist mInterface:Landroid/content/ContentInterface;

.field volatile greylist-max-o mReadOp:I

.field volatile greylist-max-o mWriteOp:I

.field final synthetic blacklist this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentProvider;)V
    .locals 1
    .param p1, "this$0"    # Landroid/content/ContentProvider;

    .line 225
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 228
    iput v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 229
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    return-void
.end method

.method private blacklist enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 691
    const-string v0, "App op not allowed"

    if-eqz p3, :cond_1

    const/16 v1, 0x77

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 692
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 697
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_2

    .line 702
    :goto_0
    return-void

    .line 699
    :cond_2
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .locals 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 707
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    .line 708
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 709
    return v0

    .line 713
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mReadOp:I

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 715
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v2

    iget v2, v2, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 716
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 715
    invoke-static {v1, v2, p1, v3}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 719
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .locals 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    .line 726
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 727
    return v0

    .line 731
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmWritePermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v2

    .line 732
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 733
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v2

    iget v2, v2, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 734
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 733
    invoke-static {v1, v2, p1, v3}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 737
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 378
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 380
    .local v0, "numOperations":I
    new-array v1, v0, [I

    .line 381
    .local v1, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_5

    .line 382
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 383
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 384
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v5

    aput v5, v1, v2

    .line 385
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v5, v4}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 386
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v4}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 388
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 389
    new-instance v5, Landroid/content/ContentProviderOperation;

    invoke-direct {v5, v3, v4}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V

    move-object v3, v5

    .line 390
    invoke-virtual {p3, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 392
    :cond_0
    move-object v5, p1

    .line 394
    .local v5, "accessAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "App op not allowed"

    if-eqz v6, :cond_2

    .line 395
    invoke-direct {p0, v5, v4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 397
    :cond_1
    new-instance v6, Landroid/content/OperationApplicationException;

    invoke-direct {v6, v8, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 400
    :cond_2
    :goto_1
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 401
    invoke-direct {p0, v5, v4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 403
    :cond_3
    new-instance v6, Landroid/content/OperationApplicationException;

    invoke-direct {v6, v8, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 381
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "accessAttributionSource":Landroid/content/AttributionSource;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 407
    .end local v2    # "i":I
    :cond_5
    const-wide/32 v2, 0x100000

    const-string v4, "applyBatch: "

    invoke-static {v2, v3, v4, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v4

    .line 411
    .local v4, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v5, p2, p3}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 413
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_7

    .line 414
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_7

    .line 415
    aget v7, v1, v6

    const/4 v8, -0x2

    if-eq v7, v8, :cond_6

    .line 417
    new-instance v7, Landroid/content/ContentProviderResult;

    aget-object v8, v5, v6

    aget v9, v1, v6

    invoke-direct {v7, v8, v9}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v7, v5, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 421
    .end local v6    # "i":I
    :cond_7
    nop

    .line 425
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v6, v4}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 426
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 421
    return-object v5

    .line 425
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 422
    :catch_0
    move-exception v5

    .line 423
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local v0    # "numOperations":I
    .end local v1    # "userIds":[I
    .end local v4    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "numOperations":I
    .restart local v1    # "userIds":[I
    .restart local v4    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_4
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v6, v4}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 426
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 427
    throw v5
.end method

.method public blacklist bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .line 355
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 356
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 357
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x0

    return v0

    .line 361
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "bulkInsert: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 365
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 370
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 365
    return v3

    .line 369
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 366
    :catch_0
    move-exception v3

    .line 367
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "initialValues":[Landroid/content/ContentValues;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "initialValues":[Landroid/content/ContentValues;
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 370
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 371
    throw v3
.end method

.method public blacklist call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 519
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 520
    const/4 v0, 0x1

    invoke-static {p5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 521
    const-wide/32 v0, 0x100000

    const-string v2, "call: "

    invoke-static {v0, v1, v2, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 525
    .local v2, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v2}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 530
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 525
    return-object v3

    .line 529
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 526
    :catch_0
    move-exception v3

    .line 527
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v2    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "method":Ljava/lang/String;
    .end local p4    # "arg":Ljava/lang/String;
    .end local p5    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "method":Ljava/lang/String;
    .restart local p4    # "arg":Ljava/lang/String;
    .restart local p5    # "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v2}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 530
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 531
    throw v3
.end method

.method public blacklist canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 578
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 579
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 580
    .local v0, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 581
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    const/4 v1, 0x0

    return-object v1

    .line 585
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const-string v4, "canonicalize: "

    invoke-static {v2, v3, v4, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 589
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p2}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 594
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 589
    return-object v4

    .line 593
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 590
    :catch_0
    move-exception v4

    .line 591
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_0
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 594
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 595
    throw v4
.end method

.method public blacklist canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 601
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 603
    .local v0, "result":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v1, "result"

    .line 604
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 603
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    goto :goto_0

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 609
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 610
    return-void
.end method

.method public blacklist checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 672
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 673
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 674
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "checkUriPermission: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 678
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3, p4}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 683
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 678
    return v3

    .line 682
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 679
    :catch_0
    move-exception v3

    .line 680
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 682
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "uid":I
    .restart local p4    # "modeFlags":I
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 683
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 684
    throw v3
.end method

.method public greylist-max-o createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .line 573
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 433
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 434
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 435
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const/4 v0, 0x0

    return v0

    .line 439
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "delete: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 443
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 448
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 443
    return v3

    .line 447
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 444
    :catch_0
    move-exception v3

    .line 445
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 448
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 449
    throw v3
.end method

.method greylist-max-o getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public greylist-max-o getProviderName()Ljava/lang/String;
    .locals 1

    .line 237
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 537
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 538
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 539
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "getStreamTypes: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 541
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 541
    return-object v0

    .line 545
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 545
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 546
    throw v0
.end method

.method public greylist-max-o getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 299
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 300
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "getType: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 303
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 303
    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 308
    throw v0
.end method

.method public blacklist getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 313
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 315
    .local v0, "result":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v1, "result"

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider$Transport;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    goto :goto_0

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 320
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 321
    return-void
.end method

.method public blacklist insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 326
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 327
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 328
    .local v0, "userId":I
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 329
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 334
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 334
    return-object v2

    .line 336
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 337
    throw v2

    .line 339
    .end local v1    # "original":Landroid/content/AttributionSource;
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const-string v4, "insert: "

    invoke-static {v2, v3, v4, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 343
    .restart local v1    # "original":Landroid/content/AttributionSource;
    :try_start_1
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p2, p3, p4}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 347
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 348
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 343
    return-object v4

    .line 347
    :catchall_1
    move-exception v4

    goto :goto_0

    .line 344
    :catch_0
    move-exception v4

    .line 345
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "initialValues":Landroid/content/ContentValues;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 347
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "initialValues":Landroid/content/ContentValues;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 348
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 349
    throw v4
.end method

.method public blacklist openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 500
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 501
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 502
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "openAssetFile: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 506
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 507
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 506
    invoke-interface {v3, p2, p3, v4}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 506
    return-object v3

    .line 511
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 508
    :catch_0
    move-exception v3

    .line 509
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mode":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 511
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mode":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 513
    throw v3
.end method

.method public blacklist openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 479
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 480
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "openFile: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 485
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 486
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 485
    invoke-interface {v3, p2, p3, v4}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 491
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 485
    return-object v3

    .line 490
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 487
    :catch_0
    move-exception v3

    .line 488
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mode":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mode":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 491
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 492
    throw v3
.end method

.method public blacklist openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 553
    const/4 v0, 0x1

    invoke-static {p4, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 554
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 555
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 556
    const-string/jumbo v0, "r"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "openTypedAssetFile: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 561
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 562
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 561
    invoke-interface {v3, p2, p3, p4, v4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 567
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 561
    return-object v3

    .line 566
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 563
    :catch_0
    move-exception v3

    .line 564
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "opts":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "opts":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 567
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    throw v3
.end method

.method public blacklist query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 244
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 245
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 255
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v1

    .line 263
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 266
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 268
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v3

    .line 266
    invoke-interface {v2, p2, p3, p4, v3}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 273
    nop

    .line 274
    if-nez v2, :cond_1

    .line 275
    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_1
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v3

    .line 272
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 273
    throw v0

    .line 281
    .end local v1    # "original":Landroid/content/AttributionSource;
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "query: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 285
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_2
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 287
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 285
    invoke-interface {v3, p2, p3, p4, v4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 292
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 285
    return-object v3

    .line 291
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 288
    :catch_1
    move-exception v3

    .line 289
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 291
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_1
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 292
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 293
    throw v3
.end method

.method public blacklist refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 652
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 653
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const/4 v0, 0x0

    return v0

    .line 657
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "refresh: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 661
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 662
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 661
    invoke-interface {v3, p2, p3, v4}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 665
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 661
    return v3

    .line 664
    :catchall_0
    move-exception v3

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 665
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    throw v3
.end method

.method public blacklist uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 6
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 614
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 615
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 616
    .local v0, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 617
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    const/4 v1, 0x0

    return-object v1

    .line 621
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const-string/jumbo v4, "uncanonicalize: "

    invoke-static {v2, v3, v4, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 625
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p2}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 630
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 625
    return-object v4

    .line 629
    :catchall_0
    move-exception v4

    goto :goto_0

    .line 626
    :catch_0
    move-exception v4

    .line 627
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 629
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_0
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 630
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 631
    throw v4
.end method

.method public blacklist uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .locals 4
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 637
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 639
    .local v0, "result":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v1, "result"

    .line 640
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 639
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    goto :goto_0

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 645
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 646
    return-void
.end method

.method public blacklist update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .locals 5
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 455
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 456
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 457
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const/4 v0, 0x0

    return v0

    .line 461
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "update: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 465
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3, p4}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 470
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 465
    return v3

    .line 469
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 466
    :catch_0
    move-exception v3

    .line 467
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "values":Landroid/content/ContentValues;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "values":Landroid/content/ContentValues;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_0
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 470
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    throw v3
.end method
