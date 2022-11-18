.class final Landroid/app/AlarmManager$ListenerWrapper;
.super Landroid/app/IAlarmListener$Stub;
.source "AlarmManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ListenerWrapper"
.end annotation


# instance fields
.field greylist-max-o mCompletion:Landroid/app/IAlarmCompleteListener;

.field blacklist mExecutor:Ljava/util/concurrent/Executor;

.field final greylist-max-o mListener:Landroid/app/AlarmManager$OnAlarmListener;

.field final synthetic blacklist this$0:Landroid/app/AlarmManager;


# direct methods
.method public constructor blacklist <init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/AlarmManager;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;

    .line 333
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    .line 334
    iput-object p2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 335
    return-void
.end method


# virtual methods
.method public greylist-max-o cancel()V
    .locals 2

    .line 343
    :try_start_0
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->this$0:Landroid/app/AlarmManager;

    invoke-static {v0}, Landroid/app/AlarmManager;->-$$Nest$fgetmService(Landroid/app/AlarmManager;)Landroid/app/IAlarmManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Landroid/app/IAlarmManager;->remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    nop

    .line 347
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 1
    .param p1, "alarmManager"    # Landroid/app/IAlarmCompleteListener;

    .line 351
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    .line 353
    iget-object v0, p0, Landroid/app/AlarmManager$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method

.method public whitelist test-api run()V
    .locals 4

    .line 360
    const-string v0, "Unable to report completion to Alarm Manager!"

    const-string v1, "AlarmManager"

    :try_start_0
    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-interface {v2}, Landroid/app/AlarmManager$OnAlarmListener;->onAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    :try_start_1
    iget-object v2, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v2, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 369
    goto :goto_0

    .line 367
    :catch_0
    move-exception v2

    .line 368
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 371
    :goto_0
    return-void

    .line 365
    :catchall_0
    move-exception v2

    .line 366
    :try_start_2
    iget-object v3, p0, Landroid/app/AlarmManager$ListenerWrapper;->mCompletion:Landroid/app/IAlarmCompleteListener;

    invoke-interface {v3, p0}, Landroid/app/IAlarmCompleteListener;->alarmComplete(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 369
    goto :goto_1

    .line 367
    :catch_1
    move-exception v3

    .line 368
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    throw v2
.end method

.method blacklist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 338
    iput-object p1, p0, Landroid/app/AlarmManager$ListenerWrapper;->mExecutor:Ljava/util/concurrent/Executor;

    .line 339
    return-void
.end method
