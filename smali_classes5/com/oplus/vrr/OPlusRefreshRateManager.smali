.class public Lcom/oplus/vrr/OPlusRefreshRateManager;
.super Ljava/lang/Object;
.source "OPlusRefreshRateManager.java"

# interfaces
.implements Lcom/oplus/vrr/IOPlusRefreshRateManager;


# static fields
.field public static final whitelist ADFR_COVERWIN_WHITELIST:I = 0x0

.field public static final whitelist ADFR_GAME_LIST:I = 0x1

.field public static final whitelist DEBUG:Z = true

.field public static final whitelist OPLUS_VRR_SERVICE:Ljava/lang/String; = "oplus_vrr_service"

.field private static final blacklist SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oplus/vrr/IOPlusRefreshRate;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TAG:Ljava/lang/String; = "VRR [OPlusRefreshRateManager]"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/oplus/vrr/OPlusRefreshRateManager$1;

    invoke-direct {v0}, Lcom/oplus/vrr/OPlusRefreshRateManager$1;-><init>()V

    sput-object v0, Lcom/oplus/vrr/OPlusRefreshRateManager;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getADFRVersion()Ljava/lang/String;
    .locals 1

    .line 73
    sget-object v0, Landroid/os/OplusPropertyList;->ADFR_ENABLED:Ljava/lang/String;

    return-object v0
.end method

.method public static whitelist getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;
    .locals 1

    .line 89
    sget-object v0, Lcom/oplus/vrr/OPlusRefreshRateManager;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vrr/IOPlusRefreshRate;

    return-object v0
.end method

.method public static whitelist getOPlusRefreshRateService()Lcom/oplus/vrr/IOPlusRefreshRate;
    .locals 5

    .line 94
    const-string v0, "can\'t get service interface: IOPlusRefreshRate"

    const-string v1, "VRR [OPlusRefreshRateManager]"

    const/4 v2, 0x0

    .line 95
    .local v2, "ret":Lcom/oplus/vrr/IOPlusRefreshRate;
    :try_start_0
    const-string v3, "oplus_vrr_service"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 97
    .local v3, "b":Landroid/os/IBinder;
    if-nez v3, :cond_0

    .line 98
    const-string v4, "can\'t get service binder: IOPlusRefreshRate"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-static {v3}, Lcom/oplus/vrr/IOPlusRefreshRate$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v4

    move-object v2, v4

    .line 103
    if-nez v2, :cond_1

    .line 104
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_1
    return-object v2

    .line 108
    .end local v2    # "ret":Lcom/oplus/vrr/IOPlusRefreshRate;
    .end local v3    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist hasADFRFeature()Z
    .locals 3

    .line 66
    sget-object v0, Landroid/os/OplusPropertyList;->ADFR_ENABLED:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 67
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasADFRFeature return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VRR [OPlusRefreshRateManager]"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return v0
.end method

.method public static whitelist hasVRRFeature()Z
    .locals 3

    .line 82
    sget-object v0, Landroid/os/OplusPropertyList;->VRR_ENABLED:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 83
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasVRRFeature return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VRR [OPlusRefreshRateManager]"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v0
.end method


# virtual methods
.method public whitelist findDisplayModeIdByPolicy(III)I
    .locals 4
    .param p1, "policy"    # I
    .param p2, "displayId"    # I
    .param p3, "baseModeId"    # I

    .line 146
    move v0, p3

    .line 147
    .local v0, "policyMode":I
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 148
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 150
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/oplus/vrr/IOPlusRefreshRate;->findDisplayModeIdByPolicy(III)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 153
    :goto_0
    goto :goto_1

    .line 151
    :catch_0
    move-exception v2

    goto :goto_0

    .line 155
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_1
    return v0
.end method

.method public whitelist getList(I)Ljava/util/List;
    .locals 4
    .param p1, "listType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 389
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 391
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->getList(I)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 394
    :goto_0
    goto :goto_1

    .line 392
    :catch_0
    move-exception v2

    goto :goto_0

    .line 396
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_1
    return-object v0
