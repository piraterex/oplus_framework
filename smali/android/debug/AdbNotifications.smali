.class public final Landroid/debug/AdbNotifications;
.super Ljava/lang/Object;
.source "AdbNotifications.java"


# static fields
.field private static final blacklist ADB_NOTIFICATION_CHANNEL_ID_TV:Ljava/lang/String; = "usbdevicemanager.adb.tv"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createNotification(Landroid/content/Context;B)Landroid/app/Notification;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "transportType"    # B

    .line 52
    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 56
    .local v8, "resources":Landroid/content/res/Resources;
    const/4 v9, 0x1

    if-nez v7, :cond_0

    .line 57
    const v0, 0x1040117

    .line 58
    .local v0, "titleId":I
    const v1, 0x1040116

    move v10, v0

    move v11, v1

    .local v1, "messageId":I
    goto :goto_0

    .line 59
    .end local v0    # "titleId":I
    .end local v1    # "messageId":I
    :cond_0
    if-ne v7, v9, :cond_2

    .line 60
    const v0, 0x104011a

    .line 61
    .restart local v0    # "titleId":I
    const v1, 0x1040119

    move v10, v0

    move v11, v1

    .line 67
    .end local v0    # "titleId":I
    .local v10, "titleId":I
    .local v11, "messageId":I
    :goto_0
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 68
    .local v12, "title":Ljava/lang/CharSequence;
    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 70
    .local v13, "message":Ljava/lang/CharSequence;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 71
    .local v14, "intent":Landroid/content/Intent;
    const v0, 0x10008000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    invoke-virtual {v0, v14, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 75
    .local v15, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x0

    .line 76
    .local v16, "pIntent":Landroid/app/PendingIntent;
    if-eqz v15, :cond_1

    .line 77
    iget-object v0, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const/4 v1, 0x0

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object v2, v14

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    goto :goto_1

    .line 76
    :cond_1
    move-object/from16 v0, v16

    .line 83
    .end local v16    # "pIntent":Landroid/app/PendingIntent;
    .local v0, "pIntent":Landroid/app/PendingIntent;
    :goto_1
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER_IMPORTANT:Ljava/lang/String;

    invoke-direct {v1, v6, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x108082e

    .line 84
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 88
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x106001c

    .line 89
    invoke-virtual {v6, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 92
    invoke-virtual {v1, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 94
    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$TvExtender;

    invoke-direct {v2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 96
    const-string/jumbo v3, "usbdevicemanager.adb.tv"

    invoke-virtual {v2, v3}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 83
    return-object v1

    .line 63
    .end local v0    # "pIntent":Landroid/app/PendingIntent;
    .end local v10    # "titleId":I
    .end local v11    # "messageId":I
    .end local v12    # "title":Ljava/lang/CharSequence;
    .end local v13    # "message":Ljava/lang/CharSequence;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v15    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNotification called with unknown transport type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
