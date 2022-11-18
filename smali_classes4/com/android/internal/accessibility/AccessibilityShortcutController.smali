.class public Lcom/android/internal/accessibility/AccessibilityShortcutController;
.super Ljava/lang/Object;
.source "AccessibilityShortcutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;,
        Lcom/android/internal/accessibility/AccessibilityShortcutController$DialogStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACCESSIBILITY_BUTTON_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist MAGNIFICATION_CONTROLLER_NAME:Ljava/lang/String; = "com.android.server.accessibility.MagnificationController"

.field public static final blacklist ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final blacklist REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final blacklist TAG:Ljava/lang/String; = "AccessibilityShortcutController"

.field private static final blacklist VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static blacklist sFrameworkShortcutFeaturesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlertDialog:Landroid/app/AlertDialog;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mEnabledOnLockScreen:Z

.field public blacklist mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsShortcutEnabled:Z

.field private blacklist mUserId:I

.field private final blacklist mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/accessibility/AccessibilityShortcutController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserId(Lcom/android/internal/accessibility/AccessibilityShortcutController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mplayNotificationTone(Lcom/android/internal/accessibility/AccessibilityShortcutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 76
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "ColorInversion"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 78
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "Daltonizer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 83
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "Magnification"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "OneHandedMode"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 87
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ReduceBrightColors"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 91
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "AccessibilityButton"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_BUTTON_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 94
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ColorInversionTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 96
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ColorCorrectionTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 98
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "OneHandedModeTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_TILE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 100
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "ReduceBrightColorsTile"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_TILE_SERVICE_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 103
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 104
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 105
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 103
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "initialUserId"    # I

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    invoke-direct {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;-><init>()V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 166
    iput-object p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mHandler:Landroid/os/Handler;

    .line 168
    iput p3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    .line 169
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    .line 172
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$1;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Landroid/os/Handler;)V

    .line 180
    .local v0, "co":Landroid/database/ContentObserver;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 181
    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 180
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 184
    const-string v2, "accessibility_shortcut_on_lock_screen"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 183
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 187
    const-string v2, "accessibility_shortcut_dialog_shown"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 186
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 189
    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    invoke-virtual {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    .line 190
    return-void
.end method

.method private blacklist createShortcutWarningDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "userId"    # I

    .line 305
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/accessibility/dialog/AccessibilityTargetHelper;->getTargets(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    .line 306
    .local v0, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 307
    return-object v2

    .line 312
    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    .line 314
    invoke-virtual {v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getSystemUiContext()Landroid/content/Context;

    move-result-object v3

    .line 312
    invoke-virtual {v1, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 315
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 316
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 317
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x10400ee

    .line 318
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x10400ed

    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    .line 319
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;I)V

    .line 330
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 336
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 337
    .local v1, "alertDialog":Landroid/app/AlertDialog;
    return-object v1
.end method

.method public static blacklist getFrameworkShortcutFeaturesMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;",
            ">;"
        }
    .end annotation

    .line 138
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 140
    .local v0, "featuresMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x104020c

    const-string v4, "accessibility_display_inversion_enabled"

    const-string v5, "1"

    const-string v6, "0"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x104020b

    const-string v4, "accessibility_display_daltonizer_enabled"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x1040646

    const-string/jumbo v4, "one_handed_mode_activated"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    const v3, 0x1040807

    const-string/jumbo v4, "reduce_bright_colors_activated"

    invoke-direct {v2, v4, v5, v6, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    .line 162
    .end local v0    # "featuresMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/content/ComponentName;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;>;"
    :cond_0
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->sFrameworkShortcutFeaturesMap:Ljava/util/Map;

    return-object v0
.end method

.method private blacklist getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 3

    .line 367
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 368
    .local v0, "targetComponentName":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 369
    const/4 v1, 0x0

    return-object v1

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 372
    invoke-virtual {v1, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 373
    .local v1, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    return-object v2
.end method

.method private blacklist getShortcutFeatureDescription(Z)Ljava/lang/String;
    .locals 8
    .param p1, "includeSummary"    # Z

    .line 378
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutTargetComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 379
    .local v0, "targetComponentName":Landroid/content/ComponentName;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 380
    return-object v1

    .line 383
    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 384
    .local v2, "frameworkFeatureInfo":Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;
    if-eqz v2, :cond_1

    .line 385
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 387
    :cond_1
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 388
    invoke-virtual {v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 390
    .local v3, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v3, :cond_2

    .line 391
    return-object v1

    .line 393
    :cond_2
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 394
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, "label":Ljava/lang/String;
    invoke-virtual {v3, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 396
    .local v5, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    .line 399
    :cond_3
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    const-string v7, "%s\n%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 397
    :cond_4
    :goto_0
    return-object v4
.end method

.method private blacklist getShortcutTargetComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 470
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 471
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "shortcutTargets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 473
    const/4 v1, 0x0

    return-object v1

    .line 475
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningMessage(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 351
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v3, 0x10400ef

    new-array v2, v2, [Ljava/lang/Object;

    .line 354
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v1

    .line 352
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 357
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    .line 359
    .local v4, "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v6, 0x10400ea

    new-array v7, v2, [Ljava/lang/Object;

    .line 360
    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v7, v1

    .line 359
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .end local v4    # "target":Lcom/android/internal/accessibility/dialog/AccessibilityTarget;
    goto :goto_0

    .line 362
    :cond_1
    iget-object v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v4, 0x10400eb

    new-array v2, v2, [Ljava/lang/Object;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 362
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getShortcutWarningTitle(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/accessibility/dialog/AccessibilityTarget;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 341
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/accessibility/dialog/AccessibilityTarget;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x10400f0

    new-array v1, v1, [Ljava/lang/Object;

    .line 344
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;

    invoke-virtual {v4}, Lcom/android/internal/accessibility/dialog/AccessibilityTarget;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v3

    .line 342
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v1, 0x10400ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasFeatureLeanback()Z
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private blacklist hasShortcutTarget()Z
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    const-string v2, "accessibility_shortcut_target_service"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "shortcutTargets":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 458
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const v2, 0x104023a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private blacklist isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z
    .locals 2
    .param p1, "serviceInfo"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 403
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 404
    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 405
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 406
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 405
    return v1
.end method

.method static synthetic blacklist lambda$performTtsPrompt$2(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;Landroid/content/DialogInterface;)V
    .locals 0
    .param p0, "tts"    # Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;->dismiss()V

    return-void
.end method

.method private blacklist performTtsPrompt(Landroid/app/AlertDialog;)Z
    .locals 4
    .param p1, "alertDialog"    # Landroid/app/AlertDialog;

    .line 432
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "serviceName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v2

    .line 434
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    iget v3, v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    .line 439
    return v0

    .line 441
    :cond_1
    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController;Ljava/lang/String;)V

    .line 442
    .local v0, "tts":Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
    new-instance v3, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;)V

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 443
    const/4 v3, 0x1

    return v3

    .line 435
    .end local v0    # "tts":Lcom/android/internal/accessibility/AccessibilityShortcutController$TtsPrompt;
    :cond_2
    :goto_0
    return v0
.end method

.method private blacklist playNotificationTone()V
    .locals 4

    .line 416
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasFeatureLeanback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    const/16 v0, 0xb

    goto :goto_0

    .line 418
    :cond_0
    const/16 v0, 0xa

    :goto_0
    nop

    .line 421
    .local v0, "audioAttributesUsage":I
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 423
    .local v1, "tone":Landroid/media/Ringtone;
    if-eqz v1, :cond_1

    .line 424
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 425
    invoke-virtual {v2, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 426
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 424
    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 427
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 429
    :cond_1
    return-void
.end method

.method private blacklist showToast()V
    .locals 9

    .line 277
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getInfoForTargetService()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 278
    .local v0, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v0, :cond_0

    .line 279
    return-void

    .line 281
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getShortcutFeatureDescription(Z)Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "serviceName":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 283
    return-void

    .line 285
    :cond_1
    iget v3, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x100

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    .line 287
    .local v3, "requestA11yButton":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isServiceEnabled(Landroid/accessibilityservice/AccessibilityServiceInfo;)Z

    move-result v5

    .line 288
    .local v5, "isServiceEnabled":Z
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1d

    if-le v6, v7, :cond_3

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 292
    return-void

    .line 295
    :cond_3
    iget-object v6, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    .line 296
    const v7, 0x10400e6

    goto :goto_1

    .line 297
    :cond_4
    const v7, 0x10400e7

    .line 295
    :goto_1
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, "toastMessageFormatString":Ljava/lang/String;
    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "toastMessage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v8, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->makeToastFromText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 301
    .local v4, "warningToast":Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 302
    return-void
.end method


# virtual methods
.method public blacklist isAccessibilityShortcutAvailable(Z)Z
    .locals 1
    .param p1, "phoneLocked"    # Z

    .line 206
    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$createShortcutWarningDialog$0$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 321
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    const-string v2, ""

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 326
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 329
    return-void
.end method

.method synthetic blacklist lambda$createShortcutWarningDialog$1$com-android-internal-accessibility-AccessibilityShortcutController(ILandroid/content/DialogInterface;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "d"    # Landroid/content/DialogInterface;

    .line 332
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 335
    return-void
.end method

.method public blacklist onSettingsChanged()V
    .locals 6

    .line 210
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->hasShortcutTarget()Z

    move-result v0

    .line 211
    .local v0, "hasShortcutTarget":Z
    iget-object v1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 213
    .local v1, "cr":Landroid/content/ContentResolver;
    iget v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 216
    .local v2, "dialogAlreadyShown":I
    iget v3, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    const-string v5, "accessibility_shortcut_on_lock_screen"

    invoke-static {v1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v4, v5

    :cond_0
    iput-boolean v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mEnabledOnLockScreen:Z

    .line 219
    iput-boolean v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mIsShortcutEnabled:Z

    .line 220
    return-void
.end method

.method public blacklist performAccessibilityShortcut()V
    .locals 8

    .line 226
    const-string v0, "AccessibilityShortcutController"

    const-string v1, "Accessibility shortcut activated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 229
    .local v1, "userId":I
    const-string v2, "accessibility_shortcut_dialog_shown"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 233
    .local v3, "dialogAlreadyShown":I
    iget-object v4, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 234
    .local v4, "vibrator":Landroid/os/Vibrator;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 237
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1070073

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 237
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v5

    .line 239
    .local v5, "vibePattern":[J
    const/4 v6, -0x1

    sget-object v7, Lcom/android/internal/accessibility/AccessibilityShortcutController;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 242
    .end local v5    # "vibePattern":[J
    :cond_0
    if-nez v3, :cond_3

    .line 245
    invoke-direct {p0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->createShortcutWarningDialog(I)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 246
    if-nez v5, :cond_1

    .line 247
    return-void

    .line 249
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performTtsPrompt(Landroid/app/AlertDialog;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    .line 252
    :cond_2
    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 253
    .local v5, "w":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 254
    .local v6, "attr":Landroid/view/WindowManager$LayoutParams;
    const/16 v7, 0x7d9

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 255
    invoke-virtual {v5, v6}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 256
    iget-object v7, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 257
    const/4 v7, 0x1

    invoke-static {v0, v2, v7, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 260
    .end local v5    # "w":Landroid/view/Window;
    .end local v6    # "attr":Landroid/view/WindowManager$LayoutParams;
    goto :goto_0

    .line 261
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->playNotificationTone()V

    .line 262
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_4

    .line 263
    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 264
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mAlertDialog:Landroid/app/AlertDialog;

    .line 266
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->showToast()V

    .line 267
    iget-object v2, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mFrameworkObjectProvider:Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;

    iget-object v5, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/android/internal/accessibility/AccessibilityShortcutController$FrameworkObjectProvider;->getAccessibilityManagerInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    .line 268
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->performAccessibilityShortcut()V

    .line 270
    :goto_0
    return-void
.end method

.method public blacklist setCurrentUser(I)V
    .locals 1
    .param p1, "currentUserId"    # I

    .line 193
    iput p1, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserId:I

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->onSettingsChanged()V

    .line 195
    iget-object v0, p0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->mUserSetupCompleteObserver:Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController$UserSetupCompleteObserver;->onUserSwitched(I)V

    .line 196
    return-void
.end method
