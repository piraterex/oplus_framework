.class Landroid/app/SharedPreferencesImpl$2;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SharedPreferencesImpl;

.field final synthetic blacklist val$isFromSyncCommit:Z

.field final synthetic blacklist val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

.field final synthetic blacklist val$postWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;

    .line 668
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    iput-boolean p3, p0, Landroid/app/SharedPreferencesImpl$2;->val$isFromSyncCommit:Z

    iput-object p4, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    .line 671
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmWritingToDiskLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 672
    :try_start_0
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    iget-boolean v3, p0, Landroid/app/SharedPreferencesImpl$2;->val$isFromSyncCommit:Z

    invoke-static {v1, v2, v3}, Landroid/app/SharedPreferencesImpl;->-$$Nest$mwriteToFile(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    .line 673
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 674
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 675
    :try_start_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V

    .line 676
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 677
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 678
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 680
    :cond_0
    return-void

    .line 676
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 673
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
