.class public final Landroid/media/MediaCas$Session;
.super Ljava/lang/Object;
.source "MediaCas.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Session"
.end annotation


# instance fields
.field blacklist mIsClosed:Z

.field final greylist-max-o mSessionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/MediaCas;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCas;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/MediaCas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 477
    .local p2, "sessionId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iput-object p1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    .line 479
    return-void
.end method

.method private blacklist validateSessionInternalStates()V
    .locals 1

    .line 482
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 485
    iget-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    if-eqz v0, :cond_0

    .line 486
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 488
    :cond_0
    return-void

    .line 483
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 614
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 616
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    .line 617
    invoke-interface {v0, v1}, Landroid/hardware/cas/V1_0/ICas;->closeSession(Ljava/util/ArrayList;)I

    move-result v0

    .line 616
    invoke-static {v0}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaCas$Session;->mIsClosed:Z

    .line 619
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0, p0}, Landroid/media/MediaCas;->-$$Nest$mremoveSessionFromResourceMap(Landroid/media/MediaCas;Landroid/media/MediaCas$Session;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 623
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 498
    instance-of v0, p1, Landroid/media/MediaCas$Session;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Landroid/media/MediaCas$Session;

    iget-object v1, v1, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSessionId()[B
    .locals 2

    .line 602
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 603
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/media/MediaCas;->-$$Nest$mtoBytes(Landroid/media/MediaCas;Ljava/util/ArrayList;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist processEcm([B)V
    .locals 2
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 561
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/media/MediaCas$Session;->processEcm([BII)V

    .line 562
    return-void
.end method

.method public whitelist processEcm([BII)V
    .locals 3
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 539
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 542
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 543
    invoke-static {v2, p1, p2, p3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 542
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 546
    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 547
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist sendSessionEvent(II[B)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "arg"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 578
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 580
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasV11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 586
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICasV11(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_1/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    .line 587
    invoke-static {v2, p3}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/hardware/cas/V1_1/ICas;->sendSessionEvent(Ljava/util/ArrayList;IILjava/util/ArrayList;)I

    move-result v0

    .line 586
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    goto :goto_0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 591
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 581
    :cond_0
    const-string v0, "MediaCas"

    const-string v1, "Send Session Event isn\'t supported by cas@1.0 interface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance v0, Landroid/media/MediaCasException$UnsupportedCasException;

    const-string v1, "Send Session Event is not supported"

    invoke-direct {v0, v1}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPrivateData([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException;
        }
    .end annotation

    .line 515
    invoke-direct {p0}, Landroid/media/MediaCas$Session;->validateSessionInternalStates()V

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v0}, Landroid/media/MediaCas;->-$$Nest$fgetmICas(Landroid/media/MediaCas;)Landroid/hardware/cas/V1_0/ICas;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    const/4 v3, 0x0

    array-length v4, p1

    .line 519
    invoke-static {v2, p1, v3, v4}, Landroid/media/MediaCas;->-$$Nest$mtoByteArray(Landroid/media/MediaCas;[BII)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    .line 518
    invoke-static {v0}, Landroid/media/MediaCasException;->throwExceptionIfNeeded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Landroid/media/MediaCas$Session;->this$0:Landroid/media/MediaCas;

    invoke-static {v1}, Landroid/media/MediaCas;->-$$Nest$mcleanupAndRethrowIllegalState(Landroid/media/MediaCas;)V

    .line 523
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
