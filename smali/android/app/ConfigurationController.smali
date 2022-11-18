.class Landroid/app/ConfigurationController;
.super Ljava/lang/Object;
.source "ConfigurationController.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ConfigurationController"


# instance fields
.field private final blacklist mActivityThread:Landroid/app/ActivityThreadInternal;

.field private blacklist mCompatConfiguration:Landroid/content/res/Configuration;

.field private blacklist mConfiguration:Landroid/content/res/Configuration;

.field public blacklist mConfigurationControllerExt:Landroid/app/IConfigurationControllerExt;

.field private blacklist mPendingConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mResourcesManager:Landroid/app/ResourcesManager;


# direct methods
.method constructor blacklist <init>(Landroid/app/ActivityThreadInternal;)V
    .locals 1
    .param p1, "activityThread"    # Landroid/app/ActivityThreadInternal;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    .line 65
    const-class v0, Landroid/app/IConfigurationControllerExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IConfigurationControllerExt;

    iput-object v0, p0, Landroid/app/ConfigurationController;->mConfigurationControllerExt:Landroid/app/IConfigurationControllerExt;

    .line 69
    iput-object p1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    .line 70
    return-void
.end method

.method static blacklist createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "base"    # Landroid/content/res/Configuration;
    .param p1, "override"    # Landroid/content/res/Configuration;

    .line 315
    if-nez p1, :cond_0

    .line 316
    return-object p0

    .line 318
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 319
    .local v0, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 320
    return-object v0
.end method


# virtual methods
.method final blacklist applyCompatConfiguration()Landroid/content/res/Configuration;
    .locals 4

    .line 109
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 110
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 111
    .local v1, "displayDensity":I
    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    if-nez v2, :cond_0

    .line 112
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 114
    :cond_0
    iget-object v2, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 115
    iget-object v2, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    iget-object v3, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1, v3}, Landroid/app/ResourcesManager;->applyCompatConfiguration(ILandroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 118
    :cond_1
    return-object v0
.end method

.method blacklist getCompatConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 128
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method blacklist getCurDefaultDisplayDpi()I
    .locals 1

    .line 282
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    return v0
.end method

.method blacklist getPendingConfiguration(Z)Landroid/content/res/Configuration;
    .locals 3
    .param p1, "clearPending"    # Z

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "outConfig":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    .line 88
    move-object v0, v2

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 93
    :cond_0
    monitor-exit v1

    .line 94
    return-object v0

    .line 93
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 157
    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, p1}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 158
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerGlobal;->reportNewConfiguration(Landroid/content/res/Configuration;)V

    .line 159
    return-void
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 140
    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->isCachedProcessState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ConfigurationController;->mConfigurationControllerExt:Landroid/app/IConfigurationControllerExt;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IConfigurationControllerExt;->handleStateCheck(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0, p1}, Landroid/app/ConfigurationController;->updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 145
    return-void

    .line 147
    :cond_0
    const-wide/16 v0, 0x40

    const-string v2, "configChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 148
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/app/ConfigurationController;->handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    .line 149
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 150
    return-void
.end method

