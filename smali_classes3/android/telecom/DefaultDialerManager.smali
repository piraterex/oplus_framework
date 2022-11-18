.class public Landroid/telecom/DefaultDialerManager;
.super Ljava/lang/Object;
.source "DefaultDialerManager.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "DefaultDialerManager"


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 212
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 216
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 218
    invoke-virtual {v1, p2, v2, p3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 220
    .local v2, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 221
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 222
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 223
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 224
    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "i":I
    :cond_2
    return-object v0

    .line 213
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "length":I
    :cond_3
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static greylist-max-o getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDefaultDialerApplication(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I

    .line 131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 133
    .local v0, "identity":J
    :try_start_0
    const-class v2, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    const-string v3, "android.app.role.DIALER"

    .line 134
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 133
    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 133
    return-object v2

    .line 136
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw v2
.end method

.method public static greylist-max-o getInstalledDialerApplications(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p0, v0}, Landroid/telecom/DefaultDialerManager;->getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstalledDialerApplications(Landroid/content/Context;I)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 155
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v1, "intent":Landroid/content/Intent;
    nop

    .line 157
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 159
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 162
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 163
    .local v7, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v7, :cond_0

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 164
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, v6, Landroid/content/pm/ResolveInfo;->targetUserId:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_0

    .line 167
    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_0
    goto :goto_0

    .line 171
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 172
    .local v2, "dialIntentWithTelScheme":Landroid/content/Intent;
    const/4 v5, 0x0

    const-string/jumbo v6, "tel"

    const-string v7, ""

    invoke-static {v6, v7, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 173
    invoke-static {p0, v4, v2, p1}, Landroid/telecom/DefaultDialerManager;->filterByIntent(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method private static greylist-max-o getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 233
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static greylist-max-o isDefaultOrSystemDialer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 194
    return v1

    .line 196
    :cond_0
    invoke-static {p0}, Landroid/telecom/DefaultDialerManager;->getTelecomManager(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 197
    .local v0, "tm":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getSystemDialerPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 197
    :cond_2
    return v1
.end method

.method static synthetic blacklist lambda$setDefaultDialerApplication$0(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "future"    # Ljava/util/concurrent/CompletableFuture;
    .param p1, "successful"    # Ljava/lang/Boolean;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 86
    :goto_0
    return-void
.end method

.method public static greylist-max-o setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 62
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/telecom/DefaultDialerManager;->setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static greylist-max-o setDefaultDialerApplication(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # I

    .line 77
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 79
    .local v0, "identity":J
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 80
    .local v2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v9, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;

    invoke-direct {v9, v2}, Landroid/telecom/DefaultDialerManager$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CompletableFuture;)V

    .line 87
    .local v9, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/role/RoleManager;

    const-string v4, "android.app.role.DIALER"

    const/4 v6, 0x0

    .line 88
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 87
    move-object v5, p1

    invoke-virtual/range {v3 .. v9}, Landroid/app/role/RoleManager;->addRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 90
    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    const/4 v3, 0x1

    .line 96
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 91
    return v3

    .line 96
    .end local v2    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    .end local v9    # "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "DefaultDialerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set default dialer to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    const/4 v3, 0x0

    .line 96
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 94
    return v3

    .line 96
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 97
    throw v2
.end method
