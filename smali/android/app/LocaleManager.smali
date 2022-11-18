.class public Landroid/app/LocaleManager;
.super Ljava/lang/Object;
.source "LocaleManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "LocaleManager"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mService:Landroid/app/ILocaleManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ILocaleManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ILocaleManager;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    .line 50
    return-void
.end method


# virtual methods
.method public whitelist getApplicationLocales()Landroid/os/LocaleList;
    .locals 1

    .line 119
    iget-object v0, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;
    .locals 2
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 141
    invoke-interface {v0, p1, v1}, Landroid/app/ILocaleManager;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSystemLocales()Landroid/os/LocaleList;
    .locals 2

    .line 162
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    invoke-interface {v0}, Landroid/app/ILocaleManager;->getSystemLocales()Landroid/os/LocaleList;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setApplicationLocales(Landroid/os/LocaleList;)V
    .locals 1
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 74
    iget-object v0, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V

    .line 75
    return-void
.end method

.method public whitelist setApplicationLocales(Ljava/lang/String;Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "locales"    # Landroid/os/LocaleList;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/app/LocaleManager;->mService:Landroid/app/ILocaleManager;

    iget-object v1, p0, Landroid/app/LocaleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/ILocaleManager;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    nop

    .line 109
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setSystemLocales(Landroid/os/LocaleList;)V
    .locals 2
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 176
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 177
    .local v0, "conf":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 178
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v0    # "conf":Landroid/content/res/Configuration;
    nop

    .line 182
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
