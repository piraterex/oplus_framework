.class public abstract Landroid/service/notification/NotificationAssistantService;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationAssistantService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/NotificationAssistantService$MyHandler;,
        Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;,
        Landroid/service/notification/NotificationAssistantService$Source;
    }
.end annotation


# static fields
.field public static final whitelist FEEDBACK_RATING:Ljava/lang/String; = "feedback.rating"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.notification.NotificationAssistantService"

.field public static final whitelist SOURCE_FROM_APP:I = 0x0

.field public static final whitelist SOURCE_FROM_ASSISTANT:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NotificationAssistants"


# instance fields
.field protected greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetAdjustmentIssuer(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/Adjustment;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService;->setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method private blacklist setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V
    .locals 2
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 495
    if-eqz p1, :cond_0

    .line 496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/service/notification/Adjustment;->setIssuer(Ljava/lang/String;)V

    .line 498
    :cond_0
    return-void
.end method


# virtual methods
.method public final whitelist adjustNotification(Landroid/service/notification/Adjustment;)V
    .locals 3
    .param p1, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 304
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/service/notification/NotificationAssistantService;->setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V

    .line 307
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    nop

    .line 312
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final whitelist adjustNotifications(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/Adjustment;",
            ">;)V"
        }
    .end annotation

    .line 322
    .local p1, "adjustments":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/Adjustment;>;"
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Adjustment;

    .line 325
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    invoke-direct {p0, v1}, Landroid/service/notification/NotificationAssistantService;->setAdjustmentIssuer(Landroid/service/notification/Adjustment;)V

    .line 326
    .end local v1    # "adjustment":Landroid/service/notification/Adjustment;
    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    nop

    .line 332
    return-void

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 330
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .line 106
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->attachBaseContext(Landroid/content/Context;)V

    .line 107
    new-instance v0, Landroid/service/notification/NotificationAssistantService$MyHandler;

    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$MyHandler;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method public whitelist onActionInvoked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "action"    # Landroid/app/Notification$Action;
    .param p3, "source"    # I

    .line 267
    return-void
.end method

.method public whitelist onAllowedAdjustmentsChanged()V
    .locals 0

    .line 283
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 112
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper;-><init>(Landroid/service/notification/NotificationAssistantService;Landroid/service/notification/NotificationAssistantService$NotificationAssistantServiceWrapper-IA;)V

    iput-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    return-object v0
.end method

.method public whitelist onNotificationClicked(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 274
    return-void
.end method

.method public whitelist onNotificationDirectReplied(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 247
    return-void
.end method

.method public abstract whitelist onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/Adjustment;
.end method

.method public whitelist onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Landroid/service/notification/Adjustment;
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "channel"    # Landroid/app/NotificationChannel;

    .line 153
    invoke-virtual {p0, p1}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/Adjustment;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/Adjustment;
    .locals 1
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "channel"    # Landroid/app/NotificationChannel;
    .param p3, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 167
    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationAssistantService;->onNotificationEnqueued(Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)Landroid/service/notification/Adjustment;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isUserAction"    # Z
    .param p3, "isExpanded"    # Z

    .line 241
    return-void
.end method

.method public whitelist onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "feedback"    # Landroid/os/Bundle;

    .line 294
    return-void
.end method

.method public whitelist onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Landroid/service/notification/NotificationStats;I)V
    .locals 0
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "rankingMap"    # Landroid/service/notification/NotificationListenerService$RankingMap;
    .param p3, "stats"    # Landroid/service/notification/NotificationStats;
    .param p4, "reason"    # I

    .line 196
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/notification/NotificationAssistantService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    .line 197
    return-void
.end method

.method public abstract whitelist onNotificationSnoozedUntilContext(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end method

.method public whitelist onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "isVisible"    # Z

    .line 231
    return-void
.end method

.method public whitelist onNotificationsSeen(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 205
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public whitelist onPanelHidden()V
    .locals 0

    .line 221
    return-void
.end method

.method public whitelist onPanelRevealed(I)V
    .locals 0
    .param p1, "items"    # I

    .line 214
    return-void
.end method

.method public whitelist onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reply"    # Ljava/lang/CharSequence;
    .param p3, "source"    # I

    .line 257
    return-void
.end method

.method public final whitelist unsnoozeNotification(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 344
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationAssistantService;->getNotificationInterface()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotificationAssistantService;->mWrapper:Landroid/service/notification/NotificationListenerService$NotificationListenerWrapper;

    invoke-interface {v0, v1, p1}, Landroid/app/INotificationManager;->unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "NotificationAssistants"

    const-string v2, "Unable to contact notification manager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
