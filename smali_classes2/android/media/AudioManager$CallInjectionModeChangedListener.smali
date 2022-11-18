.class Landroid/media/AudioManager$CallInjectionModeChangedListener;
.super Ljava/lang/Object;
.source "AudioManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallInjectionModeChangedListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .line 8654
    iput-object p1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onModeChanged(I)V
    .locals 8
    .param p1, "mode"    # I

    .line 8657
    iget-object v0, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8658
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v1

    .line 8659
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 8660
    .local v1, "clientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$CallIRedirectionClientInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;

    .line 8661
    .local v3, "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    iget-object v4, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->trackOrRecord:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .line 8662
    .local v4, "trackOrRecord":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 8663
    iget v5, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-ne v5, v6, :cond_0

    if-eq p1, v7, :cond_0

    const/4 v5, 0x4

    if-eq p1, v5, :cond_0

    const/4 v5, 0x5

    if-ne p1, v5, :cond_1

    :cond_0
    iget v5, v3, Landroid/media/AudioManager$CallIRedirectionClientInfo;->redirectMode:I

    if-ne v5, v7, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x6

    if-eq p1, v5, :cond_3

    .line 8669
    :cond_1
    instance-of v5, v4, Landroid/media/AudioTrack;

    if-eqz v5, :cond_2

    .line 8670
    move-object v5, v4

    check-cast v5, Landroid/media/AudioTrack;

    .line 8671
    .local v5, "track":Landroid/media/AudioTrack;
    invoke-virtual {v5}, Landroid/media/AudioTrack;->release()V

    .line 8672
    .end local v5    # "track":Landroid/media/AudioTrack;
    goto :goto_1

    .line 8673
    :cond_2
    move-object v5, v4

    check-cast v5, Landroid/media/AudioRecord;

    .line 8674
    .local v5, "record":Landroid/media/AudioRecord;
    invoke-virtual {v5}, Landroid/media/AudioRecord;->release()V

    .line 8676
    .end local v5    # "record":Landroid/media/AudioRecord;
    :goto_1
    iget-object v5, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v5}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8679
    .end local v3    # "info":Landroid/media/AudioManager$CallIRedirectionClientInfo;
    .end local v4    # "trackOrRecord":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 8680
    :cond_4
    iget-object v2, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmCallIRedirectionClients(Landroid/media/AudioManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_6

    .line 8682
    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 8683
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3}, Landroid/media/AudioManager;->-$$Nest$fgetmCallRedirectionModeListener(Landroid/media/AudioManager;)Landroid/media/AudioManager$CallInjectionModeChangedListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->removeOnModeChangedListener(Landroid/media/AudioManager$OnModeChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8688
    :cond_5
    :try_start_2
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 8689
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    :goto_2
    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8690
    goto :goto_4

    .line 8688
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 8685
    :catch_0
    move-exception v3

    .line 8686
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "AudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeOnModeChangedListener failed with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8688
    .end local v3    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v3, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 8689
    iget-object v3, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    goto :goto_2

    .line 8688
    :goto_3
    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallRedirectionModeListener(Landroid/media/AudioManager;Landroid/media/AudioManager$CallInjectionModeChangedListener;)V

    .line 8689
    iget-object v4, p0, Landroid/media/AudioManager$CallInjectionModeChangedListener;->this$0:Landroid/media/AudioManager;

    invoke-static {v4, v2}, Landroid/media/AudioManager;->-$$Nest$fputmCallIRedirectionClients(Landroid/media/AudioManager;Ljava/util/ArrayList;)V

    .line 8690
    nop

    .end local p0    # "this":Landroid/media/AudioManager$CallInjectionModeChangedListener;
    .end local p1    # "mode":I
    throw v3

    .line 8692
    .end local v1    # "clientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioManager$CallIRedirectionClientInfo;>;"
    .restart local p0    # "this":Landroid/media/AudioManager$CallInjectionModeChangedListener;
    .restart local p1    # "mode":I
    :cond_6
    :goto_4
    monitor-exit v0

    .line 8693
    return-void

    .line 8692
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
