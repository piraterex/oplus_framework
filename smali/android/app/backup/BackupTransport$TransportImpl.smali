.class Landroid/app/backup/BackupTransport$TransportImpl;
.super Lcom/android/internal/backup/IBackupTransport$Stub;
.source "BackupTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/BackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TransportImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/backup/BackupTransport;


# direct methods
.method constructor blacklist <init>(Landroid/app/backup/BackupTransport;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/backup/BackupTransport;

    .line 664
    iput-object p1, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-direct {p0}, Lcom/android/internal/backup/IBackupTransport$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist abortFullRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 949
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->abortFullRestore()I

    move-result v0

    .line 950
    .local v0, "result":I
    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    .end local v0    # "result":I
    goto :goto_0

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 954
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist cancelFullBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 895
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->cancelFullBackup()V

    .line 896
    invoke-interface {p1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationComplete()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 899
    goto :goto_0

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 900
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist checkFullBackupSize(JLcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "size"    # J
    .param p3, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 874
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->checkFullBackupSize(J)I

    move-result v0

    .line 875
    .local v0, "result":I
    invoke-interface {p3, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    .end local v0    # "result":I
    goto :goto_0

    .line 876
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p3, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 879
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist clearBackupData(Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 765
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 766
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    .end local v0    # "result":I
    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 770
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist configurationIntent(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v0

    .line 681
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    nop

    .end local v0    # "result":Landroid/content/Intent;
    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 685
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist currentDestinationString(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 691
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 696
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist dataManagementIntent(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 702
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/content/Intent;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v0

    .line 703
    .local v0, "result":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    nop

    .end local v0    # "result":Landroid/content/Intent;
    goto :goto_0

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 707
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist dataManagementIntentLabel(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/CharSequence;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 714
    .local v0, "result":Ljava/lang/CharSequence;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    nop

    .end local v0    # "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 718
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist finishBackup(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishBackup()I

    move-result v0

    .line 776
    .local v0, "result":I
    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v0    # "result":I
    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 780
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist finishRestore(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 841
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->finishRestore()V

    .line 842
    invoke-interface {p1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationComplete()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 846
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist getAvailableRestoreSets(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/util/List<",
            "Landroid/app/backup/RestoreSet;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/util/List<Landroid/app/backup/RestoreSet;>;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v0

    .line 787
    .local v0, "result":[Landroid/app/backup/RestoreSet;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    nop

    .end local v0    # "result":[Landroid/app/backup/RestoreSet;
    goto :goto_0

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 791
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist getBackupQuota(Ljava/lang/String;ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isFullBackup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    .local p3, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v0

    .line 919
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    nop

    .end local v0    # "result":J
    goto :goto_0

    .line 920
    :catch_0
    move-exception v0

    .line 921
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 923
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist getCurrentRestoreSet(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 797
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getCurrentRestoreSet()J

    move-result-wide v0

    .line 798
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    nop

    .end local v0    # "result":J
    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 802
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 939
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    .line 940
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    .end local v0    # "result":I
    goto :goto_0

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 944
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist getRestoreData(Landroid/os/ParcelFileDescriptor;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    .line 831
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v0    # "result":I
    goto :goto_0

    .line 832
    :catch_0
    move-exception v0

    .line 833
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 835
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist getTransportFlags(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 928
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->getTransportFlags()I

    move-result v0

    .line 929
    .local v0, "result":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    nop

    .end local v0    # "result":I
    goto :goto_0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 933
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist initializeDevice(Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 743
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->initializeDevice()I

    move-result v0

    .line 744
    .local v0, "result":I
    invoke-interface {p1, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .end local v0    # "result":I
    goto :goto_0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p1, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 748
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist isAppEligibleForBackup(Landroid/content/pm/PackageInfo;ZLcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "isFullBackup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Z",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 906
    .local p3, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2}, Landroid/app/backup/BackupTransport;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    .line 908
    .local v0, "result":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    nop

    .end local v0    # "result":Z
    goto :goto_0

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 912
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist name(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->name()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 674
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist nextRestorePackage(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/app/backup/RestoreDescription;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 819
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Landroid/app/backup/RestoreDescription;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v0

    .line 820
    .local v0, "result":Landroid/app/backup/RestoreDescription;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 823
    nop

    .end local v0    # "result":Landroid/app/backup/RestoreDescription;
    goto :goto_0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 824
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    .line 755
    .local v0, "result":I
    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v0    # "result":I
    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 759
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;ILcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v0

    .line 864
    .local v0, "result":I
    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v0    # "result":I
    goto :goto_0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 868
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist requestBackupTime(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestBackupTime()J

    move-result-wide v0

    .line 734
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    nop

    .end local v0    # "result":J
    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 738
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist requestFullBackupTime(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->requestFullBackupTime()J

    move-result-wide v0

    .line 853
    .local v0, "result":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    nop

    .end local v0    # "result":J
    goto :goto_0

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 857
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist sendBackupData(ILcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "numBytes"    # I
    .param p2, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 885
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1}, Landroid/app/backup/BackupTransport;->sendBackupData(I)I

    move-result v0

    .line 886
    .local v0, "result":I
    invoke-interface {p2, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v0    # "result":I
    goto :goto_0

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p2, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 890
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist startRestore(J[Landroid/content/pm/PackageInfo;Lcom/android/internal/backup/ITransportStatusCallback;)V
    .locals 2
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;
    .param p4, "callback"    # Lcom/android/internal/backup/ITransportStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v0

    .line 809
    .local v0, "result":I
    invoke-interface {p4, v0}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    .end local v0    # "result":I
    goto :goto_0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v1, -0x3e8

    invoke-interface {p4, v1}, Lcom/android/internal/backup/ITransportStatusCallback;->onOperationCompleteWithStatus(I)V

    .line 813
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method public blacklist transportDirName(Lcom/android/internal/infra/AndroidFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 723
    .local p1, "resultFuture":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/backup/BackupTransport$TransportImpl;->this$0:Landroid/app/backup/BackupTransport;

    invoke-virtual {v0}, Landroid/app/backup/BackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    nop

    .end local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/internal/infra/AndroidFuture;->cancel(Z)Z

    .line 728
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method