.end method

.method public whitelist getModeType(I)I
    .locals 4
    .param p1, "modeId"    # I

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "modeType":I
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 267
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 269
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->getModeType(I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 272
    :goto_0
    goto :goto_1

    .line 270
    :catch_0
    move-exception v2

    goto :goto_0

    .line 274
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_1
    return v0
.end method

.method public whitelist getPreferredFrameRate(Ljava/lang/String;Ljava/lang/String;)F
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "winName"    # Ljava/lang/String;

    .line 295
    const/high16 v0, -0x40800000    # -1.0f

    .line 296
    .local v0, "frameRate":F
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 297
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 299
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/oplus/vrr/IOPlusRefreshRate;->getPreferredFrameRate(Ljava/lang/String;Ljava/lang/String;)F

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 302
    :goto_0
    goto :goto_1

    .line 300
    :catch_0
    move-exception v2

    goto :goto_0

    .line 304
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_1
    return v0
.end method

.method public whitelist getRefreshRatePolicy(F)I
    .locals 4
    .param p1, "rate"    # F

    .line 232
    const/4 v0, 0x0

    .line 234
    .local v0, "policy":I
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getOPlusRefreshRateService()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 235
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->getRefreshRatePolicy(F)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 240
    :goto_0
    goto :goto_1

    .line 238
    :catch_0
    move-exception v2

    goto :goto_0

    .line 242
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :goto_1
    return v0
.end method

.method public whitelist hasFlickerRisk()Z
    .locals 4

    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "hasFlickerRisk":Z
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 313
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/vrr/IOPlusRefreshRate;->hasFlickerRisk()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 318
    :goto_0
    goto :goto_1

    .line 316
    :catch_0
    move-exception v2

    goto :goto_0

    .line 320
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_1
    return v0
.end method

.method public whitelist isGameAccelerationScene()Z
    .locals 4

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "isGameAccelerationScene":Z
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 357
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 359
    :try_start_0
    invoke-interface {v1}, Lcom/oplus/vrr/IOPlusRefreshRate;->isGameAccelerationScene()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 362
    :goto_0
    goto :goto_1

    .line 360
    :catch_0
    move-exception v2

    goto :goto_0

    .line 364
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :goto_1
    return v0
.end method

.method public whitelist isWhiteListGame(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 371
    const/4 v0, 0x0

    .line 372
    .local v0, "isWhiteListGame":Z
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 373
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 375
    :try_start_0
    invoke-interface {v1, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->isWhiteListGame(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 378
    :goto_0
    goto :goto_1

    .line 376
    :catch_0
    move-exception v2

    goto :goto_0

    .line 380
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :goto_1
    return v0
.end method

.method public whitelist notifyBrightnessChange(F)V
    .locals 3
    .param p1, "brightness"    # F

    .line 204
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 205
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->notifyBrightnessChange(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    goto :goto_1

    .line 208
    :catch_0
    move-exception v1

    goto :goto_0

    .line 212
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_1
    return-void
.end method

.method public whitelist notifyNitsChange(F)V
    .locals 3
    .param p1, "nits"    # F

    .line 190
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 191
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 193
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->notifyNitsChange(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    goto :goto_1

    .line 194
    :catch_0
    move-exception v1

    goto :goto_0

    .line 198
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_1
    return-void
.end method

.method public whitelist requestRefreshRate(Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;)V
    .locals 4
    .param p1, "request"    # Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VRR requestRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VRR [OPlusRefreshRateManager]"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget v0, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->displayId:I

    iget v1, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->requestRefreshRate:F

    iget v2, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->policy:I

    iget-boolean v3, p1, Lcom/oplus/vrr/IOPlusRefreshRateManager$DisplayRefreshRateRequest;->statusOn:Z

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/oplus/vrr/OPlusRefreshRateManager;->setRefreshRatePolicy(IFIZ)V

    .line 422
    return-void
.end method

.method public whitelist screenStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .line 162
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 163
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->screenStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0

    .line 170
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_1
    return-void
.end method

.method public whitelist screenStateChangeWarning(I)V
    .locals 3
    .param p1, "state"    # I

    .line 176
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 177
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 179
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->screenStateChangeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    goto :goto_0

    .line 184
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1
    return-void
.end method

.method public whitelist setExternalRefreshRateStatus(I)V
    .locals 3
    .param p1, "status"    # I

    .line 118
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 119
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->setExternalRefreshRateStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_0
    goto :goto_1

    .line 122
    :catch_0
    move-exception v1

    goto :goto_0

    .line 126
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_1
    return-void
.end method

.method public whitelist setFrameRate(FLjava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .param p1, "frameRate"    # F
    .param p2, "windowTile"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "pid"    # I

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "success":Z
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 405
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 407
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/oplus/vrr/IOPlusRefreshRate;->setFrameRate(FLjava/lang/String;Ljava/lang/String;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 410
    :goto_0
    goto :goto_1

    .line 408
    :catch_0
    move-exception v2

    goto :goto_0

    .line 412
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_1
    return v0
.end method

.method public whitelist setLowFreqVideo(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 281
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 282
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->setLowFreqVideo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    goto :goto_1

    .line 285
    :catch_0
    move-exception v1

    goto :goto_0

    .line 289
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :goto_1
    return-void
.end method

.method public whitelist setRefreshRatePolicy(IFIZ)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "rate"    # F
    .param p3, "policy"    # I
    .param p4, "statusOn"    # Z

    .line 218
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 219
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/oplus/vrr/IOPlusRefreshRate;->setRefreshRatePolicy(IFIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    goto :goto_1

    .line 222
    :catch_0
    move-exception v1

    goto :goto_0

    .line 226
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :goto_1
    return-void
.end method

.method public whitelist setTgpaGameData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 341
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 342
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 344
    :try_start_0
    invoke-interface {v0, p1}, Lcom/oplus/vrr/IOPlusRefreshRate;->setTgpaGameData(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    goto :goto_1

    .line 345
    :catch_0
    move-exception v1

    goto :goto_0

    .line 349
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :goto_1
    return-void
.end method

.method public whitelist setVsyncConfig(IFFLjava/lang/String;)Z
    .locals 4
    .param p1, "status"    # I
    .param p2, "appOffset"    # F
    .param p3, "sfOffset"    # F
    .param p4, "identity"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "result":Z
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v1

    .line 251
    .local v1, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/oplus/vrr/IOPlusRefreshRate;->setVsyncConfig(IFFLjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 256
    :goto_0
    goto :goto_1

    .line 254
    :catch_0
    move-exception v2

    goto :goto_0

    .line 258
    :cond_0
    const-string v2, "VRR [OPlusRefreshRateManager]"

    const-string v3, "OPlusRefreshRate disconnected"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_1
    return v0
.end method

.method public whitelist updateAccelerationPkgName(Ljava/lang/String;II)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "targetFps"    # I
    .param p3, "currentFps"    # I

    .line 327
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 328
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 330
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/vrr/IOPlusRefreshRate;->updateAccelerationPkgName(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    goto :goto_1

    .line 331
    :catch_0
    move-exception v1

    goto :goto_0

    .line 335
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :goto_1
    return-void
.end method

.method public whitelist updateDisplayModes(J)V
    .locals 3
    .param p1, "physicalDisplayId"    # J

    .line 132
    invoke-static {}, Lcom/oplus/vrr/OPlusRefreshRateManager;->getDefault()Lcom/oplus/vrr/IOPlusRefreshRate;

    move-result-object v0

    .line 133
    .local v0, "service":Lcom/oplus/vrr/IOPlusRefreshRate;
    if-eqz v0, :cond_0

    .line 135
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oplus/vrr/IOPlusRefreshRate;->updateDisplayModes(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    goto :goto_1

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0

    .line 140
    :cond_0
    const-string v1, "VRR [OPlusRefreshRateManager]"

    const-string v2, "OPlusRefreshRate disconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :goto_1
    return-void
.end method
