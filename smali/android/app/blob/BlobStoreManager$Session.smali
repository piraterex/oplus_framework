.class public Landroid/app/blob/BlobStoreManager$Session;
.super Ljava/lang/Object;
.source "BlobStoreManager.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/blob/BlobStoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field private final blacklist mSession:Landroid/app/blob/IBlobStoreSession;


# direct methods
.method private constructor blacklist <init>(Landroid/app/blob/IBlobStoreSession;)V
    .locals 0
    .param p1, "session"    # Landroid/app/blob/IBlobStoreSession;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    .line 647
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/blob/IBlobStoreSession;Landroid/app/blob/BlobStoreManager$Session-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/blob/BlobStoreManager$Session;-><init>(Landroid/app/blob/IBlobStoreSession;)V

    return-void
.end method


# virtual methods
.method public whitelist abandon()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->abandon()V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    nop

    .line 767
    return-void

    .line 764
    :catch_0
    move-exception v0

    .line 765
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 761
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 763
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowPackageAccess(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 790
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2}, Landroid/app/blob/IBlobStoreSession;->allowPackageAccess(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    nop

    .line 798
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 791
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 792
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 793
    const-class v1, Landroid/os/LimitExceededException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 794
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowPublicAccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->allowPublicAccess()V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    nop

    .line 894
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 888
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 889
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 890
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist allowSameSignatureAccess()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->allowSameSignatureAccess()V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    nop

    .line 846
    return-void

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 840
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 841
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 842
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 741
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->close()V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    nop

    .line 748
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 742
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 744
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist commit(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    .local p2, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    new-instance v1, Landroid/app/blob/BlobStoreManager$Session$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/blob/BlobStoreManager$Session$1;-><init>(Landroid/app/blob/BlobStoreManager$Session;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Landroid/app/blob/IBlobStoreSession;->commit(Landroid/app/blob/IBlobCommitCallback;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    nop

    .line 957
    return-void

    .line 954
    :catch_0
    move-exception v0

    .line 955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 951
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 953
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 723
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->getSize()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 724
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 725
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 726
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 816
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2}, Landroid/app/blob/IBlobStoreSession;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 817
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 818
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 819
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isPublicAccessAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->isPublicAccessAllowed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 907
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 908
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 909
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist isSameSignatureAccessAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->isSameSignatureAccessAllowed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 860
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 861
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 862
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openRead()Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0}, Landroid/app/blob/IBlobStoreSession;->openRead()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 705
    :catch_0
    move-exception v0

    .line 706
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 702
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 703
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 704
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist openWrite(JJ)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "offsetBytes"    # J
    .param p3, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 677
    :try_start_0
    iget-object v0, p0, Landroid/app/blob/BlobStoreManager$Session;->mSession:Landroid/app/blob/IBlobStoreSession;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/blob/IBlobStoreSession;->openWrite(JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 678
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v0, p1, p2}, Landroid/os/ParcelFileDescriptor;->seekTo(J)J
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    return-object v0

    .line 683
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 680
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 681
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 682
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
