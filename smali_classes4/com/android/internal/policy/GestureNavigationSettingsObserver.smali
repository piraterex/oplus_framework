.class public Lcom/android/internal/policy/GestureNavigationSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GestureNavigationSettingsObserver.java"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mMainHandler:Landroid/os/Handler;

.field private blacklist mOnChangeRunnable:Ljava/lang/Runnable;

.field private final blacklist mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOnChangeRunnable(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "onChangeRunnable"    # Ljava/lang/Runnable;

    .line 42
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 48
    new-instance v0, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$1;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iput-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    .line 44
    iput-object p2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    .line 45
    iput-object p3, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    .line 46
    return-void
.end method

.method private blacklist getSensitivity(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 7
    .param p1, "userRes"    # Landroid/content/res/Resources;
    .param p2, "side"    # Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 104
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const v1, 0x10500a9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    .line 107
    .local v1, "defaultInset":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 108
    const-string/jumbo v2, "systemui"

    const-string v3, "back_gesture_edge_width"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v2

    goto :goto_0

    .line 110
    :cond_0
    move v2, v1

    :goto_0
    nop

    .line 111
    .local v2, "backGestureInset":F
    const/4 v3, 0x1

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    .line 113
    .local v3, "inset":F
    iget-object v4, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    .line 113
    invoke-static {v4, p2, v5, v6}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v4

    .line 115
    .local v4, "scale":F
    mul-float v5, v3, v4

    float-to-int v5, v5

    return v5
.end method


# virtual methods
.method public blacklist areNavigationButtonForcedVisible()Z
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public blacklist getLeftSensitivity(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "userRes"    # Landroid/content/res/Resources;

    .line 90
    const-string v0, "back_gesture_inset_scale_left"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getSensitivity(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getRightSensitivity(Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "userRes"    # Landroid/content/res/Resources;

    .line 94
    const-string v0, "back_gesture_inset_scale_right"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getSensitivity(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method synthetic blacklist lambda$register$0$com-android-internal-policy-GestureNavigationSettingsObserver(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 83
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    :cond_0
    return-void
.end method

.method public blacklist register()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, "r":Landroid/content/ContentResolver;
    nop

    .line 62
    const-string v1, "back_gesture_inset_scale_left"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 64
    nop

    .line 65
    const-string v1, "back_gesture_inset_scale_right"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 67
    nop

    .line 68
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 70
    new-instance v1, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/policy/GestureNavigationSettingsObserver;)V

    iget-object v2, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v3, "systemui"

    invoke-static {v3, v1, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 74
    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 79
    return-void
.end method
