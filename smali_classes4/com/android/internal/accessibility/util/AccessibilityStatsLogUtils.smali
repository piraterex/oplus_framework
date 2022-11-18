.class public final Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;
.super Ljava/lang/Object;
.source "AccessibilityStatsLogUtils.java"


# static fields
.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

.field public static blacklist ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

.field private static final blacklist UNKNOWN_STATUS:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 57
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

    .line 60
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

    .line 63
    const/4 v0, 0x3

    sput v0, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SERVICE_DISABLED:I

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist convertToLoggingMagnificationMode(I)I
    .locals 1
    .param p0, "mode"    # I

    .line 222
    packed-switch p0, :pswitch_data_0

    .line 231
    const/4 v0, 0x0

    return v0

    .line 228
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 226
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 224
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist convertToLoggingServiceStatus(Z)I
    .locals 1
    .param p0, "enabled"    # Z

    .line 217
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    const/4 v0, 0x2

    .line 217
    :goto_0
    return v0
.end method

.method private static blacklist convertToLoggingShortcutType(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortcutType"    # I

    .line 201
    packed-switch p1, :pswitch_data_0

    .line 213
    const/4 v0, 0x0

    return v0

    .line 211
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 203
    :pswitch_1
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    const/4 v0, 0x5

    return v0

    .line 205
    :cond_0
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->isAccessibilityGestureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x6

    return v0

    .line 208
    :cond_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist isAccessibilityFloatingMenuEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static blacklist isAccessibilityGestureEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static blacklist logAccessibilityButtonLongPressStatus(Landroid/content/ComponentName;)V
    .locals 4
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 140
    nop

    .line 141
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 140
    const/16 v1, 0x10a

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 144
    return-void
.end method

.method public static blacklist logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shortcutType"    # I

    .line 82
    nop

    .line 83
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    .line 82
    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    .line 84
    return-void
.end method

.method public static blacklist logAccessibilityShortcutActivated(Landroid/content/Context;Landroid/content/ComponentName;IZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "shortcutType"    # I
    .param p3, "serviceEnabled"    # Z

    .line 99
    nop

    .line 100
    invoke-static {p0, p2}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingShortcutType(Landroid/content/Context;I)I

    move-result v0

    .line 101
    invoke-static {p3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    .line 99
    invoke-static {p1, v0, v1}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V

    .line 102
    return-void
.end method

.method private static blacklist logAccessibilityShortcutActivatedInternal(Landroid/content/ComponentName;II)V
    .locals 2
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "loggingShortcutType"    # I
    .param p2, "loggingServiceStatus"    # I

    .line 118
    nop

    .line 119
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 118
    const/16 v1, 0x10a

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 120
    return-void
.end method

.method public static blacklist logMagnificationModeWithImeOn(I)V
    .locals 2
    .param p0, "mode"    # I

    .line 166
    nop

    .line 167
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    .line 166
    const/16 v1, 0x15a

    invoke-static {v1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 168
    return-void
.end method

.method public static blacklist logMagnificationTripleTap(Z)V
    .locals 4
    .param p0, "enabled"    # Z

    .line 127
    sget-object v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;->MAGNIFICATION_COMPONENT_NAME:Landroid/content/ComponentName;

    .line 128
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingServiceStatus(Z)I

    move-result v1

    .line 127
    const/16 v2, 0x10a

    const/4 v3, 0x3

    invoke-static {v2, v0, v3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;II)V

    .line 131
    return-void
.end method

.method public static blacklist logMagnificationUsageState(IJ)V
    .locals 2
    .param p0, "mode"    # I
    .param p1, "duration"    # J

    .line 154
    nop

    .line 155
    invoke-static {p0}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->convertToLoggingMagnificationMode(I)I

    move-result v0

    .line 154
    const/16 v1, 0x159

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 157
    return-void
.end method

.method public static blacklist logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "durationMillis"    # J

    .line 183
    const/16 v0, 0x180

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IJ)V

    .line 185
    return-void
.end method
