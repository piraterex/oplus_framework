.class public Landroid/app/admin/DelegatedAdminReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DelegatedAdminReceiver.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "DelegatedAdminReceiver"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "uid"    # I
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "alias"    # Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onChoosePrivateKeyAlias should be implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "batchToken"    # J
    .param p5, "networkLogsCount"    # I

    .line 119
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onNetworkLogsAvailable should be implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.app.action.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, -0x1

    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_SENDER_UID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 159
    .local v1, "uid":I
    const-string v2, "android.app.extra.CHOOSE_PRIVATE_KEY_URI"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 160
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.app.extra.CHOOSE_PRIVATE_KEY_ALIAS"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "alias":Ljava/lang/String;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, v1

    move-object v7, v2

    move-object v8, v9

    invoke-virtual/range {v3 .. v8}, Landroid/app/admin/DelegatedAdminReceiver;->onChoosePrivateKeyAlias(Landroid/content/Context;Landroid/content/Intent;ILandroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 162
    .local v3, "chosenAlias":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/app/admin/DelegatedAdminReceiver;->setResultData(Ljava/lang/String;)V

    .line 163
    .end local v1    # "uid":I
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "chosenAlias":Ljava/lang/String;
    .end local v9    # "alias":Ljava/lang/String;
    goto :goto_0

    :cond_0
    const-string v1, "android.app.action.NETWORK_LOGS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    const-wide/16 v1, -0x1

    const-string v3, "android.app.extra.EXTRA_NETWORK_LOGS_TOKEN"

    invoke-virtual {p2, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 165
    .local v1, "batchToken":J
    const/4 v3, 0x0

    const-string v4, "android.app.extra.EXTRA_NETWORK_LOGS_COUNT"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 166
    .local v3, "networkLogsCount":I
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, v1

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/app/admin/DelegatedAdminReceiver;->onNetworkLogsAvailable(Landroid/content/Context;Landroid/content/Intent;JI)V

    .line 167
    .end local v1    # "batchToken":J
    .end local v3    # "networkLogsCount":I
    goto :goto_0

    :cond_1
    const-string v1, "android.app.action.SECURITY_LOGS_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DelegatedAdminReceiver;->onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 170
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DelegatedAdminReceiver"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_0
    return-void
.end method

.method public whitelist onSecurityLogsAvailable(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 146
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "onSecurityLogsAvailable should be implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