.method blacklist handleConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 11
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    .line 172
    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 173
    .local v0, "systemTheme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v1}, Landroid/app/ActivityThreadInternal;->getSystemUiContextNoCreate()Landroid/app/ContextImpl;

    move-result-object v1

    .line 175
    .local v1, "systemUiContext":Landroid/app/ContextImpl;
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    .line 176
    .local v3, "systemUiTheme":Landroid/content/res/Resources$Theme;
    :goto_0
    iget-object v4, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v4

    .line 177
    :try_start_0
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v5, :cond_2

    .line 178
    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    iget-object v5, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object p1, v5

    .line 180
    iget v5, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p0, v5}, Landroid/app/ConfigurationController;->updateDefaultDensity(I)V

    .line 182
    :cond_1
    iput-object v2, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 185
    :cond_2
    if-nez p1, :cond_3

    .line 186
    monitor-exit v4

    return-void

    .line 194
    :cond_3
    iget-object v5, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v5, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v6

    .line 196
    .local v5, "equivalent":Z
    :goto_1
    sget-boolean v7, Landroid/app/ActivityThread;->DEBUG_CONFIGURATION:Z

    if-eqz v7, :cond_5

    .line 197
    const-string v7, "ConfigurationController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handle configuration changed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_5
    iget-object v7, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v7}, Landroid/app/ActivityThreadInternal;->getApplication()Landroid/app/Application;

    move-result-object v7

    .line 201
    .local v7, "app":Landroid/app/Application;
    invoke-virtual {v7}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 202
    .local v8, "appResources":Landroid/content/res/Resources;
    iget-object v9, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v9, p1, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResources(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 203
    invoke-virtual {v7}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/app/ConfigurationController;->updateLocaleListFromAppContext(Landroid/content/Context;)V

    .line 205
    iget-object v9, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    if-nez v9, :cond_6

    .line 206
    new-instance v9, Landroid/content/res/Configuration;

    invoke-direct {v9}, Landroid/content/res/Configuration;-><init>()V

    iput-object v9, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 208
    :cond_6
    iget-object v9, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v9

    if-nez v9, :cond_7

    if-nez p2, :cond_7

    .line 209
    monitor-exit v4

    return-void

    .line 212
    :cond_7
    iget-object v9, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v9, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v9

    .line 213
    .local v9, "configDiff":I
    invoke-virtual {p0}, Landroid/app/ConfigurationController;->applyCompatConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    move-object p1, v10

    .line 214
    invoke-static {p1}, Landroid/graphics/HardwareRenderer;->sendDeviceConfigurationForDebugging(Landroid/content/res/Configuration;)V

    .line 216
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v10

    and-int/2addr v10, v9

    if-eqz v10, :cond_8

    .line 217
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 220
    :cond_8
    if-eqz v3, :cond_9

    .line 221
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v10

    and-int/2addr v10, v9

    if-eqz v10, :cond_9

    .line 222
    invoke-virtual {v3}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 224
    .end local v7    # "app":Landroid/app/Application;
    .end local v8    # "appResources":Landroid/content/res/Resources;
    :cond_9
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v4, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    .line 227
    invoke-interface {v4, v6}, Landroid/app/ActivityThreadInternal;->collectComponentCallbacks(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 229
    .local v4, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    invoke-static {v9}, Landroid/window/ConfigurationHelper;->freeTextLayoutCachesIfNeeded(I)V

    .line 233
    iget-object v6, p0, Landroid/app/ConfigurationController;->mConfigurationControllerExt:Landroid/app/IConfigurationControllerExt;

    iget-object v7, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    invoke-interface {v6, v2, p1, v9, v7}, Landroid/app/IConfigurationControllerExt;->hookHandleConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;ILandroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_a

    return-void

    .line 236
    :cond_a
    if-eqz v4, :cond_c

    .line 237
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 238
    .local v2, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v2, :cond_c

    .line 239
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentCallbacks2;

    .line 240
    .local v7, "cb":Landroid/content/ComponentCallbacks2;
    if-nez v5, :cond_b

    .line 241
    invoke-virtual {p0, v7, p1}, Landroid/app/ConfigurationController;->performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V

    .line 238
    .end local v7    # "cb":Landroid/content/ComponentCallbacks2;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 245
    .end local v2    # "size":I
    .end local v6    # "i":I
    :cond_c
    return-void

    .line 224
    .end local v4    # "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentCallbacks2;>;"
    .end local v5    # "equivalent":Z
    .end local v9    # "configDiff":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method blacklist performConfigurationChanged(Landroid/content/ComponentCallbacks2;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cb"    # Landroid/content/ComponentCallbacks2;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "contextThemeWrapperOverrideConfig":Landroid/content/res/Configuration;
    instance-of v1, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_0

    .line 258
    move-object v1, p1

    check-cast v1, Landroid/view/ContextThemeWrapper;

    .line 259
    .local v1, "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 265
    .end local v1    # "contextThemeWrapper":Landroid/view/ContextThemeWrapper;
    :cond_0
    invoke-static {p2, v0}, Landroid/app/ConfigurationController;->createNewConfigAndUpdateIfNotNull(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 267
    .local v1, "configToReport":Landroid/content/res/Configuration;
    invoke-interface {p1, v1}, Landroid/content/ComponentCallbacks2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    return-void
.end method

.method blacklist setCompatConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 99
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mCompatConfiguration:Landroid/content/res/Configuration;

    .line 100
    return-void
.end method

.method blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 123
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/app/ConfigurationController;->mConfiguration:Landroid/content/res/Configuration;

    .line 124
    return-void
.end method

.method blacklist updateDefaultDensity(I)V
    .locals 1
    .param p1, "densityDpi"    # I

    .line 272
    iget-object v0, p0, Landroid/app/ConfigurationController;->mActivityThread:Landroid/app/ActivityThreadInternal;

    invoke-interface {v0}, Landroid/app/ActivityThreadInternal;->isInDensityCompatMode()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    if-eq p1, v0, :cond_0

    .line 275
    sput p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    .line 276
    invoke-static {p1}, Landroid/graphics/Bitmap;->setDefaultDensity(I)V

    .line 278
    :cond_0
    return-void
.end method

.method blacklist updateLocaleListFromAppContext(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 292
    .local v0, "bestLocale":Ljava/util/Locale;
    iget-object v1, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    invoke-virtual {v1}, Landroid/app/ResourcesManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    .line 293
    .local v1, "newLocaleList":Landroid/os/LocaleList;
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v2

    .line 294
    .local v2, "newLocaleListSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 295
    invoke-virtual {v1, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 296
    invoke-static {v1, v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 297
    return-void

    .line 294
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 304
    .end local v3    # "i":I
    :cond_1
    new-instance v3, Landroid/os/LocaleList;

    invoke-direct {v3, v0, v1}, Landroid/os/LocaleList;-><init>(Ljava/util/Locale;Landroid/os/LocaleList;)V

    invoke-static {v3}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;)V

    .line 305
    return-void
.end method

.method blacklist updatePendingConfiguration(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 74
    iget-object v0, p0, Landroid/app/ConfigurationController;->mResourcesManager:Landroid/app/ResourcesManager;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit v0

    .line 80
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/app/ConfigurationController;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 77
    monitor-exit v0

    return-object p1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
